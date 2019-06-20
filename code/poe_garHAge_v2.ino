#include <SPI.h>
#include <Ethernet.h>
#include <PubSubClient.h>

// HX711 pin connection
#define DOUT 5
#define CLK  6

// connection settings
#define TIMEOUT   5000 // connection failure timeout in ms
#define SER_BAUD  9600 // serial baud rate
#define MQTT_PORT 1883 // MQTT broker port
#define MQTT_CLIENT_ID "tyler" // device client ID

// MQTT topics
#define TOPIC_BASE "/home/bedroom/bed" // base topic
#define TOPIC_LOAD TOPIC_BASE "/load"  // topic to publish samples on
#define TOPIC_TARE TOPIC_BASE "/tare"  // topic to receive tare commands on

// client objects
EthernetClient ethClient;
PubSubClient mqttClient(ethClient);

// reconnects to the MQTT broker
void reconnect()
{
    // loop while disconnected
    while (!mqttClient.connected())
    {
        // attempt to connect
        Serial.println("Attempting to establish connection to MQTT broker...");
        if (mqttClient.connect(MQTT_CLIENT_ID)) 
        {
            // print connection messaged for debug
            Serial.println("Connection established");
            mqttClient.publish(TOPIC_BASE, "connected");

            // subscribe to control topic
            mqttClient.subscribe(TOPIC_TARE);
        }
        else
        {
            Serial.print("Failed to connect: ");

            // print client state
            switch (mqttClient.state())
            {
                case MQTT_CONNECTION_TIMEOUT:
                    Serial.println("MQTT_CONNECTION_TIMEOUT");
                    break;
                case MQTT_CONNECTION_LOST:
                    Serial.println("MQTT_CONNECTION_LOST");
                    break;
                case MQTT_CONNECT_FAILED:
                    Serial.println("MQTT_CONNECT_FAILED");
                    break;
                case MQTT_DISCONNECTED:
                    Serial.println("MQTT_DISCONNECTED");
                    break;           
                case MQTT_CONNECTED:
                    Serial.println("MQTT_CONNECTED");
                    break;
                case MQTT_CONNECT_BAD_PROTOCOL:
                    Serial.println("MQTT_CONNECT_BAD_PROTOCOL");
                    break;
                case MQTT_CONNECT_BAD_CLIENT_ID:
                    Serial.println("MQTT_CONNECT_BAD_CLIENT_ID");
                    break;
                case MQTT_CONNECT_UNAVAILABLE:
                    Serial.println("MQTT_CONNECT_UNAVAILABLE");
                    break;
                case MQTT_CONNECT_BAD_CREDENTIALS:
                    Serial.println("MQTT_CONNECT_BAD_CREDENTIALS");
                    break;
                case MQTT_CONNECT_UNAUTHORIZED:
                    Serial.println("MQTT_CONNECT_UNAUTHORIZED");
                    break;
                default:
                    Serial.println("MQTT_STATE_UNKNOWN");
                    break;
            }

            // delay before next attempt
            delay(TIMEOUT);
        } 
    }
}

void callback(char* topic, byte* payload, unsigned int length) {
  Serial.print("Message arrived [");
  Serial.print(topic);
  Serial.print("] ");
  
  for (int i = 0; i < length; i++) {
    Serial.print((char)payload[i]);
  }
  
  Serial.println();

  String topicToProcess = topic;
  payload[length] = '\0';
  String payloadToProcess = (char*)payload;
  triggerDoorAction(topicToProcess, payloadToProcess);
}

void setup()
{
    // Setup the output and input pins used in the sketch
  // Set the lastStatusValue variables to the state of the status pins at setup time

  // Setup Door 1 pins
  pinMode(door1_openPin, OUTPUT);
  pinMode(door1_closePin, OUTPUT);
  // Set output pins LOW with an active-high relay
  if (activeHighRelay) {
    digitalWrite(door1_openPin, LOW);
    digitalWrite(door1_closePin, LOW);
  }
  // Set output pins HIGH with an active-low relay
  else {
    digitalWrite(door1_openPin, HIGH);
    digitalWrite(door1_closePin, HIGH);
  }
  // Set input pin to use internal pullup resistor
  pinMode(door1_statusPin, INPUT_PULLUP);
  // Update variable with current door state
  door1_lastStatusValue = digitalRead(door1_statusPin);

  // Setup Door 2 pins
  if (door2_enabled) {
    pinMode(door2_openPin, OUTPUT);
    pinMode(door2_closePin, OUTPUT);
    // Set output pins LOW with an active-high relay
    if (activeHighRelay) {
      digitalWrite(door2_openPin, LOW);
      digitalWrite(door2_closePin, LOW);
    }
    // Set output pins HIGH with an active-low relay
    else {
      digitalWrite(door2_openPin, HIGH);
      digitalWrite(door2_closePin, HIGH);
    }
    // Set input pin to use internal pullup resistor
    pinMode(door2_statusPin, INPUT_PULLUP);
    // Update variable with current door state
    door2_lastStatusValue = digitalRead(door2_statusPin);
  }
  
  // Setup Door 3 pins
  if (door3_enabled) {
    pinMode(door3_openPin, OUTPUT);
    pinMode(door3_closePin, OUTPUT);
    // Set output pins LOW with an active-high relay
    if (activeHighRelay) {
      digitalWrite(door3_openPin, LOW);
      digitalWrite(door3_closePin, LOW);
    }
    // Set output pins HIGH with an active-low relay
    else {
      digitalWrite(door3_openPin, HIGH);
      digitalWrite(door3_closePin, HIGH);
    }
    // Set input pin to use internal pullup resistor
    pinMode(door3_statusPin, INPUT_PULLUP);
    // Update variable with current door state
    door3_lastStatusValue = digitalRead(door3_statusPin);
  }
  
    // network settings
    const uint8_t mac[] = {0x00, 0xAA, 0xBB, 0xCC, 0xDE, 0x02}; // device MAC
    IPAddress mqttBroker(10, 99, 1, 23); // MQTT broker IP

    // open serial connection
    Serial.begin(SER_BAUD);

    // print status
    Serial.println("Serial connected!");
    Serial.println("Configuring Ethernet with DHCP...");

    // connect with DHCP
    while (!Ethernet.begin(mac))
    {
        delay(TIMEOUT);
    }

    // print IP address
    Serial.println("Ethernet connected!");
    Serial.print("My IP: ");
    Serial.println(Ethernet.localIP());

    // configure MQTT broker
    mqttClient.setServer(mqttBroker, MQTT_PORT);

    // set callback function
    mqttClient.setCallback(callback);

}

void publish_door1_status() {
  if (digitalRead(door1_statusPin) == LOW) {
    if (door1_statusSwitchLogic == "NO") {
      Serial.print(door1_alias);
      Serial.print(" closed! Publishing to ");
      Serial.print(mqtt_door1_status_topic);
      Serial.println("...");
      client.publish(mqtt_door1_status_topic, "closed", true);
    }
    else if (door1_statusSwitchLogic == "NC") {
      Serial.print(door1_alias);
      Serial.print(" open! Publishing to ");
      Serial.print(mqtt_door1_status_topic);
      Serial.println("...");
      client.publish(mqtt_door1_status_topic, "open", true);      
    }
    else {
      Serial.println("Error! Specify only either NO or NC for DOOR1_STATUS_SWITCH_LOGIC in config.h! Not publishing...");
    }
  }
  else {
    if (door1_statusSwitchLogic == "NO") {
      Serial.print(door1_alias);
      Serial.print(" open! Publishing to ");
      Serial.print(mqtt_door1_status_topic);
      Serial.println("...");
      client.publish(mqtt_door1_status_topic, "open", true);
    }
    else if (door1_statusSwitchLogic == "NC") {
      Serial.print(door1_alias);
      Serial.print(" closed! Publishing to ");
      Serial.print(mqtt_door1_status_topic);
      Serial.println("...");
      client.publish(mqtt_door1_status_topic, "closed", true);      
    }
    else {
      Serial.println("Error! Specify only either NO or NC for DOOR1_STATUS_SWITCH_LOGIC in config.h! Not publishing...");
    }
  }
}

void publish_door2_status() {
  if (digitalRead(door2_statusPin) == LOW) {
    if (door2_statusSwitchLogic == "NO") {
      Serial.print(door2_alias);
      Serial.print(" closed! Publishing to ");
      Serial.print(mqtt_door2_status_topic);
      Serial.println("...");
      client.publish(mqtt_door2_status_topic, "closed", true);
    }
    else if (door2_statusSwitchLogic == "NC") {
      Serial.print(door2_alias);
      Serial.print(" open! Publishing to ");
      Serial.print(mqtt_door2_status_topic);
      Serial.println("...");
      client.publish(mqtt_door2_status_topic, "open", true);      
    }
    else {
      Serial.println("Error! Specify only either NO or NC for DOOR2_STATUS_SWITCH_LOGIC in config.h! Not publishing...");
    }
  }
  else {
    if (door2_statusSwitchLogic == "NO") {
      Serial.print(door2_alias);
      Serial.print(" open! Publishing to ");
      Serial.print(mqtt_door2_status_topic);
      Serial.println("...");
      client.publish(mqtt_door2_status_topic, "open", true);
    }
    else if (door2_statusSwitchLogic == "NC") {
      Serial.print(door2_alias);
      Serial.print(" closed! Publishing to ");
      Serial.print(mqtt_door2_status_topic);
      Serial.println("...");
      client.publish(mqtt_door2_status_topic, "closed", true);      
    }
    else {
      Serial.println("Error! Specify only either NO or NC for DOOR2_STATUS_SWITCH_LOGIC in config.h! Not publishing...");
    }
  }
}

void publish_door3_status() {
  if (digitalRead(door3_statusPin) == LOW) {
    if (door3_statusSwitchLogic == "NO") {
      Serial.print(door3_alias);
      Serial.print(" closed! Publishing to ");
      Serial.print(mqtt_door3_status_topic);
      Serial.println("...");
      client.publish(mqtt_door3_status_topic, "closed", true);
    }
    else if (door3_statusSwitchLogic == "NC") {
      Serial.print(door3_alias);
      Serial.print(" open! Publishing to ");
      Serial.print(mqtt_door3_status_topic);
      Serial.println("...");
      client.publish(mqtt_door3_status_topic, "open", true);      
    }
    else {
      Serial.println("Error! Specify only either NO or NC for DOOR2_STATUS_SWITCH_LOGIC in config.h! Not publishing...");
    }
  }
  else {
    if (door3_statusSwitchLogic == "NO") {
      Serial.print(door3_alias);
      Serial.print(" open! Publishing to ");
      Serial.print(mqtt_door3_status_topic);
      Serial.println("...");
      client.publish(mqtt_door3_status_topic, "open", true);
    }
    else if (door3_statusSwitchLogic == "NC") {
      Serial.print(door3_alias);
      Serial.print(" closed! Publishing to ");
      Serial.print(mqtt_door3_status_topic);
      Serial.println("...");
      client.publish(mqtt_door3_status_topic, "closed", true);      
    }
    else {
      Serial.println("Error! Specify only either NO or NC for DOOR2_STATUS_SWITCH_LOGIC in config.h! Not publishing...");
    }
  }
}

// Functions that run in loop() to check each loop if door status (open/closed) has changed and call publish_doorX_status() to publish any change if so

void check_door1_status() {
  int currentStatusValue = digitalRead(door1_statusPin);
  if (currentStatusValue != door1_lastStatusValue) {
    unsigned int currentTime = millis();
    if (currentTime - door1_lastSwitchTime >= debounceTime) {
      publish_door1_status();
      door1_lastStatusValue = currentStatusValue;
      door1_lastSwitchTime = currentTime;
    }
  }
}

void check_door2_status() {
  int currentStatusValue = digitalRead(door2_statusPin);
  if (currentStatusValue != door2_lastStatusValue) {
    unsigned int currentTime = millis();
    if (currentTime - door2_lastSwitchTime >= debounceTime) {
      publish_door2_status();
      door2_lastStatusValue = currentStatusValue;
      door2_lastSwitchTime = currentTime;
    }
  }
}

void check_door3_status() {
  int currentStatusValue = digitalRead(door3_statusPin);
  if (currentStatusValue != door3_lastStatusValue) {
    unsigned int currentTime = millis();
    if (currentTime - door3_lastSwitchTime >= debounceTime) {
      publish_door3_status();
      door3_lastStatusValue = currentStatusValue;
      door3_lastSwitchTime = currentTime;
    }
  }
}

// Function that publishes birthMessage

void publish_birth_message() {
  // Publish the birthMessage
  Serial.print("Publishing birth message \"");
  Serial.print(birthMessage);
  Serial.print("\" to ");
  Serial.print(availabilityTopic);
  Serial.println("...");
  client.publish(availabilityTopic, birthMessage, true);
}

// Function that toggles the relevant relay-connected output pin

void toggleRelay(int pin) {
  if (activeHighRelay) {
    digitalWrite(pin, HIGH);
    delay(relayActiveTime);
    digitalWrite(pin, LOW);
  }
  else {
    digitalWrite(pin, LOW);
    delay(relayActiveTime);
    digitalWrite(pin, HIGH);
  }
}

// Function called by callback() when a message is received 
// Passes the message topic as the "requestedDoor" parameter and the message payload as the "requestedAction" parameter

void triggerDoorAction(String requestedDoor, String requestedAction) {
  if (requestedDoor == mqtt_door1_action_topic && requestedAction == "OPEN") {
    Serial.print("Triggering ");
    Serial.print(door1_alias);
    Serial.println(" OPEN relay!");
    toggleRelay(door1_openPin);
  }
  else if (requestedDoor == mqtt_door1_action_topic && requestedAction == "CLOSE") {
    Serial.print("Triggering ");
    Serial.print(door1_alias);
    Serial.println(" CLOSE relay!");
    toggleRelay(door1_closePin);
  }
  else if (requestedDoor == mqtt_door1_action_topic && requestedAction == "STATE") {
    Serial.print("Publishing on-demand status update for ");
    Serial.print(door1_alias);
    Serial.println("!");
    publish_birth_message();
    publish_door1_status();
  }
  else if (requestedDoor == mqtt_door2_action_topic && requestedAction == "OPEN") {
    Serial.print("Triggering ");
    Serial.print(door2_alias);
    Serial.println(" OPEN relay!");
    toggleRelay(door2_openPin);
  }
  else if (requestedDoor == mqtt_door2_action_topic && requestedAction == "CLOSE") {
    Serial.print("Triggering ");
    Serial.print(door2_alias);
    Serial.println(" CLOSE relay!");
    toggleRelay(door2_closePin);
  }
  else if (requestedDoor == mqtt_door2_action_topic && requestedAction == "STATE") {
    Serial.print("Publishing on-demand status update for ");
    Serial.print(door2_alias);
    Serial.println("!");
    publish_birth_message();
    publish_door2_status();
  }  
    else if (requestedDoor == mqtt_door3_action_topic && requestedAction == "OPEN") {
    Serial.print("Triggering ");
    Serial.print(door3_alias);
    Serial.println(" OPEN relay!");
    toggleRelay(door3_openPin);
  }
  else if (requestedDoor == mqtt_door3_action_topic && requestedAction == "CLOSE") {
    Serial.print("Triggering ");
    Serial.print(door3_alias);
    Serial.println(" CLOSE relay!");
    toggleRelay(door3_closePin);
  }
  else if (requestedDoor == mqtt_door3_action_topic && requestedAction == "STATE") {
    Serial.print("Publishing on-demand status update for ");
    Serial.print(door3_alias);
    Serial.println("!");
    publish_birth_message();
    publish_door3_status();
  }  
  else { Serial.println("Unrecognized action payload... taking no action!");
  }
}

void loop()
{
    // Connect/reconnect to the MQTT broker and listen for messages
  if (!client.connected()) {
    reconnect();
  }
  client.loop();
  
  // Check door open/closed status each loop and publish changes
  check_door1_status();
  if (door2_enabled) { check_door2_status(); 
  }
  if (door3_enabled) { check_door3_status(); 
  }

    // maintain connection
    mqttClient.loop();
}
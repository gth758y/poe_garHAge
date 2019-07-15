#include <SPI.h>
#include <Ethernet.h>
#include <PubSubClient.h>
#include "config.h"

// connection settings
#define TIMEOUT   5000 // connection failure timeout in ms
#define SER_BAUD  115200 // serial baud rate
const char* mqtt_broker = MQTT_BROKER;
const char* mqtt_clientId = MQTT_CLIENTID;
const char* mqtt_username = MQTT_USERNAME;
const char* mqtt_password = MQTT_PASSWORD;

const boolean activeHighRelay = false;
const int bootup_statusPin = 16;

const char* door1_alias = DOOR1_ALIAS;
const char* mqtt_door1_action_topic = "garagev2/door/1/action";
const char* mqtt_door1_status_topic = "garagev2/door/1/status";
const int door1_openPin = 5;
const int door1_closePin = 5;
const int door1_statusPin = 6;
const char* door1_statusSwitchLogic = "NO";

const boolean door2_enabled = DOOR2_ENABLED;
const char* door2_alias = DOOR2_ALIAS;
const char* mqtt_door2_action_topic = "garagev2/door/2/action";
const char* mqtt_door2_status_topic = "garagev2/door/2/status";
const int door2_openPin = 4;
const int door2_closePin = 4;
const int door2_statusPin = 7;
const char* door2_statusSwitchLogic = "NO";

const boolean door3_enabled = DOOR3_ENABLED;
const char* door3_alias = DOOR3_ALIAS;
const char* mqtt_door3_action_topic = "garagev2/door/3/action";
const char* mqtt_door3_status_topic = "garagev2/door/3/status";
const int door3_openPin = 3;
const int door3_closePin = 3;
const int door3_statusPin = 8;
const char* door3_statusSwitchLogic = "NO";

const int relayActiveTime = 500;
int door1_lastStatusValue = 2;
int door2_lastStatusValue = 2;
int door3_lastStatusValue = 2;
unsigned long door1_lastSwitchTime = 0;
unsigned long door2_lastSwitchTime = 0;
unsigned long door3_lastSwitchTime = 0;
int debounceTime = 2000;

String availabilityBase = MQTT_CLIENTID;
String availabilitySuffix = "/availability";
String availabilityTopicStr = availabilityBase + availabilitySuffix;
const char* availabilityTopic = availabilityTopicStr.c_str();
const char* birthMessage = "online";
const char* lwtMessage = "offline";

// client objects
EthernetClient ethClient;
PubSubClient mqttClient(ethClient);

void callback(char* topic, byte* payload, unsigned int length) {          // Callback when MQTT message is received; calls triggerDoorAction(), passing topic and payload as parameters
  Serial.print(F("Message arrived ["));
  Serial.print(topic);
  Serial.print(F("] "));
  
  for (int i = 0; i < length; i++) {
    Serial.print((char)payload[i]);
  }
  
  Serial.println();

  String topicToProcess = topic;
  payload[length] = '\0';
  String payloadToProcess = (char*)payload;
  triggerDoorAction(topicToProcess, payloadToProcess);
}

void publish_door1_status() {                                 // Publishes an update to the door status when called by check_door1_status()
  if (digitalRead(door1_statusPin) == LOW) {
    if (door1_statusSwitchLogic == "NO") {
    Serial.print(door1_alias);
    Serial.print(F(" closed! Publishing to "));
    Serial.print(mqtt_door1_status_topic);
    Serial.println(F("..."));
    mqttClient.publish(mqtt_door1_status_topic, "closed", true);
    }
    else if (door1_statusSwitchLogic == "NC") {
      Serial.print(door1_alias);
      Serial.print(F(" open! Publishing to "));
      Serial.print(mqtt_door1_status_topic);
      Serial.println(F("..."));
      mqttClient.publish(mqtt_door1_status_topic, "open", true);
      }
    else {
      Serial.println(F("Error! Specify only either NO or NC for DOOR1_STATUS_SWITCH_LOGIC in config.h! Not publishing..."));
    }
  }
  else {
    if (door1_statusSwitchLogic == "NO") {
    Serial.print(door1_alias);
    Serial.print(F(" open! Publishing to "));
    Serial.print(mqtt_door1_status_topic);
    Serial.println(F("..."));
    mqttClient.publish(mqtt_door1_status_topic, "open", true);
    }
    else if (door1_statusSwitchLogic == "NC") {
      Serial.print(door1_alias);
      Serial.print(F(" closed! Publishing to "));
      Serial.print(mqtt_door1_status_topic);
      Serial.println(F("..."));
      mqttClient.publish(mqtt_door1_status_topic, "closed", true);      
    }
    else {
      Serial.println(F("Error! Specify only either NO or NC for DOOR1_STATUS_SWITCH_LOGIC in config.h! Not publishing..."));
    }
  }
}

void publish_door2_status() {                                 // Publishes an update to the door status when called by check_door2_status()
  if (digitalRead(door2_statusPin) == LOW) {
    if (door2_statusSwitchLogic == "NO") {
    Serial.print(door2_alias);
    Serial.print(F(" closed! Publishing to "));
    Serial.print(mqtt_door2_status_topic);
    Serial.println(F("..."));
    mqttClient.publish(mqtt_door2_status_topic, "closed", true);
    }
    else if (door2_statusSwitchLogic == "NC") {
      Serial.print(door2_alias);
      Serial.print(F(" open! Publishing to "));
      Serial.print(mqtt_door2_status_topic);
      Serial.println(F("..."));
      mqttClient.publish(mqtt_door2_status_topic, "open", true);
      }
    else {
      Serial.println(F("Error! Specify only either NO or NC for DOOR2_STATUS_SWITCH_LOGIC in config.h! Not publishing..."));
    }
  }
  else {
    if (door2_statusSwitchLogic == "NO") {
    Serial.print(door2_alias);
    Serial.print(F(" open! Publishing to "));
    Serial.print(mqtt_door2_status_topic);
    Serial.println(F("..."));
    mqttClient.publish(mqtt_door2_status_topic, "open", true);
    }
    else if (door2_statusSwitchLogic == "NC") {
      Serial.print(door2_alias);
      Serial.print(F(" closed! Publishing to "));
      Serial.print(mqtt_door2_status_topic);
      Serial.println(F("..."));
      mqttClient.publish(mqtt_door2_status_topic, "closed", true);      
    }
    else {
      Serial.println(F("Error! Specify only either NO or NC for DOOR2_STATUS_SWITCH_LOGIC in config.h! Not publishing..."));
    }
  }
}

void publish_door3_status() {                                 // Publishes an update to the door status when called by check_door3_status()
  if (digitalRead(door3_statusPin) == LOW) {
    if (door3_statusSwitchLogic == "NO") {
    Serial.print(door3_alias);
    Serial.print(F(" closed! Publishing to "));
    Serial.print(mqtt_door3_status_topic);
    Serial.println(F("..."));
    mqttClient.publish(mqtt_door3_status_topic, "closed", true);
    }
    else if (door3_statusSwitchLogic == "NC") {
      Serial.print(door3_alias);
      Serial.print(F(" open! Publishing to "));
      Serial.print(mqtt_door3_status_topic);
      Serial.println(F("..."));
      mqttClient.publish(mqtt_door3_status_topic, "open", true);
      }
    else {
      Serial.println(F("Error! Specify only either NO or NC for door3_STATUS_SWITCH_LOGIC in config.h! Not publishing..."));
    }
  }
  else {
    if (door3_statusSwitchLogic == "NO") {
    Serial.print(door3_alias);
    Serial.print(F(" open! Publishing to "));
    Serial.print(mqtt_door3_status_topic);
    Serial.println(F("..."));
    mqttClient.publish(mqtt_door3_status_topic, "open", true);
    }
    else if (door3_statusSwitchLogic == "NC") {
      Serial.print(door3_alias);
      Serial.print(F(" closed! Publishing to "));
      Serial.print(mqtt_door3_status_topic);
      Serial.println(F("..."));
      mqttClient.publish(mqtt_door3_status_topic, "closed", true);      
    }
    else {
      Serial.println(F("Error! Specify only either NO or NC for DOOR3_STATUS_SWITCH_LOGIC in config.h! Not publishing..."));
    }
  }
}

void check_door1_status() {                                 // Runs inside loop() and checks if door 1 is open/closed, determines if it has changed and calls publish_door1_status() if so
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

void check_door2_status() {                                 // Runs inside loop() and checks if door 2 is open/closed, determines if it has changed and calls publish_door2_status() if so
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

void check_door3_status() {                                 // Runs inside loop() and checks if door 3 is open/closed, determines if it has changed and calls publish_door3_status() if so
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

void publish_birth_message() {                                // Function that publishes birthMessage
  // Publish the birthMessage
  Serial.print(F("Publishing birth message \""));
  Serial.print(birthMessage);
  Serial.print(F("\" to "));
  Serial.print(availabilityTopic);
  Serial.println(F("..."));
  mqttClient.publish(availabilityTopic, birthMessage, true);
}

void toggleRelay(int pin) {                                   // Toggles the relevant relay-connected output pin
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

void triggerDoorAction(String requestedDoor, String requestedAction) {  // Called by callback() when a message is received

// Passes the message topic as the "requestedDoor" parameter and the message payload as the "requestedAction" parameter

  if (requestedDoor == mqtt_door1_action_topic && requestedAction == "OPEN") {
    Serial.print(F("Triggering "));
    Serial.print(door1_alias);
    Serial.println(F(" OPEN relay!"));
    toggleRelay(door1_openPin);
  }
  else if (requestedDoor == mqtt_door1_action_topic && requestedAction == "CLOSE") {
    Serial.print(F("Triggering "));
    Serial.print(door1_alias);
    Serial.println(F(" CLOSE relay!"));
    toggleRelay(door1_closePin);
  }
  else if (requestedDoor == mqtt_door1_action_topic && requestedAction == "STATE") {
    Serial.print(F("Publishing on-demand status update for "));
    Serial.print(door1_alias);
    Serial.println(F("!"));
    publish_birth_message();
    publish_door1_status();
  }
  else if (requestedDoor == mqtt_door2_action_topic && requestedAction == "OPEN") {
    Serial.print(F("Triggering "));
    Serial.print(door2_alias);
    Serial.println(F(" OPEN relay!"));
    toggleRelay(door2_openPin);
  }
  else if (requestedDoor == mqtt_door2_action_topic && requestedAction == "CLOSE") {
    Serial.print(F("Triggering "));
    Serial.print(door2_alias);
    Serial.println(F(" CLOSE relay!"));
    toggleRelay(door2_closePin);
  }
  else if (requestedDoor == mqtt_door2_action_topic && requestedAction == "STATE") {
    Serial.print(F("Publishing on-demand status update for "));
    Serial.print(door2_alias);
    Serial.println(F("!"));
    publish_birth_message();
    publish_door2_status();
  }  
    else if (requestedDoor == mqtt_door3_action_topic && requestedAction == "OPEN") {
    Serial.print(F("Triggering "));
    Serial.print(door3_alias);
    Serial.println(F(" OPEN relay!"));
    toggleRelay(door3_openPin);
  }
  else if (requestedDoor == mqtt_door3_action_topic && requestedAction == "CLOSE") {
    Serial.print(F("Triggering "));
    Serial.print(door3_alias);
    Serial.println(F(" CLOSE relay!"));
    toggleRelay(door3_closePin);
  }
  else if (requestedDoor == mqtt_door3_action_topic && requestedAction == "STATE") {
    Serial.print(F("Publishing on-demand status update for "));
    Serial.print(door3_alias);
    Serial.println(F("!"));
    publish_birth_message();
    publish_door3_status();
  }  
  else { Serial.println(F("Unrecognized action payload... taking no action!"));
  }
}

void reconnect() {
  
  // loop while disconnected
  while (!mqttClient.connected())
  {
    // attempt to connect
    Serial.println(F("Attempting to establish connection to MQTT broker..."));
        if (mqttClient.connect(mqtt_clientId, mqtt_username, mqtt_password, availabilityTopic, 0, true, lwtMessage)) 
        {
      // print connection message for debug
      Serial.println(F("Connection established"));
      
      // Publish the birth message on connect/reconnect
      publish_birth_message();

      // Subscribe to the action topics to listen for action messages
      Serial.print(F("Subscribing to "));
      Serial.print(mqtt_door1_action_topic);
      Serial.println(F("..."));
      mqttClient.subscribe(mqtt_door1_action_topic);
      
      if (door2_enabled) {
        Serial.print(F("Subscribing to "));
        Serial.print(mqtt_door2_action_topic);
        Serial.println(F("..."));
        mqttClient.subscribe(mqtt_door2_action_topic);
      }
    
      if (door3_enabled) {
        Serial.print(F("Subscribing to "));
        Serial.print(mqtt_door3_action_topic);
        Serial.println(F("..."));
        mqttClient.subscribe(mqtt_door3_action_topic);
      }

      // Publish the current door status on connect/reconnect to ensure status is synced with whatever happened while disconnected
      publish_door1_status();
      if (door2_enabled) { publish_door2_status();
      }
      
      if (door3_enabled) { publish_door3_status();
      }
    }
    else
    {
      Serial.print(F("Failed to connect: "));

      // print client state
      switch (mqttClient.state())
      {
        case MQTT_CONNECTION_TIMEOUT:
          Serial.println(F("MQTT_CONNECTION_TIMEOUT"));
          break;
        case MQTT_CONNECTION_LOST:
          Serial.println(F("MQTT_CONNECTION_LOST"));
          break;
        case MQTT_CONNECT_FAILED:
          Serial.println(F("MQTT_CONNECT_FAILED"));
          break;
        case MQTT_DISCONNECTED:
          Serial.println(F("MQTT_DISCONNECTED"));
          break;           
        case MQTT_CONNECTED:
          Serial.println(F("MQTT_CONNECTED"));
          break;
        case MQTT_CONNECT_BAD_PROTOCOL:
          Serial.println(F("MQTT_CONNECT_BAD_PROTOCOL"));
          break;
        case MQTT_CONNECT_BAD_CLIENT_ID:
          Serial.println(F("MQTT_CONNECT_BAD_CLIENT_ID"));
          break;
        case MQTT_CONNECT_UNAVAILABLE:
          Serial.println(F("MQTT_CONNECT_UNAVAILABLE"));
          break;
        case MQTT_CONNECT_BAD_CREDENTIALS:
          Serial.println(F("MQTT_CONNECT_BAD_CREDENTIALS"));
          break;
        case MQTT_CONNECT_UNAUTHORIZED:
          Serial.println(F("MQTT_CONNECT_UNAUTHORIZED"));
          break;
        default:
          Serial.println(F("MQTT_STATE_UNKNOWN"));
          break;
      }

            // delay before next attempt
            delay(TIMEOUT);
        } 
    }
}

void setup() {
  
  
  // Turn on the bootup light
  pinMode(bootup_statusPin, OUTPUT);
  digitalWrite(bootup_statusPin, HIGH);
  
  // Setup the output and input pins used in the sketch
  // Set the lastStatusValue variables to the state of the status pins at setup time
  
  
  // Setup Door 1 Pins --------------------------------------------------------------------------------------------
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
  
  
  // Setup Door 2 pins --------------------------------------------------------------------------------------------
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
  
  // Setup Door 3 pins --------------------------------------------------------------------------------------------
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
  byte mac[] = { 0xC0, 0x01, 0xC0, 0xFF, 0xEE, 0x69 }; // device MAC
  IPAddress mqttBroker(10, 99, 1, 23); // MQTT broker IP
  byte ip[] = { 10, 99, 1, 201 };
  byte dns[] = { 10, 99, 0, 1};
  byte gateway[] = { 10, 99, 0, 1};
  byte subnet[] = { 255, 255, 255, 0};
  
  //Ethernet.init(10);
  
  // Setup serial output, connect to wifi, connect to MQTT broker, set MQTT message callback
  Serial.begin(SER_BAUD);

  Serial.println(F("Starting GarHAge..."));

  if (activeHighRelay) {
  Serial.println(F("Relay mode: Active-High"));
  }
  else {
  Serial.println(F("Relay mode: Active-Low"));
  }
  
  // print status
  Serial.println(F("Serial connected!"));
  Serial.println(F("Configuring Ethernet with DHCP..."));

  // connect with DHCP

  
  while (!Ethernet.begin(mac))
  {
    delay(TIMEOUT);
    Serial.println(F("Timeout, retrying."));
  }

  // print IP address
  Serial.println(F("Ethernet connected!"));
  Serial.print(F("My IP: "));
  Serial.println(Ethernet.localIP());

  // configure MQTT broker
  mqttClient.setServer(mqttBroker, MQTT_PORT);

  // set callback function
  mqttClient.setCallback(callback);

  // Turn off the bootup status light
  digitalWrite(bootup_statusPin, LOW);

}

void loop() {
  // Reconnect to the MQTT broker as needed and listen for messages
  if (!mqttClient.connected()){
      reconnect();
    }
  mqttClient.loop();
  
  
  //Check door open/closed status each loop and publish any changes
  check_door1_status();
  if (door2_enabled) {check_door2_status();
  }
  if (door3_enabled) {check_door3_status();
  }
  Ethernet.maintain();
}

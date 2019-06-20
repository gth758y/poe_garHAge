/*   
 * PoE GarHAge
 * a Home-Automation-friendly PoE MQTT Garage Door Controller
 * Licensed under the MIT License, Copyright (c) 2019 gth758y
 * This is a PoE fork of marthoc's ESP8266-based version
 * 
 * User-configurable Parameters 
*/

// MQTT Parameters

#define MQTT_BROKER "10.99.1.23"
#define MQTT_CLIENTID "GarHAge_PoE"
#define MQTT_USERNAME "tyler"
#define MQTT_PASSWORD "gotohell"

// Relay Parameters

#define ACTIVE_HIGH_RELAY false

// Door 1 Parameters

#define DOOR1_ALIAS "Tesla M3 Door"
#define MQTT_DOOR1_ACTION_TOPIC "garage/door/1/action"
#define MQTT_DOOR1_STATUS_TOPIC "garage/door/1/status"
#define DOOR1_OPEN_PIN D2
#define DOOR1_CLOSE_PIN D2
#define DOOR1_STATUS_PIN D5
#define DOOR1_STATUS_SWITCH_LOGIC "NO"

// Door 2 Parameters

#define DOOR2_ENABLED true
#define DOOR2_ALIAS "335xi Door"
#define MQTT_DOOR2_ACTION_TOPIC "garage/door/2/action"
#define MQTT_DOOR2_STATUS_TOPIC "garage/door/2/status"
#define DOOR2_OPEN_PIN D1
#define DOOR2_CLOSE_PIN D1
#define DOOR2_STATUS_PIN D6
#define DOOR2_STATUS_SWITCH_LOGIC "NO"

// Door 3 Parameters

#define DOOR3_ENABLED true
#define DOOR3_ALIAS "Bike Door"
#define MQTT_DOOR3_ACTION_TOPIC "garage/door/3/action"
#define MQTT_DOOR3_STATUS_TOPIC "garage/door/3/status"
#define DOOR3_OPEN_PIN D3
#define DOOR3_CLOSE_PIN D3
#define DOOR3_STATUS_PIN D7
#define DOOR3_STATUS_SWITCH_LOGIC "NO"
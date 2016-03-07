#include <Arduino.h>

#include "MCP3008.h"
#include "ESP8266WiFi.h"
#include "OneWire.h"
#include "DallasTemperature.h"

const char* ssid = "610Main24";
const char* pwd = "wifi610zejm";
String tsKey = "38C3XS8ZC6J97GIE";
const char* tsServer = "api.thingspeak.com";

#define CS_PIN 15
#define CLOCK_PIN 14
#define MOSI_PIN 13
#define MISO_PIN 12

#define ONE_WIRE_BUS 4
OneWire oneWire(ONE_WIRE_BUS);
DallasTemperature sensors(&oneWire);

MCP3008 adc(CLOCK_PIN, MOSI_PIN, MISO_PIN, CS_PIN);
WiFiClient client;

void setup() {
  Serial.begin(9600);
  delay(100);
  pinMode(0, OUTPUT);
  sensors.begin();

  // Connect to wifi
  Serial.println();
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);

  WiFi.begin(ssid, pwd);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  Serial.println("");
  Serial.println("WiFi connected!");
  Serial.println("IP: ");
  Serial.println(WiFi.localIP());
}

void loop() {
  digitalWrite(0, HIGH);
  delay(500);
  int val = adc.readADC(0);
  Serial.println(val);
  Serial.println("requesting temp...");
  sensors.requestTemperatures();
  Serial.println(sensors.getTempCByIndex(0));
  digitalWrite(0, LOW);
  delay(500);

  if (client.connect(tsServer,80)) {
    String postStr = tsKey;
    postStr += "&field1=";
    postStr += String(val);
    postStr += "\r\n\r\n";

    client.print("POST /update HTTP/1.1\n");
    client.print("Host: api.thingspeak.com\n");
    client.print("Connection: close\n");
    client.print("X-THINGSPEAKAPIKEY: "+tsKey+"\n");
    client.print("Content-Type: application/x-www-form-urlencoded\n");
    client.print("Content-Length: ");
    client.print(postStr.length());
    client.print("\n\n");
    client.print(postStr);
    
    Serial.println("ADC: ");
    Serial.print(val);
  }
  client.stop();
    
  Serial.println("Waiting...");
  // thingspeak needs minimum 15 sec delay between updates
  delay(20000);
}

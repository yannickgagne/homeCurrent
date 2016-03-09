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
int loopCount;

void setup() {
  Serial.begin(9600);
  delay(100);

  //Pin 0 output for LED flash
  pinMode(0, OUTPUT);

  //Init sensors DS18B20
  sensors.begin();

  // Connect to wifi
  Serial.println();
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);
  WiFi.begin(ssid, pwd);

  //wait for WIFI to be up
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  Serial.println("");
  Serial.println("WiFi connected! IP:");
  Serial.println(WiFi.localIP());

  loopCount = 0;
}

void loop() {
  loopCount += 1;
  //LED flash (takes 1 sec)
  flashLed0();

  //read CH0 of MCP3008 chip
  int ch0val = adc.readADC(0);

  //read temp from DS18B20 sensor 0
  sensors.requestTemperatures();
  float se0val = sensors.getTempCByIndex(0);

  Serial.print("ADC0: ");
  Serial.println(ch0val);
  Serial.print("TEMP0: ");
  Serial.println(se0val);


  //Only POST to Thingspeak 1 time for each 10 loops
  if(loopCount > 30) {
    //Post DATA to Thingspeak API
    if (postTS(ch0val, se0val) == 0) {
      Serial.println("Thingspeak post OK");
    } else {
      Serial.println("Thingspeak post FAILED");
    }
    loopCount = 0;
  }

  //wait 1sec between reads
  delay(1000);
}

int postTS(int val1, float val2) {
  int result;
  if (client.connect(tsServer,80)) {
    String postStr = tsKey;
    postStr += "&field1=";
    postStr += String(val1);
    postStr += "&field2=";
    postStr += String(val2);
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
    result = 0;
  } else {
    result = 1;
  }
  client.stop();
  return result;
}

void flashLed0() {
  digitalWrite(0, LOW);
  delay(200);
  digitalWrite(0, HIGH);
  delay(200);
  digitalWrite(0, LOW);
  delay(200);
  digitalWrite(0, HIGH);
  delay(200);
  digitalWrite(0, LOW);
  delay(200);
}

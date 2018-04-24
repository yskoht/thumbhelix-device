#include <Wire.h>

#define xpin A3
#define ypin A2
#define zpin 1

#define I2C_ADDR 0x0A

struct {
  uint16_t x;
  uint16_t y;
  uint8_t  z;
} buf;

void handler() {
  Wire.write((byte*)(&buf), sizeof(buf));
}

void setup() {
  Wire.begin(I2C_ADDR);
  Wire.onRequest(handler);

  pinMode(xpin, INPUT);
  pinMode(ypin, INPUT);
  pinMode(zpin, INPUT);
}

void loop() {
  buf.x = analogRead(xpin);
  buf.y = analogRead(ypin);
  buf.z = digitalRead(zpin);
}


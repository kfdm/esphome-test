#include "esphome.h"

// https://esphome.io/components/sensor/custom.html
// https://esphome.io/custom/i2c.html

// https://docs.m5stack.com/en/hat/hat_envIII
// https://docs.m5stack.com/en/unit/tvoc

class KitchenComponent : public PollingComponent, public CustomMQTTDevice {
 public:
  Sensor *temperature_sensor = new Sensor();
  Sensor *humidity_sensor = new Sensor();
  Sensor *vo2_sensor = new Sensor();

  KitchenComponent() : PollingComponent(15000) {}

  void setup() override {

  }

  void update() override {

  }
};

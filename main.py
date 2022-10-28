import json

import smartconfig
import unit
from m5mqtt import M5mqtt
from m5stack import *
from m5ui import *
from uiflow import *


# https://github.com/m5stack/M5Atom

co2_0 = unit.get(unit.CO2_SCD40, unit.PORTA)


topic = "m5stack/atom"

# Set to orange to show startup
rgb.setColorAll(0xFF8000)
rgb.setBrightness(2)
# Need to reset first
co2_0.stop_periodic_measurement()
co2_0.start_periodic_measurement()
wait(5)

m5mqtt = M5mqtt(
    "m5stack-atom",
    "***REMOVED***",
    1883,
    "m5stack-atom",
    "***REMOVED***",
    300,
)

# Connect to MQTT and show purple
m5mqtt.start()
m5mqtt.set_last_will(topic, "offline")
m5mqtt.publish(topic,'starting')
rgb.setColorAll(0x800080)
rgb.setBrightness(2)


# Loop and get our measurements
while True:
    rgb.setColorAll(0x0000FF) # Set blue at start
    rgb.setBrightness(2)

    co2_0.download_sensor_measurement()
    m5mqtt.publish(
        topic,
        json.dumps(
            {
                "temp": co2_0.temperature,
                "hum": co2_0.humidity,
                "eco2": co2_0.co2,
            }
        ),
        0,
    )
    rgb.setColorAll(0x00FF00) # Set green at end
    rgb.setBrightness(2)

    wait(60)

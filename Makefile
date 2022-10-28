VENV := .venv
PIP_BIN := $(VENV)/bin/pip
ESP_TOOL := $(VENV)/bin/esptool.py
SYSTEM_PYTON := python3.7

info: $(ESP_TOOL)
	$(ESP_TOOL) chip_id

$(PIP_BIN):
	$(SYSTEM_PYTON) -m venv $(VENV)

$(ESP_TOOL): $(PIP_BIN)
	$(PIP_BIN) install esptool

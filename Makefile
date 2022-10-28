VENV := .venv
PIP_BIN := $(VENV)/bin/pip
ESP_TOOL := $(VENV)/bin/esptool.py
SYSTEM_PYTON := python3.9
ESPHOME_BIN := $(VENV)/bin/esphome

dashboard: $(ESPHOME_BIN)
	$(ESPHOME_BIN) dashboard

$(PIP_BIN):
	$(SYSTEM_PYTON) -m venv $(VENV)

$(ESPHOME_BIN): $(PIP_BIN)
	$(PIP_BIN) install esphome

$(ESP_TOOL): $(PIP_BIN)
	$(PIP_BIN) install esptool

.PHONY: list
list: $(PIP_BIN)
	$(PIP_BIN) list

.PHONY: kitchen
kitchen:  $(ESPHOME_BIN)
	 $(ESPHOME_BIN) run kitchen.yaml

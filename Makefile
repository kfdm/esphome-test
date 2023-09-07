VENV := .venv
PIP_BIN := $(VENV)/bin/pip
ESP_TOOL := $(VENV)/bin/esptool.py
SYSTEM_PYTHON ?= python3.10
ESPHOME_BIN := $(VENV)/bin/esphome

.PHONY: dashboard
dashboard: $(ESPHOME_BIN)
	$(ESPHOME_BIN) dashboard .

$(PIP_BIN):
	$(SYSTEM_PYTHON) -m venv $(VENV)

$(ESPHOME_BIN): $(PIP_BIN)
	$(PIP_BIN) install esphome

$(ESP_TOOL): $(PIP_BIN)
	$(PIP_BIN) install esptool

.PHONY: pip
pip: $(PIP_BIN)
	$(PIP_BIN) install esphome --upgrade

.PHONY: list
list: $(PIP_BIN)
	$(PIP_BIN) list

.PHONY: kitchen
kitchen:  $(ESPHOME_BIN)
	 $(ESPHOME_BIN) run kitchen.yaml

.PHONY: bedroom
bedroom:  $(ESPHOME_BIN)
	 $(ESPHOME_BIN) run bedroom.yaml

.PHONY: office
office:  $(ESPHOME_BIN)
	 $(ESPHOME_BIN) run office.yaml

.PHONY: living
living:  $(ESPHOME_BIN)
	 $(ESPHOME_BIN) run living.yaml

.PHONY: washroom
washroom:  $(ESPHOME_BIN)
	 $(ESPHOME_BIN) run washroom.yaml

.PHONY: bell
bell:  $(ESPHOME_BIN)
	 $(ESPHOME_BIN) run bell.yaml  --device bell.local

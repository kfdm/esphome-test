VENV := .venv
PIP_BIN := $(VENV)/bin/pip
ESP_TOOL := uv run esptool
SYSTEM_PYTHON ?= python3.10
ESPHOME_BIN := uv run esphome

.PHONY: dashboard
dashboard:
	$(ESPHOME_BIN) dashboard .

.PHONY: kitchen
kitchen:
	 $(ESPHOME_BIN) run kitchen.yaml

.PHONY: bedroom
bedroom:
	 $(ESPHOME_BIN) run bedroom.yaml

.PHONY: office
office:
	 $(ESPHOME_BIN) run office.yaml

.PHONY: living
living:
	 $(ESPHOME_BIN) run living.yaml

.PHONY: washroom
washroom:
	 $(ESPHOME_BIN) run washroom.yaml

.PHONY: guestroom
guestroom:
	 $(ESPHOME_BIN) run guestroom.yaml

.PHONY: catbox
catbox:
	 $(ESPHOME_BIN) run catbox.yaml

.PHONY: calendar
calendar:
	$(ESPHOME_BIN) run calendar.yaml

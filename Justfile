_help:
    @just --list --unsorted     

# esphome run
run *args:
    uv run esphome run {{ args }}

dashboard *args:
    uv run esphome dashboard . {{ args }}

[group('m5atom')]
kitchen:
    @just run kitchen.yaml

[group('m5atom')]
bedroom:
    @just run bedroom.yaml

[group('m5atom')]
office:
    @just run office.yaml

[group('m5atom')]
living:
    @just run living.yaml

[group('m5atom')]
washroom:
    @just run washroom.yaml

[group('m5atom')]
guestroom:
    @just run guestroom.yaml

catbox:
    @just run catbox.yaml

calendar:
    @just run calendar.yaml

[group('socket')]
socket-a:
    @just run socket-a.yaml

[group('socket')]
socket-b:
    @just run socket-b.yaml

[group('socket')]
socket-c:
    @just run socket-c.yaml

# https://m5stack-socket-d.local
[group('socket')]
socket-d:
    @just run socket-d.yaml

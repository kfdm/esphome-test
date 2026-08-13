_help:
    @just --list --unsorted

# esphome run
[group('dev')]
run *args:
    uv run esphome run {{ args }}

# Show dashboard
[group('dev')]
dashboard *args:
    uv run esphome dashboard . {{ args }}

# Format files
[group('dev')]
format:
    just --fmt
    prek --all-files

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

# http://m5stack-socket-a.local
[group('socket')]
socket-a:
    @just run socket-a.yaml

# http://m5stack-socket-b.local
[group('socket')]
socket-b:
    @just run socket-b.yaml

# http://m5stack-socket-c.local
[group('socket')]
socket-c:
    @just run socket-c.yaml

# http://m5stack-socket-d.local
[group('socket')]
socket-d:
    @just run socket-d.yaml

# http://m5stack-socket-e.local
[group('socket')]
socket-e:
    @just run socket-e.yaml

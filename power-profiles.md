- sudo dnf install power-profiles-daemon

- sudo systemctl enable --now power-profiles-daemon

- powerprofilesctl list <!-- listing available power profiles -->

- powerprofilesctl set [POWER_PROFILE] <!-- setting a power profile -->


<!-- to make a power profile persistent -->
- sudo systemctl edit power-profiles-daemon
and add:
[Service]
ExecStartPost=/usr/bin/powerprofilesctl set performance

- sudo systemctl daemon-reload

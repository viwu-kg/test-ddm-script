#!/bin/zsh
set -euo pipefail

cd /path/to/DDM-OS-Reminder/Resources
zsh assembleDDMOSReminder.zsh
zsh ddmOSReminder.Assembled.*.zsh
launchctl kickstart -kp system/org.kg.dor 
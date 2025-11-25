#!/bin/zsh
set -euo pipefail

cd ./Resources
zsh assembleDDMOSReminder.zsh
zsh ddmOSReminder.Assembled.*.zsh
launchctl kickstart -kp system/org.kg.dor 
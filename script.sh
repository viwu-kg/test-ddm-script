cd Resources/
zsh assembleDDMOSReminder.zsh
sudo zsh ddmOSReminder.Assembled.*.zsh

tail -f /var/log/org.kg.log
launchctl kickstart -kp system/org.kg.dor

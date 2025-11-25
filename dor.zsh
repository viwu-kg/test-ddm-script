#!/bin/zsh
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
LOGFILE="/var/log/org.kg.log"
mkdir -p "$(dirname "$LOGFILE")"

{
  echo "[$(date)] dor.zsh starting"

  # if your DDM bits live in a subfolder, adjust this path
  cd "$SCRIPT_DIR"

  # 1) assemble
  /bin/zsh "$SCRIPT_DIR/assembleDDMOSReminder.zsh"

  # 2) run assembled script
  /bin/zsh "$SCRIPT_DIR"/ddmOSReminder.Assembled.*.zsh

  echo "[$(date)] dor.zsh finished"
} >> "$LOGFILE" 2>&1
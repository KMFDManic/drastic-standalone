#!/bin/sh
source "/var/volatile/project_eris.cfg"
cd "/var/volatile/launchtmp"
chmod +x "drastic"
echo "launch_StockUI" > "/tmp/launchfilecommand"
LD_PRELOAD=./drastic_sdl_remap.so ./drastic > "${RUNTIME_LOG_PATH}/drastic.log" 2>&1

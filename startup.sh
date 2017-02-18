#!/bin/bash

COMMAND=$1
shift

if [ "$COMMAND" == "update" ] || [ "$COMMAND" == "updaterun" ]; then
  /opt/steamcmd/steamcmd.sh \
              +login anonymous \
              +force_install_dir /opt/insurgency \
              +app_update 237410 validate \
              +quit
fi   

if [ "$COMMAND" == "run" ] || [ "$COMMAND" == "updaterun" ]; then            
   /opt/insurgency/srcds_run -game insurgency $@
fi

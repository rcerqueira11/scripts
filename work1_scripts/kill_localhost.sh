#!/usr/bin/env bash
#rcerqueira killing script (▀̿Ĺ̯▀̿ ̿) 

OUTPUT=$(sudo netstat -lpn | grep ":8000")
SIN_SLASH=${OUTPUT%/*}
PID_LOCALHOST=${SIN_SLASH##* }

echo "ID to kill $PID_LOCALHOST"
kill $PID_LOCALHOST
echo "(▀̿Ĺ̯▀̿ ̿) Done."

sleep 2sg

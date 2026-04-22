#!/bin/bash

if [ -f /home/ubuntu/app.pid ]; then
  PID=$(cat /home/ubuntu/app.pid)
  kill $PID
  rm /home/ubuntu/app.pid
  echo "[ApplicationStop] Servidor detenido"
else
  echo "[ApplicationStop] No hay proceso en ejecución"
fi
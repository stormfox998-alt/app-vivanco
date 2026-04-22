#!/bin/bash

if [ -f /home/ubuntu/app.pid ]; then
  PID=$(cat /home/ubuntu/app.pid)

  # Verifica si el proceso sigue activo
  if ps -p $PID > /dev/null; then
    kill $PID
    echo "[ApplicationStop] Proceso $PID detenido"
  else
    echo "[ApplicationStop] El proceso ya no existe"
  fi

  rm -f /home/ubuntu/app.pid
else
  echo "[ApplicationStop] No hay archivo PID"
fi

# Como respaldo, mata cualquier proceso node app.js
sudo pkill -f "node app.js" || true

exit 0
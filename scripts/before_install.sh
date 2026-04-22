#!/bin/bash

# Verifica si existe el directorio
if [ -d /home/ubuntu/app ]; then
  sudo rm -rf /home/ubuntu/app/*
fi

# Crea el directorio nuevamente
sudo mkdir -p /home/ubuntu/app

# Da permisos al usuario ubuntu
sudo chown -R ubuntu:ubuntu /home/ubuntu/app

echo "[BeforeInstall] Directorio limpio y preparado"
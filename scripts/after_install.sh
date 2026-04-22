#!/bin/bash

cd /home/ubuntu/app

# Instala dependencias de producción
npm install --omit=dev

echo "[AfterInstall] Dependencias instaladas"
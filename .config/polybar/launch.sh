#!/usr/bin/env bash

# Hentikan semua instance polybar yang sedang berjalan
killall -q polybar

# Tunggu sampai proses polybar benar-benar berhenti
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Jalankan Polybar menggunakan nama bar "example" dari config.ini
polybar example 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar berhasil diluncurkan..."


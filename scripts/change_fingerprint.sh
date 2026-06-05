#!/bin/bash

sudo -v

if authselect current | grep -q with-fingerprint; then
  echo "Desativando sudo com digital"
  sudo authselect disable-feature with-fingerprint
else
  echo "Ativando sudo com digital"
  sudo authselect enable-feature with-fingerprint
fi

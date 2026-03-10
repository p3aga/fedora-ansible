#!/bin/bash

sudo -v

if authselect current | grep -q with-fingerprint; then
  sudo authselect disable-feature with-fingerprint
else
  sudo authselect enable-feature with-fingerprint
fi

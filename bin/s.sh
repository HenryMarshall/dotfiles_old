#!/bin/bash

# `s`     => `sudo !!`
# `s vim` => `sudo vim`

s() {
  if [[ $# == 0 ]]; then
    sudo $(history -p '!!')
  else
    sudo "$@"
  fi
}

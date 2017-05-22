#!/bin/bash

tmp() {
  if [[ $# == 0 ]]; then
    rm -rf "$HOME/.tmp.bak"
    mv "$HOME/tmp" "$HOME/.tmp.bak"
    mkdir "$HOME/tmp"
    cd "$HOME/tmp"
  else
    echo "called with args"
  fi
}

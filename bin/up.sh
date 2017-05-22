#!/bin/bash

# Navigate up specified number of levels. 
# `up`   => `cd ..`
# `up 2` => `cd ../..` 
# `up 3` => `cd ../../..`

up() {
  local d=""
  limit=$1
  for ((i=1; i<=limit; i++))
  do
    d=$d/..
  done
  d=$(echo $d | sed 's/^\///')
  if [ -z "$d" ]; then
    d=..
  fi
  cd $d
}


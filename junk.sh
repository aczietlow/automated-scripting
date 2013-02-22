#!/bin/bash

while true
do
  if [ ! -f /tmp/out.log ]; then
     touch /tmp/out.log
  fi

  date >> /tmp/out.log
  top >> /tmp/out.log
  sleep 5
done

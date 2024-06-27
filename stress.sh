#!/bin/sh

# Check if RUNTIME is set, otherwise default to 1
: "${RUNTIME:=1}"

# Check if RUNTIME is a positive integer
if ! [[ "$RUNTIME" =~ ^[0-9]+$ ]]; then
  echo "RUNTIME must be a positive integer"
  exit 1
fi

# Run stress-ng to stress N number of cores for 10 minutes
stress-ng --cpu $RUNTIME --timeout 10m

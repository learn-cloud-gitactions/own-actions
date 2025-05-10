#!/bin/sh
echo "::debug::Running entrypoint.sh"
echo "Hello $1"
if [ -n "$HELLO" ]; then
  echo "HELLO environment variable is set to: $HELLO"
else
  echo "HELLO environment variable is not set."
fi
echo "INPUT_WHO_TO_GREET: $INPUT_WHO_TO_GREET"
echo "HELLO: $HELLO"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT
echo "HELLO_TIME=$time" >> $GITHUB_ENV
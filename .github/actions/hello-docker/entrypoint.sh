#!/bin/sh
echo "Hello, $1"
echo "This is a test of the GitHub Actions Docker container."
echo "::DEBUG::This is a debug message"
echo "INPUT_WHO_TO_GREET=$INPUT_WHO_TO_GREET"
echo "HELLO $HELLO"
time=$(date)
echo "::set-output name=time::$time"
echo "time=$time" >> $GITHUB_OUTPUT
echo "HELLO_TIME=$time" >> $GITHUB_ENV
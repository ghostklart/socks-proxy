#!/bin/bash

starting() {
	echo "Creating user"
	bash /danted-init.sh
	echo "Starting danted"
	danted -p /danted.pid
}

ending() {
	echo "Stopping danted"
	kill -9 $(cat /danted.pid)
	echo "Stopping container"
}

trap ending SIGINT SIGTERM

echo "Starting container"
starting


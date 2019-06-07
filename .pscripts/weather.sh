#!/bin/sh

curl -s es.wttr.in/ensenada?format=3 | awk '{print $2" "$3}' | sed s/+//g


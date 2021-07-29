#!/usr/bin/env bash

uptime | sed -le 's/^.*: \(.*\)$/\1/'

#!/bin/bash

set +x

dpkg -l | grep linux-image | awk '{print $2}'

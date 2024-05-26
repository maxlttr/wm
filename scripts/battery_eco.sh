#!/bin/sh

sudo cpupower frequency-set -g powersave -d 0.4G -u 0.8G
echo "1" | sudo tee /sys/devices/system/cpu/intel_pstate/no_turbo

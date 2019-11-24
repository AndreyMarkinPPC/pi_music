#!/bin/bash

# check whether fluidsynth is launch
ps -a | grep fluidsynth | wc -l

# launch fluidsynth
fluidsynth -a alsa /usr/share/sounds/sf2/SalC5Light2.sf2 -o synth.gain=1.0 -o synth.cpu-cores=4 -o audio.periods=3

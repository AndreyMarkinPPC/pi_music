#!/bin/bash

while true; do
	midi_status=$(aconnect --list | grep "USB Keystation" | grep "client" | wc -l)
	if [[ $midi_status -eq 1 ]]; then
		fluidsynth_status=$(ps -a | grep fluidsynth | wc -l)
		if [[ $fluidsynth_status -eq 1 ]]; then	
			midi_port=$(aconnect --list | grep "USB Keystation" | grep "client" | cut -d " " -f 2)
			fluidsynth_port=$(aconnect --list | grep "FLUID Synth" | grep "client" | cut -d " " -f 2)
			aconnect $midi_port $fluidsynth_port
		fi
	fi
	sleep 1
done

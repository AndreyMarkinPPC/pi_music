#! /bin/bash
while true
	do
		midi_status=$(aconnect --list | grep "USB Keystation" | grep "client" | wc -l)
		if [[ $midi_status -eq 1 ]]; then
			fluidsynth_status=$(ps -a | grep fluidsynth | wc -l)
			if [[ $fluidsynth_status -eq 0 ]]; then	
				./launch_fluidsynth.sh
			fi
		fi
	sleep 1
done

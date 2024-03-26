fourmux() {
	xdotool key --delay 0 ctrl+b+quotedbl
	xdotool key --delay 0 ctrl+b+percent
	xdotool key --delay 0 ctrl+b
	xdotool key --delay 0 Up
	xdotool key --delay 0 ctrl+b+percent
	xdotool key --delay 0 ctrl+b
	xdotool key --delay 0 Left
	cls
}

stackedfourmux() {
	fourmux
	fourmux
	fourmux
	fourmux
	fourmux
}

aroundthefourmuxes() {
	vim . &
	xdotool key --delay 0 ctrl+b Down
	xdotool type --delay 0 $1
	xdotool key --delay 0 ctrl+b Right
	xdotool type --delay 0 $2 
	xdotool key --delay 0 ctrl+b Up
	xdotool type --delay 0 $3
	xdotool key --delay 0 ctrl+b Left
}

workfourmux() {
	fourmux
	aroundthefourmuxes $1 $2 $3
	fg
}

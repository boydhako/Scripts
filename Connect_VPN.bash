#!/bin/bash -xv
let COUNT=0

function connectvpn {

osascript <<EOF
tell application "Tunnelblick"
	connect "US Seattle"
end tell
EOF

}

function disconnectvpn {

osascript <<EOF2
tell application "Tunnelblick"
	disconnect all
end tell
EOF2

}

function getpacketloss {

	LOSS="`ping -c 5 google.com | tail -n 1 | sed 's/%//g' | sed 's/ //g' | awk -F, '{printf $3\"\n\"}'`"

}

function checkconnection {

	getpacketloss
	if [ "$LOSS" = "100.0packetloss" ]; then
		let COUNT=$(($COUNT + 1))
	else
		exit
	fi

	if [ "$COUNT" = "5" ]; then
		reconnectvpn
	else
		checkconnection
	fi

}

function reconnectvpn {

	disconnectvpn
	sleep 30s
	connectvpn

}

function main {
	checkconnection

}

main;

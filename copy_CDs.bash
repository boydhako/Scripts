#! /bin/bash -xv

DRSTAT="`drutil status | grep Type | sed 's/ //g' | awk -F: '{printf $2}'`"

function checkstat {

	if [ $DRSTAT = "CD-ROMName" ]; then
		printf "Lets go...\n";
	else
		exit 1
	fi

}

function main {

	checkstat
	printf $DRSTAT

}

main

#! /usr/bin/env bash

set -x



is_node_process_alive() {
	[[ 2 = $( ps -e j | grep 'node spec/gen_output.js' | wc -l) ]]  && return 0
	return 1 # dead
	
}


process_files() {
	echo 'process files'
}

restart_node_process() {
	echo 'restart node process'
}




while true; do 
	if  ! is_node_process_alive ; then 
		process_files
		restart_node_process
	fi
	echo sleep  # to be deleted
	sleep 5s
done


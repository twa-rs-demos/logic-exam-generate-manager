#! /usr/bin/env bash

#set -x



is_node_process_alive() {
	[[ 2 = $( ps -e j | grep 'node spec/gen_output.js' | wc -l) ]]  && return 0
	echo 'determine if node process is alive?' || return 1
	
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
	echo do_nothing # to be deleted
	sleep 5s
done


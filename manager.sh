#! /usr/bin/env bash

set -x

#if node process alive 
#	do nothing
#	exit successfully
#else then
#	1. verify after
#	2. move files
#	3. restart



is_node_process_alive() {
	return 0
	echo 'determine if node process is alive?'
}

do_nothing_and_exit_if_node_process_alive() {
	is_node_process_alive && exit 0 
	exit 1
}

process_files() {
	echo 'process files'
}

restart_node_process() {
	echo 'process files'
}


do_nothing_and_exit_if_node_process_alive || ( process_files && restart_node_process )

	

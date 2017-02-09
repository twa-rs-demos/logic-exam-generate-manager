#! /usr/bin/env bash

#set -x



is_node_process_alive() {
	[[ 2 = $( ps -e j | grep 'node ./spec/gen_output.js' | wc -l) ]]  && return 0
	return 1 # dead
	
}


process_files() {
	echo 'processing files'
	echo 'make a new directory to save json and png' 
	echo 'do second step & move files into directory'
#	directory = make_directory
#	helper directory # helper 是以前在 服务器 上写的脚本，一会儿把它抄过来
	

}

restart_node_process() {
	echo 'restart node process'
	nohup node ./spec/gen_output.js > /dev/null &
}




while true; do 
	if  ! is_node_process_alive ; then 
		process_files
		restart_node_process
	fi
	echo sleep  # to be deleted
	sleep 2s
done


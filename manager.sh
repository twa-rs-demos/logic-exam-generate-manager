#! /usr/bin/env bash

#set -x

directory="$(date +%Y_%m_%d_%H_%M_%S)"

is_node_process_alive() {
	[[ 2 = $( ps -e j | grep 'node ./spec/gen_output.js' | wc -l) ]]  && return 0
	return 1 # dead
}


process_files() {
	echo 'processing files'

	echo 'make a new directory to save json and png' 
	mkdir $directory || exit 1 # 新建文件夹失败的异常

	echo 'do second step & move files into directory'
	node spec/gen_workable_exam_graph_after_verify.js
	mv workable_exam_after_verify/* $directory
	rm workable_exam_before_verify/* 
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
	sleep 5s
done


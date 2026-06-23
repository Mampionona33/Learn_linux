#!/usr/bin/env bash

mkdir -p log

cd log

function random_name_gen(){
	local alphabet=({A..Z})
	local name=""

	for i in {1..5}; do 
		name+="${alphabet[$RANDOM % ${#alphabet[@]}]}"
	done
	echo "$name"
}

function random_id_gen(){
	local id=""

	for i in {1..6}; do 
		id+=$(($RANDOM % 9))
	done
	echo "$id"
}

function generate_status(){
	local status=({"ERROR","SUCCESS","IDL"})
	local index=$(($RANDOM % "${#status[@]}"))
	echo "${status[$index]}"
}

function generate_log_entry(){
	local status=$(generate_status)
	local id=$(random_id_gen)
	local name=$(random_name_gen)
	echo "$status | $id | $name"
}


function generate_log(){
	local index=$(($RANDOM % 100 + 2))
	find -name "log.txt" -delete
	for ((i=1; i<=index; i++)); do
		generate_log_entry >> log.txt
	done
	sort log.txt -o log.txt
	grep -n "ERROR" log.txt | tee errors.txt
	cd .. 
	mkdir -p errors
	mv ./log/errors.txt errors
	diff ./log/log.txt ./errors/errors.txt
}

generate_log

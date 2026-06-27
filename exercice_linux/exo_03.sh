#! /usr/bin/env bash

function generate_server(){
	local index=$(($RANDOM % 10 + 1))
	echo "server ${index}"
}

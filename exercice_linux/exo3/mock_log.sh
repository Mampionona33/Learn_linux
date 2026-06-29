#! /usr/bin/env bash
#!/bin/bash
# ============================================================
# mock_log.sh
# ------------------------------------------------------------
# Script pour générer un faux historique de logs SSH.
# Utile pour tester des scripts d'analyse sans toucher aux vrais fichiers.
#
# Format des lignes simulées :
#   MMM DD HH:MM:SS HOSTNAME PROCESS[PID]: RESULT password for USER from IP_ADDRESS port PORT ssh2
#
# Exemple :
#   Jun 27 03:45:12 server1 sshd[1234]: Accepted password for alice from 192.168.1.45 port 53422 ssh2
# ============================================================

function generate_server(){
	local index=$(($RANDOM % 10 + 1))
	echo "server${index}"
}

function generate_sshd(){
	local sshd=""
	for i in {1..4}; do
		sshd+=$((RANDOM % 9))
	done
	echo $sshd
}


function generate_date(){
    local start_y=2024
    local end_y=2026

    start_sec=$(date -d "01/01/$start_y" +%s)
    end_sec=$(date -d "01/01/$((end_y + 1))" +%s)

    # Génération d’un nombre aléatoire dans l’intervalle
    rand_sec=$(shuf -i $start_sec-$end_sec -n 1)

    # Format syslog + année
    date -d "@$rand_sec" +"%b %d %H:%M:%S %Y"
}


function generate_status(){
	local status=("Accepted" "Refused")
	local st_count=${#status[@]}
	local index=$((RANDOM % st_count))
	echo ${status[$index]}
}

function generate_username(){
  # Récupère les noms dans un tableau
  local resp=($(curl -s "https://my-json-server.typicode.com/Mampionona33/fake_api/users" | jq -r '.[].name'))

  # Calcule un index aléatoire
  local idx=$((RANDOM % ${#resp[@]}))

  # Sélectionne le nom correspondant
  local username=${resp[$idx]}

  echo "$username"
}

function generate_ip_adress(){
	local a=$((RANDOM % 254 + 2))
	local b=$((RANDOM % 254 + 2))
	local c=$((RANDOM % 254 + 2))
	local d=$((RANDOM % 254 + 2))
	echo "$a.$b.$c.$d"
}

function generate_line(){
	local line=""
	local server=$(generate_server)
	local sshd=$(generate_sshd)
	local date_=$(generate_date)
	local status=$(generate_status)
	local username=$(generate_username)
	local ip_adresse=$(generate_ip_adress)
	echo "$date_ $server sshd[$sshd]:$status password for $username from $ip_adresse "
}

generate_line

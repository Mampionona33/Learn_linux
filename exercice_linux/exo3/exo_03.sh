#! /usr/bin/env bash
# ============================================================
# Fake SSH server log history generator
# ------------------------------------------------------------
# Ce fichier est utilisé pour simuler un historique de logs
# d'un serveur SSH. Les lignes suivent le format standard :
#
#   MMM DD HH:MM:SS HOSTNAME PROCESS[PID]: RESULT password for USER from IP_ADDRESS port PORT ssh2
#
# Où :
#   - MMM DD HH:MM:SS  : Date et heure (ex: Jun 27 03:45:12)
#   - HOSTNAME         : Nom du serveur (ex: server1)
#   - PROCESS[PID]     : Processus et identifiant (ex: sshd[1234])
#   - RESULT           : Accepted ou Failed (résultat de la tentative)
#   - USER             : Nom d’utilisateur (ex: alice, bob, admin)
#   - IP_ADDRESS       : Adresse IP source (ex: 192.168.1.45)
#   - PORT             : Port utilisé (ex: 53422)
#   - ssh2             : Protocole SSH version 2
# ============================================================

function generate_server(){
	local index=$(($RANDOM % 10 + 1))
	echo "server${index}"
}


generate_server

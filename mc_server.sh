#!/bin/bash

# if [[ $# != 2 ]]
# then 
# 	echo "Coloque 2 caminhos."
# 	exit 1
# fi

# if [[ ! -f $1 ]] || if [[ ! -d $2 ]]
# then
#   echo "Caminho inválido..."
#   exit 1
# fi

# java_path=$1
# targetDirectory=$2

# cd $targetDirectory
# server_jar=$(find . -name 'minecraft_server*.jar' -type f)
# forge_jar=$(find . -name 'forge*.jar' -type f)

# if [ ! -f $forge_jar ]
# then
# 	sudo $java_path -jar $server_jar
# else
# 	sudo $java_path -jar $forge_jar
# fi

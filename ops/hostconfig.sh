#!/bin/bash

echo "I'm going to add hostname in your /etc/hosts"

# host=${${DOCKER_HOST#tcp://}%:2376} # For Zsh

host=$(echo $DOCKER_HOST | sed 's/.*\/\/\(.*\):.*/\1/p' )

echo "This is the entry:"

echo "$host          dockerhost apprecious.local" >> /etc/hosts

vi /etc/hosts

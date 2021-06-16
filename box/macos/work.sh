#!/bin/bash

. ${UTILS_PATH}/ui.sh

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ $INSTALL_WORK =~ n|N ]];
then
    warning ">>> Skipping work stuff..."
    exit 0
fi

br
info ">> Cloning repositories..."
br

info ">> Lille Group..."
WORKSPACE=$HOME/Documents/Work/Workspace_LG
if [ ! -d $WORKSPACE/escribehost ]; 				then echo -e "${RED}>> lg/escribehost...${NC}" && git clone git@github.com:lillegroup/escribehost.git $WORKSPACE/escribehost; fi
if [ ! -d $WORKSPACE/datadictionary ]; 			    then echo -e "${RED}>> lg/datadictionary...${NC}" && git clone git@github.com:lillegroup/datadictionary.git $WORKSPACE/datadictionary; fi

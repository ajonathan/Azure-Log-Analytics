#!/bin/bash

# Log Analytics Variables
LAWS="Workspace ID"
LAKEY="Workspace key"

###########################################
# Download and install Log Analytics
###########################################
wget https://raw.githubusercontent.com/Microsoft/OMS-Agent-for-Linux/master/installer/scripts/onboard_agent.sh && sh onboard_agent.sh -w $LAWS -s $LAKEY -d opinsights.azure.com

###########################################
# Download and install Service Map
###########################################
wget --content-disposition https://aka.ms/dependencyagentlinux -O InstallDependencyAgent-Linux64.bin
sudo sh InstallDependencyAgent-Linux64.bin -s

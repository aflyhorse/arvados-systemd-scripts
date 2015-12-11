#!/bin/bash

UNITDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
sed -i 's_EnvironmentFile=\/etc\/default_EnvironmentFile=\/etc\/sysconfig_g' ${UNITDIR}/system/*

#!/bin/bash

# gera o arquivo 'buildroot/.config', baseado em um defconfig customizado externo

source variables.sh

cd ../buildroot
make defconfig BR2_EXTERNAL=${DIR_EXTERN} ${CUSTOM_DEFCONFIG_NAME}
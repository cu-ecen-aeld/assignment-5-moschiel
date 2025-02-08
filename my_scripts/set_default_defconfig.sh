#!/bin/bash

# gera o arquivo 'buildroot/.config', baseado em um defconfig padrão fornecido pelo buildroot

source variables.sh

cd ../buildroot
make defconfig BR2_EXTERNAL=${DIR_EXTERN} ${DEFAULT_DEFCONFIG_NAME}
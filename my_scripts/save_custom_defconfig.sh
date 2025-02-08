#!/bin/bash

# apartir da configuração atual em 'buildroot/.config', geramos um defconfig customizado externo

source variables.sh

cd ../buildroot
make savedefconfig BR2_EXTERNAL=${DIR_EXTERN} BR2_DEFCONFIG=${DIR_EXTERN}/configs/${CUSTOM_DEFCONFIG_NAME}
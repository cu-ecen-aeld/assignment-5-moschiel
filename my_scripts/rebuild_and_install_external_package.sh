#!/bin/bash
# Rebuild external package 'aesd-assignments' and install into the final build image

cd ../buildroot

make aesd-assignments-dirclean
make aesd-assignments-rebuild
make
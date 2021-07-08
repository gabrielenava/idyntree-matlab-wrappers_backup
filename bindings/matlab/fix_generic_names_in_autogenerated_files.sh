#!/bin/bash

# This script renames the generic SwigRef.m, SwigMem.m and SwigGet.m
# to iDynTreeSwigRef.m, iDynTreeSwigMem.m and iDynTreeSwigGet.m to
# avoid conflicts with other projects (such as CasADi) that install
# slightly diffent files with the same name
# Workaround for https://github.com/robotology/idyntree/issues/865

# This script MUST be executed from the directory that it contains it

# Rename generic .m files
mv ./autogenerated/SwigRef.m ./autogenerated/iDynTreeSwigRef.m
mv ./autogenerated/SwigGet.m ./autogenerated/iDynTreeSwigGet.m
mv ./autogenerated/SwigMem.m ./autogenerated/iDynTreeSwigMem.m

# Patch autogenerated files that refer to the renamed files
# see https://stackoverflow.com/questions/11392478/how-to-replace-a-string-in-multiple-files-in-linux-command-line
sed -i 's/SwigRef/iDynTreeSwigRef/g' ./autogenerated/+iDynTree/*
sed -i 's/SwigGet/iDynTreeSwigGet/g' ./autogenerated/+iDynTree/*
sed -i 's/SwigMem/iDynTreeSwigMem/g' ./autogenerated/+iDynTree/*
sed -i 's/SwigRef/iDynTreeSwigRef/g' ./autogenerated/*.cxx
sed -i 's/SwigGet/iDynTreeSwigGet/g' ./autogenerated/*.cxx
sed -i 's/SwigMem/iDynTreeSwigMem/g' ./autogenerated/*.cxx
sed -i 's/SwigRef/iDynTreeSwigRef/g' ./autogenerated/*.m
sed -i 's/SwigGet/iDynTreeSwigGet/g' ./autogenerated/*.m
sed -i 's/SwigMem/iDynTreeSwigMem/g' ./autogenerated/*.m

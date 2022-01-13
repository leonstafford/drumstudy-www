#!/bin/sh

# deploys latest theme and plugin to Drum.study

# update submodules to latest
git submodule update --recursive --remote

# create deploy artifact for example.com/deploy.txt
date > deploy.txt

# add changed files 
git add deploy.txt theme plugin

git commit -m "deploy latest plugin and theme code"

git push

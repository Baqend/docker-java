#!/bin/bash

sed "s@ARG JDK_URL@ARG JDK_URL=$JDK_URL@g" Dockerfile.template > java/Dockerfile

git add java/Dockerfile
git commit -m "New java version $JDK_TAG"
git tag -f $JDK_TAG
git push origin master
git push -f origin $JDK_TAG
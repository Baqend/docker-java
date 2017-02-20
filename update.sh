#!/bin/bash

sed "s@ARG JDK_URL@ARG JDK_URL=$JDK_URL@g" Dockerfile.template > java/Dockerfile

git add java/Dockerfile
git commit -m "New java version ${JRE_MAJOR}u${JRE_UPDATE}"
git tag -f $JDK_TAG
git push origin master
git push -f origin $JDK_TAG
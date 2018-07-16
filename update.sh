#!/bin/bash

#http://stackoverflow.com/questions/10268583/downloading-java-jdk-on-linux-via-wget-is-shown-license-page-instead

sed "s@ARG JRE_URL@ARG JRE_URL=$JRE_URL@g; s@ARG JAVA_HOME_NAME@ARG JAVA_HOME_NAME=$JAVA_HOME_NAME@g" Dockerfile.template > java/Dockerfile

git add java/Dockerfile
git commit -m "New java version $JRE_TAG"
git tag -f $JRE_TAG
git push origin master
git push -f origin $JRE_TAG
#!/bin/bash

sed "s/ARG JRE_MAJOR/ARG JRE_MAJOR=$JRE_MAJOR/g; s/ARG JRE_UPDATE/ARG JRE_UPDATE=$JRE_UPDATE/g; s/ARG JRE_BUILD/ARG JRE_BUILD=$JRE_BUILD/g" Dockerfile.template > node/Dockerfile

TAG="${JRE_MAJOR}u${JRE_UPDATE}"

git add java/Dockerfile
git commit -m "New java version ${JRE_MAJOR}u${JRE_UPDATE}"
git tag -f $TAG
git push origin master
git push -f origin $TAG
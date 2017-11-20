#!/bin/sh
set -o errexit

. ./build.properties

## Do we already have the tar?  It may be outdated...let's remove it.
ls -1 $UI_MAVEN_ARTIFACT_ID-*.tar > /dev/null 2>&1
if [ "$?" = "0" ]; then
    rm $UI_MAVEN_ARTIFACT_ID-*.tar
fi

 mvn org.apache.maven.plugins:maven-dependency-plugin:2.8:copy \
    -Dartifact=$UI_MAVEN_GROUP_ID:$UI_MAVEN_ARTIFACT_ID:$UI_MAVEN_VERSION:tar \
    -DoutputDirectory=./

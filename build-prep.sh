#!/bin/sh
set -o errexit

. ./build.properties

 mvn org.apache.maven.plugins:maven-dependency-plugin:2.8:copy \
    -Dartifact=$UI_MAVEN_GROUP_ID:$UI_MAVEN_ARTIFACT_ID:$UI_MAVEN_VERSION \
    -DoutputDirectory=./

unzip $UI_MAVEN_ARTIFACT_ID-$UI_MAVEN_VERSION.zip
#!/bin/bash
#set -e
#rm -rf *.zip
#./gradlew clean test integrationTest assemble
#
#filename=$(find build/libs -name "*.jar" | head -1)
#filename=$(basename "$filename")
#
#echo $filename
#
#EXIT_STATUS=0
#echo "Publishing archives for branch $TRAVIS_BRANCH"
#
#echo "Publishing archives"
#
#./gradlew bintrayUpload_stub || EXIT_STATUS=$?
#./gradlew publish_stub || EXIT_STATUS=$?
#
#./gradlew docs || EXIT_STATUS=$?
#
#mkdir -p snapshot
#cp -r build/docs/. ./snapshot/
#
#mkdir -p latest
#cp -r build/docs/. ./latest/
version="v3.0.1"
version=${version:0:5} # v3.0.1

echo "** $version ****"
#majorVersion=${version:0:4} # 3.0.
#majorVersion="${majorVersion}x" # 3.0.x
#
#mkdir -p "$version"
#cp -r ../build/docs/. "./$version/"
#git add "$version/*"
#
#git rm -rf "$majorVersion"
#mkdir -p "$majorVersion"
#cp -r ../build/docs/. "./$majorVersion/"
#git add "$majorVersion/*"

exit $EXIT_STATUS

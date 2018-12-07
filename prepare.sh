#!/usr/bin/env bash

set -eu

VERSION=${1:?no coursier version given}

wget "https://oss.sonatype.org/content/repositories/releases/io/get-coursier/coursier-cli_2.12/${VERSION}/coursier-cli_2.12-${VERSION}-standalone.jar" -O coursier-cli_2.12-${VERSION}-standalone-tmp.jar
tail -n +3 coursier-cli_2.12-${VERSION}-standalone-tmp.jar > coursier-cli_2.12-${VERSION}-standalone.jar
rm coursier-cli_2.12-${VERSION}-standalone-tmp.jar

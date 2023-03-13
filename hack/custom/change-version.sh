#!/bin/bash -e

BASEDIR=`dirname $0`/../..

cd $BASEDIR

if [[ -z "$1" ]]; then
	VERSION=$(cat $BASEDIR/VERSION)
else
	VERSION=$1
fi

echo "Modifying cluster-api-provider-aws version to: $1"
echo $VERSION > VERSION
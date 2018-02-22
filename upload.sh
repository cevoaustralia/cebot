#!/bin/bash

BUCKET=rea-gia-provisioning
TMPFILE=$( mktemp ).tar.gz

cleanup () {
    rm -f $TMPFILE
}

trap cleanup EXIT


docker save cebot | gzip -9v > $TMPFILE
ID=$( docker inspect --format='{{.Id}}' cebot )
aws s3 cp $TMPFILE s3://$BUCKET/cebot-${ID}.image


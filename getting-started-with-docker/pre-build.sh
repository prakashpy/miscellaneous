#!/bin/bash

GIT_LOCATION=`which git`
if [ $GIT_LOCATION = '' ];
    then echo "Couldn't find git, make sure it's installed and on your system's \$PATH"
    exit 1
fi

git clone -b develop https://github.com/___add__username/___add___reponame

echo "[default]" > config
echo "region = us-east-1" >> config
echo "output = json" >> config

echo "[default]" > credentials
echo "aws_access_key_id = FIXME" >> credentials
echo "aws_secret_access_key = FIXME" >> credentials

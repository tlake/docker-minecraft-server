#!/bin/sh

cd /server
./LaunchServer.sh "$@"

if [ "$?" != "0" ]; then
    echo "- Does the docker container have a server directory mounted to '/server'?"
    echo "- Is there a LaunchServer.sh file in the '/server' directory?"
    echo "- Does LaunchServer.sh start with '#!/bin/sh'?"
    exit 1
fi

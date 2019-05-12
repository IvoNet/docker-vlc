#!/usr/bin/env bash

PORT=10001

[[ -z "$(brew ls --versions pulseaudio)" ]] && brew install pulseaudio
killall pulseaudio 2>/dev/null
sleep 1
pulseaudio --load=module-native-protocol-tcp --exit-idle-time=-1 --daemon 2>/dev/null
if [ -z "$(ps -ef|grep -v grep|grep pulseaudio)" ]; then
    echo "Sound will probably not work!"
    echo "Please make sure you run pulseaudio"
fi

docker run                                      \
    -d                                          \
    --rm                                        \
    --name vlc                                  \
    -e AUTH=true                                \
    -e PULSE_SERVER=docker.for.mac.localhost    \
    -v ~/.config/pulse:/nobody/.config/pulse    \
    -p ${PORT}:32000                            \
    -v /Users/ivonet/dev/ivonet-talks/docker/Docker.Fun:/nobody/video \
    -e VNC_DEPTH=24                             \
    ivonet/vlc

echo "Login with: vlc/secret"
sleep 5
open http://localhost:${PORT}
docker logs vlc -f

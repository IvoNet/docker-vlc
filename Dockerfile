FROM ivonet/x11webui:latest

RUN apt-get update \
 && apt-get install -y --no-install-recommends\
    libgl1-mesa-dri \
    libgl1-mesa-glx \
    vlc \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

COPY startapp.sh /startapp.sh

ENV APPNAME=vlc                       \
    USERNAME=vlc \
    PASSWORD=secret

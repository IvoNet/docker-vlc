# vlc

Web desktop docker image for: vlc

It works but not well as no hardware acceleration is working, so the movie will stutter a lot.
I only created this image as a demo of what can an can not be done.

# Usage

See `run.sh` and `vlc.sh` for examples on how to run the application.

# Exposed Ports

| Port number          | Description                                             |
| :--------------------| :-------------------------------------------------------|
| 32000 | the port where vlc is running on in the docker image |

# Volumes

| Volume path          | Description                                             |
| :--------------------| :-------------------------------------------------------|
| /nobody/video | mount this folder to a local folder with movies in them |

# Environment variables

| Environment Variable | Description                                             | default          | 
| :--------------------| :-------------------------------------------------------|:-----------------|
| AUTH                 | enables or disables guacamole authentication            | false            |
| USERNAME             | the name of the login user                              | vlc              |
| PASSWORD             | the Password                                            | secret           |

# Base image configurable settings

Lots of things can be configured through the base image.

See repo [docker-web-gui-base](https://github.com/IvoNet/docker-web-gui-base/blob/master/README.md)
for documentation on the base image.

# For developers

## Build

See `build.sh` for build instructions

---
# License

    Copyright 2019 (c) Ivo Woltring

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.


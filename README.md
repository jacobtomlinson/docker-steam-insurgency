# Docker Steam Insurgency
A docker container for running a dedicated Insurgency server

## Quick start

Create a `server.cfg` file in your current directory. 

**Hint: You can generate a config [here](http://insmaps.com/configurator/)**

Then run:

```shell
$ docker run -ti --rm \
    -p 27015:27015/udp \
    -v $PWD/server.cfg:/opt/insurgency/insurgency/cfg/server.cfg \
    jacobtomlinson/steam-insurgency:latest
```

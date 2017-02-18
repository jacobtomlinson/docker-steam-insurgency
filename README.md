# Docker Steam Insurgency
A docker container for running a dedicated Insurgency server

## Quick start

Install the latest version of insurgency and create a volume to `/opt/insurgency` to persist the game files outside of the container.

```shell
$ docker run -ti --rm \
    -p 27015:27015/udp \
    -v $PWD/insurgency/:/opt/insurgency/ \
    jacobtomlinson/steam-insurgency:latest \
    update
```

Create a `server.cfg` file in your game file volume at `insurgency/cfg/server.cfg`. 

**Hint: You can generate a config [here](http://insmaps.com/configurator/)**

Then start the server

```shell
$ docker run -ti --rm \
    -p 27015:27015/udp \
    -v $PWD/insurgency/:/opt/insurgency/ \
    jacobtomlinson/steam-insurgency:latest
```

## Updates

You can disable check for updates by specifying `run -console` as the startup command. The default command is `updaterun -console` which will check for updates and verify game files before starting the server.

```shell
$ docker run -ti --rm \
    -p 27015:27015/udp \
    -v $PWD/insurgency/:/opt/insurgency/ \
    jacobtomlinson/steam-insurgency:latest \
    run -console
```

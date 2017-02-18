# Docker Steam Insurgency
A docker container for running a dedicated Insurgency server

```shell
$ docker run -ti --rm \
  -p 27015:27015/udp \
  -v $PWD/server.cfg:/opt/insurgency/insurgency/cfg/server.cfg \
  jacobtomlinson/steam-insurgency:latest \
  -console
```

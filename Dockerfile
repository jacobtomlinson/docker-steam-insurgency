FROM kmallea/steamcmd

MAINTAINER Jacob Tomlinson <jacob@tom.linson.uk>

# Install Insurgency
RUN mkdir /opt/insurgency &&\
    cd /opt/steamcmd &&\
    ./steamcmd.sh \
        +login anonymous \
        +force_install_dir ../insurgency \
        +app_update 237410 validate \
        +quit

# Make server port available to host
EXPOSE 27015

# This container will be executable
WORKDIR /opt/insurgency
ENTRYPOINT ["./srcds_run"]

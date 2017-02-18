FROM kmallea/steamcmd
MAINTAINER Jacob Tomlinson <jacob@tom.linson.uk>

# Create insurgency directory
RUN mkdir /opt/insurgency

# Make server port available to host
EXPOSE 27015

WORKDIR /opt/insurgency

# Update and run insurgency
ENTRYPOINT ["/opt/steamcmd/steamcmd.sh", 
            "+login", "anonymous", 
            "+force_install_dir", "/opt/insurgency", 
            "+app_update", "237410", "validate",
            "+quit", "&&",
            "/opt/insurgency/srcds_run", "-game", "insurgency"]

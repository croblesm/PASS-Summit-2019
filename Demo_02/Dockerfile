# From SQL Server 2017 CU13 Ubuntu image
FROM mcr.microsoft.com/mssql/server:2017-CU16-ubuntu
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=tars_db_123

#Install git
RUN apt-get update \
    && apt-get install -y git
 
#Change directory and clone Qxf2 Public POM repo
RUN mkdir /repos \
    && cd /repos \
    && git clone https://github.com/amachanic/sp_whoisactive.git

# Staging directories and copying shell scripts
RUN mkdir /db_scripts
COPY . /db_scripts

# Exporting $PATH variable for SQLCMD and changing permissions to shell script
ENV PATH=$PATH:/opt/mssql-tools/bin
RUN chmod +x /db_scripts/deployment.sh

# Executing scripts
CMD ["/bin/bash", "/db_scripts/entry_point.sh"]
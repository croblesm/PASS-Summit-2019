# From SQL Server 2017 CU15 Ubuntu image
FROM mcr.microsoft.com/mssql/server:2017-CU15-ubuntu
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD='_SqLr0ck$_'
ENV MSSQL_AGENT_ENABLED=1
ENV WAIT_SQL=20
ENV ENVIRONMENT=DEV
ENV UPGRADE=0

#Installing git
RUN apt-get update \
    && apt-get install -y git \
    # Pre-staging script directory
    && mkdir /db_scripts \
    # Pulling git repositories (Open source SQL Server tools)
    && git clone https://github.com/dbamaster/HR_Scripts.git /db_scripts/DBA \
    && git clone https://github.com/amachanic/sp_whoisactive.git /git_repos/sp_whoisactive \
    && git clone https://github.com/BrentOzarULTD/SQL-Server-First-Responder-Kit.git /git_repos/First_Responder_Kit

# Copying directories with scripts
COPY . /db_scripts

# Exporting $PATH variable for SQLCMD and changing permissions to shell script
ENV PATH=$PATH:/opt/mssql-tools/bin
RUN chmod +x /db_scripts/DBA/entry_point.sh /db_scripts/DBA/sql_deployment.sh 

# Executing scripts
CMD ["sh","-c","/db_scripts/DBA/entry_point.sh ${WAIT_SQL} ${ENVIRONMENT} ${UPGRADE}"]

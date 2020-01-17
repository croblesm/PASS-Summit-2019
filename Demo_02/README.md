# Demo 02 - Custom development image

> Part 1 - Docker build

* Show folder structure
* Inspect Dockerfile
	* Show image customizations
	* Show deployment script
	* Show SQL scripts
* Deployment
    * DBA database creation
    * [sp_WhoIsActive](https://github.com/amachanic/sp_whoisactive) Deployment
    * [First responder kit](https://github.com/BrentOzarULTD/SQL-Server-First-Responder-Kit) Deployment
    * HR database restoration
    * Login creation
    * Mask data
* Build image (locally)
* Test local image with local container
* Tag local image
* Push local image to [Docker hub repository](https://hub.docker.com/repository/docker/crobles10/hr-db-dev_stg)

> Part 2 - Troubleshooting

* Create container using custom **dev** environment image on ACI (Azure container instances)
* Check container logs
* Get container public DNS / IP from Azure
* Execute some queries, this action will cause a blocking in SQL Server
* Report issue to DBA
* Open "Troubleshooting" ADS notebook
	* Run sp_WhoIsActive
	* Find blocking
	* Save / Send results to DBA

# Questions?
If you have questions or comments about this demo, don't hesitate to contact me at <crobles@dbamastery.com>

# Contact information
[![N|Solid](http://dbamastery.com/wp-content/uploads/2018/08/if_twitter_circle_color_107170.png)](https://twitter.com/dbamastery) [![N|Solid](http://dbamastery.com/wp-content/uploads/2018/08/if_github_circle_black_107161.png)](https://github.com/dbamaster) [![N|Solid](http://dbamastery.com/wp-content/uploads/2018/08/if_linkedin_circle_color_107178.png)](https://www.linkedin.com/in/croblesdba/) [![N|Solid](http://dbamastery.com/wp-content/uploads/2018/08/if_browser_1055104.png)](http://dbamastery.com/)

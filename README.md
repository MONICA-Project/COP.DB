# MONICA COP.DB
<!-- Short description of the project. -->

The MONICA COP.DB is the database schema used for the COP.API
![COP.DB Schema](https://github.com/MONICA-Project/COP.DB/raw/master/monica_v1_3.svg) 

All data required to build shared situational awareness in MONICA is managed by the COP database, it includes instance data, i.e. points of interest, zones et c. But it also keeps track of incidents e tc.

The database schema is based on [PostgreSQL](https://www.postgresql.org/).

## Getting Started
If you want to install it without Docker on your DB host, please jump to the deployment section. The easiest way of installing and having example populated COP.DB databases is to use the Docker Compose with complete demonstration environment. 

### Docker Compose with complete demonstration environments including the COP.DB
* [Demonstration of staff management with LoRa based locators]( https://github.com/MONICA-Project/staff-management-demo)
* [Demonstration of crowd management using smart wristbands](https://github.com/MONICA-Project/DockerGlobalWristbandSimulation)
* [Demonstration of Sound Monitoring an event using Sound Level Meters](https://github.com/MONICA-Project/DockerSoundDemo)
* [Environment Sensors for managing weather related incidents Demo](https://github.com/MONICA-Project/DockerEnvironmentSensorDemo)

## Deployment
<!-- Deployment/Installation instructions. If this is software library, change this section to "Usage" and give usage examples -->
* Download the database SQL definition file [copdbmodel.sql](https://github.com/MONICA-Project/COP.DB/raw/master/copdbmodel.sql)
* Create the COP.DB from the sql dump by using PostgreSQL command line:
   * ```psql monica_copdb < copdbmodel.sql```
   * The restoring of sql dumps have changed a lot between PostgreSQL versions, please consult the documentation for the version used [here](https://www.postgresql.org/docs/)

### Prerequisite
* PostgreSQL. Installation instructions are available [here](https://www.postgresql.org/)


## Contributing
Contributions are welcome. 

Please fork, make your changes, and submit a pull request. For major changes, please open an issue first and discuss it with the other authors.

## Affiliation
![MONICA](https://github.com/MONICA-Project/template/raw/master/monica.png)  
This work is supported by the European Commission through the [MONICA H2020 PROJECT](https://www.monica-project.eu) under grant agreement No 732350.

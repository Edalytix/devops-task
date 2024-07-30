### Task: Host a Grails Application Using Docker
Objective

To deploy a Grails application using Docker, leveraging existing Docker images and containerization tools.

## Instructions

## Setup development environment

### Install Dependencies

#### Required
* [Java 8 (must install Java 8)](https://www.oracle.com/pl/java/technologies/javase/javase8-archive-downloads.html) or via SDK
* [MySQL 5.7 or MySQL 8.0](https://downloads.mysql.com/archives/community/) or [MariaDB 10.11.4](https://mariadb.com/kb/en/mariadb-10-11-4-release-notes/)
* [SDK Man](https://sdkman.io/install)
* [Grails 3.3.17](https://grails.org/download.html)
* NPM 6.14.6
* Node 14+

#### Optional
* [IntelliJ IDEA](https://www.jetbrains.com/idea/download/)
* Chrome

### Basic setup instructions for developers

These instructions are for developers only.  If you are a user/implementer, please check out our 
[Installation](http://docs.openboxes.com/en/latest/installation/) documentation.

#### 1. Install Dependencies
Install required dependencies above

#### 2. Install Grails and Java 8*


#### 3. Clone repository 

#### 4. Create database 

* Create a mysql Database and configure with the below properties file

#### 5. Create Openboxes configuration file 
Edit `$HOME/.grails/openboxes-config.properties`
`# Database connection settings`
`# You can use dataSource.url when you are using a non-dev/non-test database (test-app may not run properly).`
`# If you want to run $ grails test-app you should comment out the dataSource.url below and create a new `
`# openboxes_test database.  Eventually, we will move to an in-memory H2 database for testing, but we're `
`# currently stuck with MySQL because I'm using some MySQL-specific stuff in the Liquibase changesets.  My bad.`

`dataSource.url=jdbc:mysql://localhost:3306/openboxes`
`dataSource.username=openboxes`
`dataSource.password=openboxes`


#### 6. Install NPM dependencies

#### 7. Build React frontend

#### 8. Start application in development mode
The application can be run in development mode.  This starts the application running in an instance of Tomcat within 
the Grails console.
You may need to run 'grails run-app' several times in order to download all dependencies.
```
grails run-app
```


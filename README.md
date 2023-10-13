The repository contains examples of how to test Mule4 applications with a database.

Branch main
contains an untested app. The database can be started via Docker Compose. The compose file is in the "docker" folder

Branch in-memory
This branch contains an example of how the app tests using H2 as an in-memory database. One problem is that not all database queries can be tested. Example "FULL OUTER JOIN

Branch testcontainer
This branch contains an example how to test the app with the [Mule-Testcontainer-Plugin](https://github.com/obscure1910/mule-testcontainers-db). Here you can also test the "FULL OUTER JOIN".

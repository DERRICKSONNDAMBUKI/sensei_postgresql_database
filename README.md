# Postgresql Database

#### post installation
```
[root@host]# su - postgres
Password:
bash-4.1$ createdb testdb
bash-4.1$ psql testdb
psql (8.4.13, server 9.2.4)
test=#
```

#### start/restart/stop
```
[root@host]# service postgresql restart
Stopping postgresql service:                                        [OK]
Starting postgresql service:                                        [OK]

```

#### PostgreSQL - Syntax
This chapter provides a list of the PostgreSQL SQL commands, followed by the precise syntax rules for each of these commands. This set of commands is taken from the psql command-line tool. Now that you have Postgres installed, open the psql as −
Program Files → PostgreSQL 9.2 → SQL Shell(psql).
Using psql, you can generate a complete list of commands by using the \help command. For the syntax of a specific command, use the following command −
```
postgres-# \help <command_name>
```
#### The SQL Statement

An SQL statement is comprised of tokens where each token can represent either a keyword, identifier, quoted identifier, constant, or special character symbol. The table given below uses a simple SELECT statement to illustrate a basic, but complete, SQL statement and its components.

|             | SELECT  |            id, name | FROM    | states     |
|-------------|---------|---------------------|---------|------------|
| Token  Type | Keyword | Identifiers         | Keyword | Identifier |
| Description | Command | Id and name columns | Clause  | Table name |
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

## PostgreSQL SQL commands
#### ABORT
Abort the current transaction.
```
ABORT [ WORK | TRANSACTION ]
```
#### ALTER AGGREGATE
Change the definition of an aggregate function.

#### ALTER CONVERSION
Change the definition of a conversion.
```
ALTER CONVERSION name RENAME TO new_name
ALTER CONVERSION name OWNER TO new_owner
```
#### ALTER DATABASE
Change a database specific parameter.
```
ALTER DATABASE name SET parameter { TO | = } { value | DEFAULT }
ALTER DATABASE name RESET parameter
ALTER DATABASE name RENAME TO new_name
ALTER DATABASE name OWNER TO new_owner
```
#### ALTER DOMAIN
Change the definition of a domain specific parameter.
```
ALTER DOMAIN name { SET DEFAULT expression | DROP DEFAULT }
ALTER DOMAIN name { SET | DROP } NOT NULL
ALTER DOMAIN name ADD domain_constraint
ALTER DOMAIN name DROP CONSTRAINT constraint_name [ RESTRICT | CASCADE ]
ALTER DOMAIN name OWNER TO new_owner
```

#### ALTER FUNCTION
Change the definition of a function.
```
ALTER FUNCTION name ( [ type [, ...] ] ) RENAME TO new_name
ALTER FUNCTION name ( [ type [, ...] ] ) OWNER TO new_owner
```

#### ALTER GROUP
Change a user group.
```
ALTER GROUP groupname ADD USER username [, ... ]
ALTER GROUP groupname DROP USER username [, ... ]
ALTER GROUP groupname RENAME TO new_name
```
#### ALTER INDEX
Change the definition of an index.
```
ALTER INDEX name OWNER TO new_owner
ALTER INDEX name SET TABLESPACE indexspace_name
ALTER INDEX name RENAME TO new_name
```
#### ALTER LANGUAGE
Change the definition of a procedural language.
```
ALTER LANGUAGE name RENAME TO new_name
```
#### ALTER OPERATOR
Change the definition of an operator.
```
ALTER OPERATOR name ( { lefttype | NONE }, { righttype | NONE } )
OWNER TO new_owner
```
#### ALTER OPERATOR CLASS
Change the definition of an operator class.
```
ALTER OPERATOR CLASS name USING index_method RENAME TO new_name
ALTER OPERATOR CLASS name USING index_method OWNER TO new_owner
```
#### ALTER SCHEMA
Change the definition of a schema.
```
ALTER SCHEMA name RENAME TO new_name
ALTER SCHEMA name OWNER TO new_owner
```
#### ALTER SEQUENCE
Change the definition of a sequence generator.
```
ALTER SEQUENCE name [ INCREMENT [ BY ] increment ]
[ MINVALUE minvalue | NO MINVALUE ]
[ MAXVALUE maxvalue | NO MAXVALUE ]
[ RESTART [ WITH ] start ] [ CACHE cache ] [ [ NO ] CYCLE ]
```
#### ALTER TABLE
Change the definition of a table.
```
ALTER TABLE [ ONLY ] name [ * ]
action [, ... ]
ALTER TABLE [ ONLY ] name [ * ]
RENAME [ COLUMN ] column TO new_column
ALTER TABLE name
RENAME TO new_name
```
Where action is one of the following lines −
```
ADD [ COLUMN ] column_type [ column_constraint [ ... ] ]
DROP [ COLUMN ] column [ RESTRICT | CASCADE ]
ALTER [ COLUMN ] column TYPE type [ USING expression ]
ALTER [ COLUMN ] column SET DEFAULT expression
ALTER [ COLUMN ] column DROP DEFAULT
ALTER [ COLUMN ] column { SET | DROP } NOT NULL
ALTER [ COLUMN ] column SET STATISTICS integer
ALTER [ COLUMN ] column SET STORAGE { PLAIN | EXTERNAL | EXTENDED | MAIN }
```
ADD table_constraint
```
DROP CONSTRAINT constraint_name [ RESTRICT | CASCADE ]
CLUSTER ON index_name
SET WITHOUT CLUSTER
SET WITHOUT OIDS
OWNER TO new_owner
SET TABLESPACE tablespace_name
ALTER TABLESPACE
```
Change the definition of a tablespace.
```
ALTER TABLESPACE name RENAME TO new_name
ALTER TABLESPACE name OWNER TO new_owner
ALTER TRIGGER
```
Change the definition of a trigger.
```
ALTER TRIGGER name ON table RENAME TO new_name
ALTER TYPE
```
Change the definition of a type.
```
ALTER TYPE name OWNER TO new_owner
```
#### ALTER USER
Change a database user account.
```
ALTER USER name [ [ WITH ] option [ ... ] ]
ALTER USER name RENAME TO new_name
ALTER USER name SET parameter { TO | = } { value | DEFAULT }
ALTER USER name RESET parameter
```
Where option can be −
```
[ ENCRYPTED | UNENCRYPTED ] PASSWORD 'password'
| CREATEDB | NOCREATEDB
| CREATEUSER | NOCREATEUSER
| VALID UNTIL 'abstime'
```
#### ANALYZE
Collect statistics about a database.
```
ANALYZE [ VERBOSE ] [ table [ (column [, ...] ) ] ]
```
#### BEGIN
Start a transaction block.
```
BEGIN [ WORK | TRANSACTION ] [ transaction_mode [, ...] ]
```
Where transaction_mode is one of −
```
ISOLATION LEVEL {
SERIALIZABLE | REPEATABLE READ | READ COMMITTED
| READ UNCOMMITTED
}
READ WRITE | READ ONLY
```
#### CHECKPOINT
Force a transaction log checkpoint.
```
CHECKPOINT
```
#### CLOSE
Close a cursor.
```
CLOSE name
```
#### CLUSTER
Cluster a table according to an index.
```
CLUSTER index_name ON table_name
CLUSTER table_name
CLUSTER
```
#### COMMENT
Define or change the comment of an object.

```
COMMENT ON {
    TABLE object_name |
    COLUMN table_name.column_name |
    AGGREGATE agg_name (agg_type) |
    CAST (source_type AS target_type) |
    CONSTRAINT constraint_name ON table_name |
    CONVERSION object_name |
    DATABASE object_name |
    DOMAIN object_name |
    FUNCTION func_name (arg1_type, arg2_type, ...) |
    INDEX object_name |
    LARGE OBJECT large_object_oid |
    OPERATOR op (left_operand_type, right_operand_type) |
    OPERATOR CLASS object_name USING index_method |
    [ PROCEDURAL ] LANGUAGE object_name |
    RULE rule_name ON table_name |
    SCHEMA object_name |
    SEQUENCE object_name |
    TRIGGER trigger_name ON table_name |
    TYPE object_name |
    VIEW object_name
}
IS 'text'
```

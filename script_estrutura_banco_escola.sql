create table tb_professores(
nome varchar (100),
idade integer);

create table tb_disciplinas(
nome varchar(100),
vagas integer);

create table tb_funcionarios(
nome varchar(100));

Microsoft Windows [versão 10.0.22000.556]
(c) Microsoft Corporation. Todos os direitos reservados.

C:\Users\andre>psql -hlocalhost -Upostgres -W
Password:
psql (14.2)
WARNING: Console code page (850) differs from Windows code page (1252)
         8-bit characters might not work correctly. See psql reference
         page "Notes for Windows users" for details.
Type "help" for help.

postgres=# \l
                                              List of databases
     Name     |  Owner   | Encoding |        Collate         |         Ctype          |   Access privileges
--------------+----------+----------+------------------------+------------------------+-----------------------
 escola       | postgres | UTF8     | Portuguese_Brazil.1252 | Portuguese_Brazil.1252 |
 meubancodbii | postgres | UTF8     | Portuguese_Brazil.1252 | Portuguese_Brazil.1252 |
 postgres     | postgres | UTF8     | Portuguese_Brazil.1252 | Portuguese_Brazil.1252 |
 template0    | postgres | UTF8     | Portuguese_Brazil.1252 | Portuguese_Brazil.1252 | =c/postgres          +
              |          |          |                        |                        | postgres=CTc/postgres
 template1    | postgres | UTF8     | Portuguese_Brazil.1252 | Portuguese_Brazil.1252 | =c/postgres          +
              |          |          |                        |                        | postgres=CTc/postgres
(5 rows)


postgres=# \dt
           List of relations
 Schema |   Name    | Type  |  Owner
--------+-----------+-------+----------
 public | tb_alunos | table | postgres
(1 row)


postgres=# \c escola
Password:
You are now connected to database "escola" as user "postgres".
escola=# create table tb_responsaveis (nome varchar(100));
CREATE TABLE
escola=# create table tb_campus (nome vachar(100));
ERROR:  type "vachar" does not exist
LINE 1: create table tb_campus (nome vachar(100));
                                     ^
escola=# create table tb_campus (nome varchar(100));
CREATE TABLE
escola=# create table tb_matricula (nome varchar(100));
CREATE TABLE
escola=# create table tb_serie (nome varchar(100));
CREATE TABLE
escola=# \dt
              List of relations
 Schema |      Name       | Type  |  Owner
--------+-----------------+-------+----------
 public | tb_alunos       | table | postgres
 public | tb_campus       | table | postgres
 public | tb_disciplinas  | table | postgres
 public | tb_funcionarios | table | postgres
 public | tb_matricula    | table | postgres
 public | tb_professores  | table | postgres
 public | tb_responsaveis | table | postgres
 public | tb_serie        | table | postgres
(8 rows)


escola=# create table tb_PeriodoLetivo (numero varchar(100));
CREATE TABLE
escola=# create table tb_HistoricoEscolar (nome varchar(100));
CREATE TABLE
escola=# \dt
                List of relations
 Schema |        Name         | Type  |  Owner
--------+---------------------+-------+----------
 public | tb_alunos           | table | postgres
 public | tb_campus           | table | postgres
 public | tb_disciplinas      | table | postgres
 public | tb_funcionarios     | table | postgres
 public | tb_historicoescolar | table | postgres
 public | tb_matricula        | table | postgres
 public | tb_periodoletivo    | table | postgres
 public | tb_professores      | table | postgres
 public | tb_responsaveis     | table | postgres
 public | tb_serie            | table | postgres
(10 rows)


escola=#
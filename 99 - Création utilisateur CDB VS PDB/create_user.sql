sqlplus sys as sysdba@xe
-- Saisir le mot de passe de sys

sho user
sho con_name

create user c##cdbadmin identified by qwerty;
grant connect to c##cdbadmin;

conn c##cdbadmin@xe
-- Saisir le mot de passe de c##cdbadmin

sho user

conn sys as sysdba@xe
-- Saisir le mot de passe de sys

sho pdbs

select pdb_name from dba_pdbs;

sho con_name

alter session set container = pdb1xe;

sho con_name

create user pdb1admin identified by azerty;
grant connect to pdb1admin;

conn pdb1admin@xe
-- Saisir le mot de passe de pdb1admin

sho user
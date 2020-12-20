sqlplus sys as sysdba@xe

sho user
sho con_name

create user c##cdbadmin identified by qwerty;
grant connect to c##cdbadmin;

conn c##cdbadmin@xe

sho user

conn sys as sysdba@xe

sho pdbs

select pdb_name from dba_pdbs;

sho con_name

alter session set container = pdb1xe;

sho con_name

create user pdb1admin identified by azerty;
grant connect to pdb1admin;

conn pdb1admin@xe

sho user
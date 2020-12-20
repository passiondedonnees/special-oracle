sqlplus sys as sysdba@localhost:1521/xe


sqlplus sys as sysdba@xe

sho user
sho con_name

select sys_context('USERENV', 'CON_NAME') from dual;


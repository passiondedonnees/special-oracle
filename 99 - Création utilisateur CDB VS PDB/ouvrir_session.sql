sqlplus sys as sysdba@localhost:1521/xe
-- Saisir le mot de passe de sys


sqlplus sys as sysdba@xe
-- Saisir le mot de passe de sys

sho user
sho con_name

select sys_context('USERENV', 'CON_NAME') from dual;


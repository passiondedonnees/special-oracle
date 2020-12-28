create table rh_departement(
    no_dept number(10),
    nom_dept varchar2(50) not null,
    no_directeur number(10),
    date_creation date default sysdate
);

alter table rh_departement
add constraint pk_rh_departement
primary key(no_dept);

alter table rh_departement
add constraint fk_rh_departement_01
foreign key (no_directeur)
references rh_employe(no_emp);

alter table rh_departement
add constraint uk_rh_departement_01
unique(nom_dept);
create table rh_employe(
    no_emp number(10),
    no_manager number(10),
    nom_emp varchar2(50) not null,
    prenom_emp varchar2(50) not null,
    date_embauche date,
    date_creation date default sysdate,
    primary key (no_emp)
);

alter table rh_employe
drop constraint SYS_C007413;

alter table rh_employe
add constraint pk_rh_employe primary key (no_emp);

alter table rh_employe
add constraint fk_rh_employe_01 foreign key (no_manager)
references rh_employe(no_emp);

alter table rh_employe
add constraint uk_rh_employe_01
unique (nom_emp, prenom_emp);

create index ix_rh_employe_01 on rh_employe(date_embauche);
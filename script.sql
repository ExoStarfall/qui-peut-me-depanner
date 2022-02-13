CREATE TABLE demandeurs(
   id_demandeur SERIAL,
   code_demandeur VARCHAR(50) NOT NULL,
   mail VARCHAR(255) NOT NULL,
   nom VARCHAR(255) NOT NULL,
   adresse VARCHAR(255) NOT NULL,
   CONSTRAINT demandeurs_PK PRIMARY KEY(id_demandeur),
   CONSTRAINT demandeurs_AK UNIQUE(code_demandeur),
   CONSTRAINT demandeurs_1_AK UNIQUE(mail),
   CONSTRAINT demandeurs_2_AK UNIQUE(nom)
);

CREATE TABLE aidants(
   id_aidant SERIAL,
   code_aidant VARCHAR(50) NOT NULL,
   mail VARCHAR(255) NOT NULL,
   prenom VARCHAR(255) NOT NULL,
   age INTEGER NOT NULL,
   nom VARCHAR(255) NOT NULL,
   adresse VARCHAR(255) NOT NULL,
   CONSTRAINT aidants_PK PRIMARY KEY(id_aidant),
   CONSTRAINT aidants_AK UNIQUE(code_aidant),
   CONSTRAINT aidants_1_AK UNIQUE(mail)
);

CREATE TABLE dispo(
   id_dispo SERIAL,
   jour_debut VARCHAR(255) NOT NULL,
   jour_fin VARCHAR(255) NOT NULL,
   heure_debut TIME NOT NULL,
   heure_fin TIME NOT NULL,
   id_aidant INTEGER NOT NULL,
   CONSTRAINT dispo_PK PRIMARY KEY(id_dispo),
   CONSTRAINT dispo_ident_AK UNIQUE(jour_debut, jour_fin, heure_debut, heure_fin),
   CONSTRAINT dispo_aidants_FK FOREIGN KEY(id_aidant) REFERENCES aidants(id_aidant)
);

CREATE TABLE competence(
   id_competence VARCHAR(50),
   nom VARCHAR(255) NOT NULL,
   CONSTRAINT competence_PK PRIMARY KEY(id_competence),
   CONSTRAINT competence_AK UNIQUE(nom)
);

CREATE TABLE zone_geo(
   id_geo VARCHAR(50),
   code_commune VARCHAR(50) NOT NULL,
   ville VARCHAR(255) NOT NULL,
   code_postal VARCHAR(50) NOT NULL,
   departement VARCHAR(255),
   CONSTRAINT zone_geo_PK PRIMARY KEY(id_geo),
   CONSTRAINT zone_geo_AK UNIQUE(code_commune)
);

CREATE TABLE reservation_(
   id_res VARCHAR(50),
   code_res VARCHAR(50) NOT NULL,
   jour_res DATE NOT NULL,
   heure_debut TIME NOT NULL,
   heure_fin VARCHAR(255) NOT NULL,
   id_competence VARCHAR(50) NOT NULL,
   id_aidant INTEGER NOT NULL,
   id_demandeur INTEGER NOT NULL,
   CONSTRAINT reservation__PK PRIMARY KEY(id_res),
   CONSTRAINT reservation__AK UNIQUE(code_res),
   CONSTRAINT reservation__competence_FK FOREIGN KEY(id_competence) REFERENCES competence(id_competence),
   CONSTRAINT reservation__aidants_FK FOREIGN KEY(id_aidant) REFERENCES aidants(id_aidant),
   CONSTRAINT reservation__demandeurs_FK FOREIGN KEY(id_demandeur) REFERENCES demandeurs(id_demandeur)
);

CREATE TABLE agit(
   id_aidant INTEGER,
   id_geo VARCHAR(50),
   CONSTRAINT agit_PK PRIMARY KEY(id_aidant, id_geo),
   CONSTRAINT agit_aidants_FK FOREIGN KEY(id_aidant) REFERENCES aidants(id_aidant),
   CONSTRAINT agit_zone_geo_FK FOREIGN KEY(id_geo) REFERENCES zone_geo(id_geo)
);

CREATE TABLE realise(
   id_aidant INTEGER,
   id_competence VARCHAR(50),
   taux VARCHAR(50) NOT NULL,
   CONSTRAINT realise_PK PRIMARY KEY(id_aidant, id_competence),
   CONSTRAINT realise_aidants_FK FOREIGN KEY(id_aidant) REFERENCES aidants(id_aidant),
   CONSTRAINT realise_competence_FK FOREIGN KEY(id_competence) REFERENCES competence(id_competence)
);

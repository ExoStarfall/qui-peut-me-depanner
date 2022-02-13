-- On va mettre les aidants ici --
INSERT INTO
  public.aidants(code_aidant, mail, prenom, age, nom, adresse)
VALUES 
  ('TZIIVMODKT', 'Sarah_Eagle7739@naiker.biz', 'Sarah', '24', 'Eagle', '1 rue de la paix 75000 Paris'),
  ('GUMBIY8KVB', 'Owen_Cooper8670@mafthy.com', 'Owen', '24', 'Cooper', '2 rue de la paix 75000 Paris'),
  ('Q9FKXZTDO2', 'Logan_Ward9702@deons.tech', 'Logan', '24', 'Ward', '3 rue de la paix 75000 Paris'),
  ('QK8YFRHIKJ', 'Manuel_Cartwright4262@mafthy.com', 'Manuel', '24', 'Chariot', '4 rue de la paix 75000 Paris'),
  ('4HBS8OZ8IT', 'Peter_Notman7145@infotech44.tech', 'Peter', '24', 'Notman', '5 rue de la paix 75000 Paris');



-- Ici les demandeurs --
INSERT INTO
  public.demandeurs (code_demandeur, mail, nom, adresse)
VALUES 
   ('TZIIVMODKT', 'Sarah_Eagle7739@naiker.biz', 'Eagle', '1 rue de la paix 75000 Paris'),
  ('GUMBIY8KVB', 'Owen_Cooper8670@mafthy.com', 'Cooper', '2 rue de la paix 75000 Paris'),
  ('Q9FKXZTDO2', 'Logan_Ward9702@deons.tech','Ward', '3 rue de la paix 75000 Paris'),
  ('QK8YFRHIKJ', 'Manuel_Cartwright4262@mafthy.com', 'Chariot', '4 rue de la paix 75000 Paris'),
  ('4HBS8OZ8IT', 'Peter_Notman7145@infotech44.tech', 'Notman', '5 rue de la paix 75000 Paris');


-- On va insérer les compétences --

INSERT INTO
  public.competence(nom)
VALUES
  ('Jardinage'),
  ('Bricolage'),
  ('Mécanique'),
  ('Anglais'),
  ('Maths'),
  ('Cuisine');

  -- La zone géo -- 

  INSERT INTO
  public.zone_geo(code_commune, ville, code_postal, departement)
VALUES
  ('75056', 'Paris', '75000', 'Paris'),
  ('78646', 'Versailles', '78000', 'Yvelines '),
  ('91228', 'Evry', '91042', 'Essonne'),
  ('78512', 'Rambouillet', '78120', 'Yvelines');

  INSERT INTO
  public.dispo(jour_debut, jour_fin, heure_debut, heure_fin, id_aidant)
VALUES
  ('04/02/2022', '05/02/2022', '12:00:00', '16:00:00', 1),
  ('04/02/2022', '06/02/2022', '14:00:00', '17:00:00', 2),
  ('04/02/2022', '07/02/2022', '13:00:00', '18:00:00', 3),
  ('04/02/2022', '08/02/2022', '12:00:00', '13:00:00', 4),
  ('04/02/2022', '09/02/2022', '17:00:00', '18:00:00', 5);

  -- Les réservations --
  INSERT INTO
  public.reservation(code_res, jour_res, heure_debut, heure_fin, id_competence, id_aidant, id_demandeur)
VALUES
  ('WEU97ZI9AO','04-FEV-2022', '12:00:00', '16:00:00', 1, 1, 1),
  ('TKJLKSRGE8','06-FEV-2022', '13:00:00', '18:00:00', 2, 2, 3);
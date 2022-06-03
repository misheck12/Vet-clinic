/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts, species_id, owner_id) VALUES ('Agumon', 'Feb 3, 2020', 10.23, true, 0, 2, 1);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts, species_id, owner_id) VALUES ('Gabumon', 'Nov 15, 2018', 8, true, 2, 2, 2);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts, species_id, owner_id) VALUES ('Pikachu', 'Jan 7, 2021', 15.04, false, 1, 1, 2);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts, species_id, owner_id) VALUES ('Devimon', 'May 12, 2017', 11, true, 5, 2, 3);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg, species_id, owner_id) VALUES('Charmander', 'Feb 8, 2020', 11, false, 0, 1, 4), ('Plantmon', 'Nov 15, 2021', 5.7, true, 2, 2, 3), ('Squirtle', 'Apr 2, 1993', 12.13, true, 3, 1, 4), ('Angemon', 'Jun 12, 2005', 45, true, 1, 2, 5), ('Boarmon', 'Jun 7, 2005', 20.4, true, 7, 2, 5), ('Blossom', 'Oct 13, 1998', 17, true, 3, 1, 4);


UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species = NULL;
DELETE FROM animals;
ROLLBACK BeforeDelete;

/*Delete all animals born after Jan 1st, 2022.*/
DELETE FROM animals WHERE date_of_birth > '2022-01-01';

/*Update all animals' weight to be their weight multiplied by -1.*/
UPDATE animals SET weight_kg = (weight_kg * (-1));

/*Update all animals' weights that are negative to be their weight multiplied by -1.*/
UPDATE animals SET weight_kg = (weight_kg * (-1)) WHERE weight_kg LIKE '%-';

-------Owners table-------

INSERT INTO owners (full_name, age) VALUES ('Sam Smith', 34);
INSERT INTO owners (full_name, age) VALUES ('Jennifer Orwell', 19);
INSERT INTO owners (full_name, age) VALUES ('Bob', 45);
INSERT INTO owners (full_name, age) VALUES ('Melody Pond', 77);
INSERT INTO owners (full_name, age) VALUES ('Dean Winchester', 14);
INSERT INTO owners (full_name, age) VALUES ('Jodie Whittacker', 38);

--species table--
INSERT INTO species (name) VALUES ('digimon');
INSERT INTO species (name) VALUES ('pokemon');

UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species = NULL;

----Vets table----
INSERT INTO vets (name, age, date_of_graduation) VALUES ('william Tatcher', 34, '2002-04-23');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Maisy Smith', 26, '2019-06-17');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Stephanie Mendez', 64, '1981-05-17');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Jack Harkness', 38, '2008-06-08');

-----specializations table-----
INSERT INTO specializations (vet_id, species_id) VALUES (1, 1);
INSERT INTO specializations (vet_id, species_id) VALUES (3, 2);
INSERT INTO specializations (vet_id, species_id) VALUES (3, 1);
INSERT INTO specializations (vet_id, species_id) VALUES (4, 2);

-- INSERT DATA INTO VISIT TABLE

INSERT INTO visits (animal_id, vet_id, date) VALUES(4, 1, '24-05-2020'), (4, 3, '22-07-2020'), (5, 4, '02-02-2021'), (6, 2, '05-01-2020'), (6, 2, '08-03-2020'), (6, 2, '14-05-2020'), (7, 3, '04-05-2021'), (8, 4, '24-02-2021'), (9, 2, '21-12-2019'), (9, 1, '02-08-020'), (9, 2, '07-04-2021'), (10, 3, '29-09-2019'), (11, 4, '03-10-2020'), (11, 4, '04-11-2020'), (12, 2, '24-01-2019'), (12, 2, '15-05-2019'), (12, 2, '27-02-2020'), (12, 2, '03-07-2020'), (13, 3, '24-05-2020'), (13, 1, '11-01-2021');
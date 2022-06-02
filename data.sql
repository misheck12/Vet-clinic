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

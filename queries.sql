/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name like '%mon';
SELECT   name from animals WHERE date_of_birth > '2016' AND date_of_birth < '2019';
SELECT   name from animals WHERE escape_attempts < 3 AND neutered = true;
SELECT   date_of_birth from animals WHERE name = 'Agumon' OR name = 'Pikachu';
SELECT   name, escape_attempts from animals WHERE weight_kg > '10.5';
SELECT * from animals WHERE neutered = true;
SELECT * from animals WHERE name != 'Gabumon';
SELECT * from animals WHERE weight_kg >= '10.3' AND weight_kg <= '17.3';

--- Start transaction---
BEGIN;
Update animals set species = 'uspecified';
COMMIT;

BEGIN;
DELETE from animals WHERE species = 'uspecified';
COMMIT;
Update animals set species = 'digimon' where name like '%mon';
Update animals set species = 'pokemon' where name not like '%mon';
Delete animals where date_of_birth > '2012-01-01';


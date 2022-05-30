/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name endswith 'mon';
SELECT * from animals WHERE date_of_birth > '2016' AND date_of_birth < '2019';
SELECT * from animals WHERE escape_attempts < 3 AND neutered = true;
SELECT * from animals WHERE name = 'Agumon' OR name = 'Pikachu';
SELECT * from animals WHERE weight_kg > '10.5' name, escape_attempts;
SELECT * from animals WHERE neutered = true;
SELECT * from animals WHERE name != 'Gabumon';
SELECT * from animals WHERE weight_kg >= '10.3' AND weight_kg <= '17.3';

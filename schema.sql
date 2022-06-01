/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id integer NOT NULL,
    name string NOT NULL,
    date_of_birth date NOT NULL,
    escape_attempts integer NOT NULL,
    neutered boolean NOT NULL,
    weight_kg decimal NOT NULL,
    species_id integer NOT NULL,
    owner_id integer NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE animals ADD species CHAR(40);

CREATE TABLE owners (
    id integer NOT NULL,
    full_name string NOT NULL,
    age int NOT NULL,
    primary key (id)
);

CREATE TABLE species (
    id integer NOT NULL,
    name string NOT NULL,
    primary key (id)
);
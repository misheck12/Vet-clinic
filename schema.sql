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
ALTER TABLE animals ADD CONSTRAINT fk_species FOREIGN KEY (species_id) REFERENCES species(id);
ALTER TABLE animals ADD CONSTRAINT fk_owners FOREIGN KEY (owner_id) REFERENCES owners(id);

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

CREATE TABLE Vets (
    id integer NOT NULL,
    name string NOT NULL,
    age int NOT NULL,
    date_of_graduation date NOT NULL,
    primary key (id)
);

-- CREATE SPECIALIZATIONS TABLE

CREATE TABLE IF NOT EXISTS specializations();

ALTER TABLE specializations
ADD COLUMN vet_id INT,
ADD FOREIGN KEY (vet_id) REFERENCES vets(id),
ADD COLUMN species_id INT,
ADD FOREIGN KEY (species_id) REFERENCES species(id);

-- CREATE VISITS TABLE

CREATE TABLE IF NOT EXISTS visits(
    date DATE,
    animal_id INT,
    vet_id INT
);

ALTER TABLE visits
ADD FOREIGN KEY (animal_id) REFERENCES animals(id),
ADD FOREIGN KEY (vet_id) REFERENCES vets(id);


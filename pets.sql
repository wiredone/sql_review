DROP table pets;
DROP table people;

CREATE TABLE people(
       id SERIAL8 primary key,
       name VARCHAR(255),
       age INT2,
       sex CHAR(1)
);

CREATE TABLE pets(
       id SERIAL8 primary key,
       name VARCHAR(255) not null,
       owner VARCHAR(255) not null,
       date_of_birth DATE not null default '1970-01-01',
       expiry_date DATE check (expiry_sate >= date_oth_birth)
);

ALTER TABLE pets
      ADD CONSTRAINT unique_owner_name UNIQUE(name);

INSERT INTO people (name, age, sex) VALUES ('Rick', 27, 'm');
INSERT INTO people (name, age, sex) VALUES ('Rick', 27, 'm');
INSERT INTO people (name, age, sex) VALUES ('Rick', 27, 'm');



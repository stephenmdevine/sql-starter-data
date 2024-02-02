CREATE TABLE plants (
plant_id INTEGER PRIMARY KEY AUTO_INCREMENT,
plant_name VARCHAR(80),
zone INTEGER,
season VARCHAR(20)
);

CREATE TABLE seeds (
seed_id INTEGER PRIMARY KEY AUTO_INCREMENT,
expiration_date DATE,
quantity INTEGER,
reorder BOOL,
plant_id INTEGER,
FOREIGN KEY (plant_id) REFERENCES plants(plant_id)
);

CREATE TABLE garden_bed (
space_number INTEGER PRIMARY KEY AUTO_INCREMENT,
date_planted DATE,
doing_well BOOL,
plant_id INTEGER,
FOREIGN KEY (plant_id) REFERENCES plants(plant_id)
);

SELECT *
FROM seeds
INNER JOIN garden_bed ON (seeds.plant_id=garden_bed.plant_id);

SELECT *
FROM seeds
LEFT JOIN garden_bed ON (seeds.plant_id=garden_bed.plant_id);

SELECT *
FROM seeds
RIGHT JOIN garden_bed ON (seeds.plant_id=garden_bed.plant_id);

SELECT *
FROM seeds
LEFT JOIN garden_bed ON (seeds.plant_id=garden_bed.plant_id)

UNION

SELECT *
FROM seeds
RIGHT JOIN garden_bed ON (seeds.plant_id=garden_bed.plant_id);

SELECT plant_name
FROM plants
INNER JOIN
        (SELECT seeds.plant_id FROM seeds INNER JOIN garden_bed ON seeds.plant_id=garden_bed.plant_id) AS planted_plants ON plants.plant_id=planted_plants.plant_id;


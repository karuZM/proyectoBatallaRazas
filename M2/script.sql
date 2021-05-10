drop database if exists guerraRazas;
CREATE DATABASE guerraRazas;
USE guerraRazas;

CREATE TABLE weapons (
	weapon_id INT PRIMARY KEY AUTO_INCREMENT,
	weapon_name VARCHAR(50),
	weapon_image_path VARCHAR(200)
	); 	

CREATE TABLE races (
	race_id INT PRIMARY KEY auto_increment,
    race_name VARCHAR(50)
    );
	
CREATE TABLE warriors (
	warrior_id INT PRIMARY KEY AUTO_INCREMENT,
	warrior_name VARCHAR(50),
	warrior_image_path VARCHAR(200),
    race_id INT,
    CONSTRAINT fk_RACE FOREIGN KEY (race_id) REFERENCES races(race_id)
	);
	
CREATE TABLE players (
	player_id INT PRIMARY KEY AUTO_INCREMENT,
	player_name VARCHAR(50)
	);
	
CREATE TABLE weapons_available (
	warrior_id INT,
	weapon_id INT,
	CONSTRAINT fk_WARRIOR_2 FOREIGN KEY (warrior_id) REFERENCES warriors (warrior_id),
	CONSTRAINT fk_WEAPON_2 FOREIGN KEY (weapon_id) REFERENCES weapons (weapon_id)
	);
	
CREATE TABLE battle (
	battle_id INT PRIMARY KEY AUTO_INCREMENT,
	player_id INT,
	warrior_id INT,
	warrior_weapon_id INT,
	opponent_id INT,
	opponent_weapon_id INT,
	injuries_caused INT,
	injuries_suffered INT,
	battle_points INT,
	CONSTRAINT fk_PLAYER FOREIGN KEY (player_id) REFERENCES players (player_id),
	CONSTRAINT fk_WARRIOR_3 FOREIGN KEY (warrior_id) REFERENCES warriors (warrior_id),
	CONSTRAINT fk_WEAPON_3 FOREIGN KEY (warrior_weapon_id) REFERENCES weapons (weapon_id),
	CONSTRAINT fk_OPPONENT FOREIGN KEY (opponent_id) REFERENCES warriors (warrior_id),
	CONSTRAINT fk_OPP_WARRIOR FOREIGN KEY (opponent_weapon_id) REFERENCES weapons (weapon_id)
	);

INSERT INTO races(race_name) VALUES("Human");
INSERT INTO races(race_name) VALUES("Elf");
INSERT INTO races(race_name) VALUES("Dwarf");
INSERT INTO warriors(warrior_name, warrior_image_path, race_id) VALUES('Raiden','/ImagenesProjecto/Personajes/Raiden.png',1);
INSERT INTO warriors(warrior_name, warrior_image_path, race_id) VALUES('Mileena','/ImagenesProjecto/Personajes/Mileena.png',1); 
INSERT INTO warriors(warrior_name, warrior_image_path, race_id) VALUES('Vega','/ImagenesProjecto/Personajes/Vega.png',1);
INSERT INTO warriors(warrior_name, warrior_image_path, race_id) VALUES('Juri Han','/ImagenesProjecto/Personajes/Juri_Han.png',2); 
INSERT INTO warriors(warrior_name, warrior_image_path, race_id) VALUES('Baraka','/ImagenesProjecto/Personajes/Baraka.png',2); 
INSERT INTO warriors(warrior_name, warrior_image_path, race_id) VALUES('Sagat','/ImagenesProjecto/Personajes/Sagat.png',2); 
INSERT INTO warriors(warrior_name, warrior_image_path, race_id) VALUES('Mokap','/ImagenesProjecto/Personajes/Mokap.png',3); 
INSERT INTO warriors(warrior_name, warrior_image_path, race_id) VALUES('Briggs','/ImagenesProjecto/Personajes/Briggs.png',3); 
INSERT INTO warriors(warrior_name, warrior_image_path, race_id) VALUES('Cyrax','/ImagenesProjecto/Personajes/Cyrax.png',3);  
INSERT INTO weapons(weapon_name,weapon_image_path) VALUES('Dagger','/ImagenesProjecto/Armas/Dagger.jpg');
INSERT INTO weapons(weapon_name,weapon_image_path) VALUES('Sword','/ImagenesProjecto/Armas/Sword.jpg');
INSERT INTO weapons(weapon_name,weapon_image_path) VALUES('Hatchet','/ImagenesProjecto/Armas/Hatchet.jpg');
INSERT INTO weapons(weapon_name,weapon_image_path) VALUES('Double Swords','/ImagenesProjecto/Armas/Double_Swords.jpg');
INSERT INTO weapons(weapon_name,weapon_image_path) VALUES('Scimitar','/ImagenesProjecto/Armas/Scimitar.jpg');
INSERT INTO weapons(weapon_name,weapon_image_path) VALUES('Bow','/ImagenesProjecto/Armas/Arco.png');
INSERT INTO weapons(weapon_name,weapon_image_path) VALUES('Katana','/ImagenesProjecto/Armas/Katana.jpg');
INSERT INTO weapons(weapon_name,weapon_image_path) VALUES('Poniard','/ImagenesProjecto/Armas/Poniard.jpg');
INSERT INTO weapons(weapon_name,weapon_image_path) VALUES('Two Handed Hatchet','/ImagenesProjecto/Armas/Two_Handed_Axe.jpg');

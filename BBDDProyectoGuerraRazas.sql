drop database if exists warOfRaces;
CREATE DATABASE warOfRaces;
USE warOfRaces;

CREATE TABLE weapons (
	weapon_id INT PRIMARY KEY AUTO_INCREMENT,
	weapon_name VARCHAR(50),
	weapon_image_path VARCHAR(200),
	strength INT,
	speed INT,
	weapon_race VARCHAR(200)
	); 	

CREATE TABLE races (
	race_id INT PRIMARY KEY auto_increment,
    	race_name VARCHAR(50),
    	hp INT,
    	strength INT,
    	speed INT,
    	agility INT,
    	defense INT
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

CREATE TABLE ranking (
	ranking_id INT PRIMARY KEY AUTO_INCREMENT,
	player_id INT,
	total_points INT,
	warrior_id INT,
	CONSTRAINT fk_PLAYER_2 FOREIGN KEY (player_id) REFERENCES players (player_id)
	);

INSERT INTO races(race_name) VALUES("'Human'");
INSERT INTO races(race_name) VALUES("'Elf'");
INSERT INTO races(race_name) VALUES("'Dwarf'");
INSERT INTO warriors(warrior_name, warrior_image_path, race_id) VALUES('Raiden','ImagenesProjecto/Personajes/Raiden.png',1);
INSERT INTO warriors(warrior_name, warrior_image_path, race_id) VALUES('Mileena','ImagenesProjecto/Personajes/Mileena.png',1); 
INSERT INTO warriors(warrior_name, warrior_image_path, race_id) VALUES('Vega','ImagenesProjecto/Personajes/Vega.png',1);
INSERT INTO warriors(warrior_name, warrior_image_path, race_id) VALUES('Juri Han','ImagenesProjecto/Personajes/Juri_Han.png',2); 
INSERT INTO warriors(warrior_name, warrior_image_path, race_id) VALUES('Baraka','ImagenesProjecto/Personajes/Baraka.png',2); 
INSERT INTO warriors(warrior_name, warrior_image_path, race_id) VALUES('Sagat','ImagenesProjecto/Personajes/Sagat.png',2); 
INSERT INTO warriors(warrior_name, warrior_image_path, race_id) VALUES('Mokap','ImagenesProjecto/Personajes/Mokap.png',3); 
INSERT INTO warriors(warrior_name, warrior_image_path, race_id) VALUES('Briggs','ImagenesProjecto/Personajes/Briggs.png',3); 
INSERT INTO warriors(warrior_name, warrior_image_path, race_id) VALUES('Cyrax','ImagenesProjecto/Personajes/Cyrax.png',3);
  
INSERT INTO weapons(weapon_name,weapon_image_path,strength,speed,weapon_race) VALUES('Dagger','ImagenesProjecto/Armas/Dagger.jpg',0,3,'Human,Elf');
INSERT INTO weapons(weapon_name,weapon_image_path,strength,speed,weapon_race) VALUES('Sword','ImagenesProjecto/Armas/Sword.jpg',1,1,'Human,Elf,Dwarf');
INSERT INTO weapons(weapon_name,weapon_image_path,strength,speed,weapon_race) VALUES('Hatchet','ImagenesProjecto/Armas/Hatchet.jpg',3,0,'Human,Dwarf');
INSERT INTO weapons(weapon_name,weapon_image_path,strength,speed,weapon_race) VALUES('Double Swords','ImagenesProjecto/Armas/Double_Swords.jpg',2,2,'Human,Elf');
INSERT INTO weapons(weapon_name,weapon_image_path,strength,speed,weapon_race) VALUES('Scimitar','ImagenesProjecto/Armas/Scimitar.jpg',1,2,'Human,Elf');
INSERT INTO weapons(weapon_name,weapon_image_path,strength,speed,weapon_race) VALUES('Bow','ImagenesProjecto/Armas/Arco.png',1,5,'Elf');
INSERT INTO weapons(weapon_name,weapon_image_path,strength,speed,weapon_race) VALUES('Katana','ImagenesProjecto/Armas/Katana.jpg',2,3,'Human');
INSERT INTO weapons(weapon_name,weapon_image_path,strength,speed,weapon_race) VALUES('Poniard','ImagenesProjecto/Armas/Poniard.jpg',0,4,'Human,Elf,Dwarf');
INSERT INTO weapons(weapon_name,weapon_image_path,strength,speed,weapon_race) VALUES('Two Handed Hatchet','ImagenesProjecto/Armas/Two_Handed_Axe.jpg',5,0,'Dwarf');

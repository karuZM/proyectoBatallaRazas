CREATE DATABASE guerraRazas;
USE guerraRazas;

CREATE OR REPLACE TABLE weapons (
	weapon_id NUMBER PRIMARY KEY AUTO_INCREMENT,
	weapon_name VARCHAR2(50),
	weapon_image_path VARCHAR2(200)
	); 
	
CREATE OR REPLACE TABLE warriors (
	warrior_id NUMBER PRIMARY KEY AUTO_INCREMENT,
	warrior_name VARCHAR2(50),
	warrior_image_path VARHCAR2(200)
	);
	
CREATE OR REPLACE TABLE players (
	player_id NUMBER PRIMARY KEY AUTO_INCREMENT,
	player_name VARCHAR2(50)
	);
	
CREATE OR REPLACE TABLE weapons_available (
	warrior_id NUMBER,
	weapon_id NUMBER,
	CONSTRAINT fk_WARRIOR FOREIGN KEY (warrior_id) REFERENCES warriors (warrior_id),
	CONSTRAINT fk_WEAPON FOREIGN KEY (weapon_id) REFERENCES weapons (weapon_id)
	);
	
CREATE OR REPLACE TABLE battle (
	battle_id NUMBER PRIMARY KEY AUTO_INCREMENT,
	player_id NUMBER,
	warrior_id NUMBER,
	warrior_weapon_id NUMBER,
	opponent_id NUMBER,
	opponent_weapon_id NUMBER,
	injuries_caused NUMBER,
	injuries_suffered NUMBER,
	battle_points NUMBER,
	CONSTRAINT fk_PLAYER FOREIGN KEY (player_id) REFERENCES players (player_id),
	CONSTRAINT fk_WARRIOR FOREIGN KEY (warrior_id) REFERENCES warriors (warrior_id),
	CONSTRAINT fk_WEAPON FOREIGN KEY (warrior_weapon_id) REFERENCES weapons (weapon_id),
	CONSTRAINT fk_OPPONENT FOREIGN KEY (opponent_id) REFERENCES warriors (warrior_id),
	CONSTRAINT fk_OPP_WARRIOR FOREIGN KEY (opponent_weapon_id) REFERENCES weapons (weapon_id)
	);
	
INSERT INTO warriors(warrior_name, warrior_image_path) VALUES('Raiden','/ImagenesProjecto/Personajes/Raiden.png');
INSERT INTO warriors(warrior_name, warrior_image_path) VALUES('Mileena','/ImagenesProjecto/Personajes/Mileena.png'); 
INSERT INTO warriors(warrior_name, warrior_image_path) VALUES('Vega','/ImagenesProjecto/Personajes/Vega.png');
INSERT INTO warriors(warrior_name, warrior_image_path) VALUES('Juri Han','/ImagenesProjecto/Personajes/Juri_Han.png'); 
INSERT INTO warriors(warrior_name, warrior_image_path) VALUES('Baraka','/ImagenesProjecto/Personajes/Baraka.png'); 
INSERT INTO warriors(warrior_name, warrior_image_path) VALUES('Sagat','/ImagenesProjecto/Personajes/Sagat.png'); 
INSERT INTO warriors(warrior_name, warrior_image_path) VALUES('Mokap','/ImagenesProjecto/Personajes/Mokap.png'); 
INSERT INTO warriors(warrior_name, warrior_image_path) VALUES('Briggs','/ImagenesProjecto/Personajes/Briggs.png'); 
INSERT INTO warriors(warrior_name, warrior_image_path) VALUES('Cyrax','/ImagenesProjecto/Personajes/Cyrax.png');  
INSERT INTO weapons(weapon_name,weapon_image_path) VALUES('Dagger','/ImagenesProjecto/Armas/Dagger.jpg');
INSERT INTO weapons(weapon_name,weapon_image_path) VALUES('Sword','/ImagenesProjecto/Armas/Sword.jpg');
INSERT INTO weapons(weapon_name,weapon_image_path) VALUES('Hatchet','/ImagenesProjecto/Armas/Hatchet.jpg');
INSERT INTO weapons(weapon_name,weapon_image_path) VALUES('Double Swords','/ImagenesProjecto/Armas/Double_Swords.jpg');
INSERT INTO weapons(weapon_name,weapon_image_path) VALUES('Scimitar','/ImagenesProjecto/Armas/Scimitar.jpg');
INSERT INTO weapons(weapon_name,weapon_image_path) VALUES('Bow','/ImagenesProjecto/Armas/Arco.png');
INSERT INTO weapons(weapon_name,weapon_image_path) VALUES('Katana','/ImagenesProjecto/Armas/Katana.jpg');
INSERT INTO weapons(weapon_name,weapon_image_path) VALUES('Poniard','/ImagenesProjecto/Armas/Poniard.jpg');
INSERT INTO weapons(weapon_name,weapon_image_path) VALUES('Two Handed Hatchet','/ImagenesProjecto/Armas/Two_Handed_Axe.jpg');

INSERT INTO players (nick,email,password) VALUES ("kacper","kacper1@gmail.com","haslo123");
INSERT INTO players (nick,email,password) VALUES ("Jan","jan123@gmail.com","jan123");
INSERT INTO players (nick,email,password) VALUES ("adam","adam1223@gmail.com","adam1223");
INSERT INTO resources (name,description) VALUES ("drewno","surowiec");
INSERT INTO resources (name,description) VALUES ("glina","surowiec");
INSERT INTO resources (name,description) VALUES ("żelazo","surowiec");
INSERT INTO buildings (name) VALUES ("dół z glinu");
INSERT INTO buildings (name) VALUES ("chata drwala");
INSERT INTO buildings (name) VALUES ("kowal");
INSERT INTO troops (name,description,damage,distance_damage,defense) VALUES ("łucznik","STRZELA","20","200","15");
INSERT INTO troops (name,description,damage,distance_damage,defense) VALUES ("miecznik","walczy wręcz","10","20","30");
INSERT INTO troops (name,description,damage,distance_damage,defense) VALUES ("kusznik","STRZELA","40","250","15");
INSERT INTO troops (name,description,damage,distance_damage,defense) VALUES ("rycerz","walczy wręcz","40","20","55");
INSERT INTO villages (name,players_id) VALUES ("wioska12","2");
INSERT INTO villages (name,players_id) VALUES ("wioska13","3");
INSERT INTO villages (name,players_id) VALUES ("wioska11","1");

SELECT resources.name,villages_has_resources.value FROM `players`
JOIN villages ON players.id=villages.players_id
JOIN villages_has_resources ON villages.id=villages_has_resources.Villages_id
JOIN resources ON resources.id=villages_has_resources.resources_id;

SELECT players.email,players.password FROM players WHERE players.email="kacper1@gmail.com" AND players.password="haslo123";

SELECT troops.name FROM players
JOIN villages ON players.id=Villages.players_id
JOIN troops_has_villages ON troops_has_villages.Villages_id=Villages.id
JOIN troops on troops.id=troops_has_villages.troops_id
WHERE players.id="1";
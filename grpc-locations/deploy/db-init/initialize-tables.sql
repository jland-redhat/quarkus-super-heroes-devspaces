DROP TABLE IF EXISTS locations;

CREATE TABLE locations (
	id bigint NOT NULL AUTO_INCREMENT,
	description VARCHAR(5000),
	name VARCHAR(50) NOT NULL,
	picture VARCHAR(255),
	type ENUM ('CITY','PLANET', 'PLACE', 'ISLAND', 'COUNTRY', 'MOON') NOT NULL,
	PRIMARY KEY (id)
) engine=InnoDB;

ALTER TABLE locations ADD CONSTRAINT UK_name UNIQUE (name);

INSERT INTO locations(id, name, description, picture, type)
VALUES ((SELECT auto_increment FROM information_schema.TABLES WHERE TABLE_NAME = 'locations'), 'Gotham City', 'An American city rife with corruption and crime, the home of its iconic protector Batman.', 'https://raw.githubusercontent.com/quarkusio/quarkus-super-heroes/characterdata/images/locations/gotham_city.jpg', 'CITY');
INSERT INTO locations(id, name, description, picture, type)
VALUES ((SELECT auto_increment FROM information_schema.TABLES WHERE TABLE_NAME = 'locations'), 'Earth', 'Earth, our home planet, is the only place we know of so far that is inhabited by living things.', 'https://raw.githubusercontent.com/quarkusio/quarkus-super-heroes/characterdata/images/locations/earth.jpg', 'PLANET');
INSERT INTO locations(id, name, description, picture, type)
VALUES ((SELECT auto_increment FROM information_schema.TABLES WHERE TABLE_NAME = 'locations'), 'Krypton', 'An ancient world, Krypton was home to advanced civilization known as Kryptonians. In one reality they possessed superhuman strength among other abilities far beyond those of Earth humans. In the majority of realities, these powers would not appear unless the Kryptonian was offworld or under the light of an alien sun.', 'https://raw.githubusercontent.com/quarkusio/quarkus-super-heroes/characterdata/images/locations/krypton.jpg', 'PLANET');
INSERT INTO locations(id, name, description, picture, type)
VALUES ((SELECT auto_increment FROM information_schema.TABLES WHERE TABLE_NAME = 'locations'), 'Metropolis', 'Metropolis is depicted as being one of the largest and wealthiest cities in the world, having a population of 11 million citizens. In addition to Superman, the city has also been home to other superheroes, such as Booster Gold and Black Lightning.', 'https://raw.githubusercontent.com/quarkusio/quarkus-super-heroes/characterdata/images/locations/metropolis.jpg', 'CITY');
INSERT INTO locations(id, name, description, picture, type)
VALUES ((SELECT auto_increment FROM information_schema.TABLES WHERE TABLE_NAME = 'locations'), 'Alkali Lake', 'Alkali Lake is the location where the secret Weapon X facility run by Colonel Striker was located. Under the lake is a hidden and top secret facility where experiments were done to create Weapon X, and by extention Wolverine.', 'https://raw.githubusercontent.com/quarkusio/quarkus-super-heroes/characterdata/images/locations/Alkali_Lake.jpg', 'PLACE');
INSERT INTO locations(id, name, description, picture, type)
VALUES ((SELECT auto_increment FROM information_schema.TABLES WHERE TABLE_NAME = 'locations'), 'Asgard', 'One of the nine realms that serve as home of the Norse god superheros. A realm that resembles a grand, celestial city, Asgard is a place of towering golden spires, grand halls, and mythical landscapes.', 'https://raw.githubusercontent.com/quarkusio/quarkus-super-heroes/characterdata/images/locations/Asgard.jpg', 'PLACE');
INSERT INTO locations(id, name, description, picture, type)
VALUES ((SELECT auto_increment FROM information_schema.TABLES WHERE TABLE_NAME = 'locations'), 'The Savage Land', 'Located in Antarctica, it is a hidden prehistoric jungle inhabited by dinosaurs and primitive tribes. The Savage Land is a tropical oasis in the frozen continent, thanks to advanced technology and a mysterious energy source. It often serves as a setting for X-Men adventures due to its unique and dangerous environment.', 'https://raw.githubusercontent.com/quarkusio/quarkus-super-heroes/characterdata/images/locations/Savage_Land.jpg', 'PLACE');
INSERT INTO locations(id, name, description, picture, type)
VALUES ((SELECT auto_increment FROM information_schema.TABLES WHERE TABLE_NAME = 'locations'), 'Sakaar', 'A world located in a distant galaxy. Sakaar is a harsh and violent planet characterized by its constant conflict and divided society. It serves as the primary setting for the storyline, where the Hulk becomes a gladiator and eventually leads a rebellion against the oppressive rule of the Red King.', 'https://raw.githubusercontent.com/quarkusio/quarkus-super-heroes/characterdata/images/locations/Sakaar.jpg', 'PLANET');
INSERT INTO locations(id, name, description, picture, type)
VALUES ((SELECT auto_increment FROM information_schema.TABLES WHERE TABLE_NAME = 'locations'), 'The Death Star', 'The Death Star was the Empire''s ultimate weapon: a moon-sized space station with the ability to destroy an entire planet. But the Emperor and Imperial officers like Grand Moff Tarkin underestimated the tenacity of the Rebel Alliance, who refused to bow to this technological terror.', 'https://raw.githubusercontent.com/quarkusio/quarkus-super-heroes/characterdata/images/locations/Death_Star.png', 'PLACE');
INSERT INTO locations(id, name, description, picture, type)
VALUES ((SELECT auto_increment FROM information_schema.TABLES WHERE TABLE_NAME = 'locations'), 'Fortress of Solitude', 'The Fortress of Solitude is Clark Kent''s sanctuary in the Arctic, which holds information about his dead planet Krypton and allows him to communicate with the A.I.''s of his late ancestors. Clark began using the Fortress much more after becoming Superman. Becoming his occasional headquarters as Superman.', 'https://raw.githubusercontent.com/quarkusio/quarkus-super-heroes/characterdata/images/locations/Fortress_of_Solitude.jpg', 'PLACE');
INSERT INTO locations(id, name, description, picture, type)
VALUES ((SELECT auto_increment FROM information_schema.TABLES WHERE TABLE_NAME = 'locations'), 'Atlantis', 'An ancient underwater city, home to the Atlanteans. Ruled by King Arthur Curry, also known as Aquaman, Atlantis is a place of advanced technology and magic. The city is a beacon of hope for its inhabitants and is constantly under threat from both surface dwellers and internal strife.', 'https://raw.githubusercontent.com/quarkusio/quarkus-super-heroes/characterdata/images/locations/Atlantis.jpg', 'CITY');
INSERT INTO locations(id, name, description, picture, type)
VALUES ((SELECT auto_increment FROM information_schema.TABLES WHERE TABLE_NAME = 'locations'), 'Genosha', 'An island nation located off the east coast of Africa. Genosha was once a place of oppression for mutants, but after a revolution, it became a haven for the mutant population. However, its history is marred by conflict and tragedy.', 'https://raw.githubusercontent.com/quarkusio/quarkus-super-heroes/characterdata/images/locations/Genosha.jpg', 'ISLAND');

DROP TABLE IF EXISTS speaker_tbl;
DROP TABLE IF EXISTS meetup_tbl;

CREATE TABLE speaker_tbl (
  speaker_id SERIAL PRIMARY KEY,
  speaker_name VARCHAR(255) NOT null,
  speaker_email VARCHAR(255) NOT NULL
);

CREATE TABLE meetup_tbl (
  meetup_id SERIAL PRIMARY KEY,
  meetup_title VARCHAR(255) NOT NULL,
  meetup_description VARCHAR(1024) NOT NULL,
  speaker_id INTEGER
);

INSERT INTO speaker_tbl (speaker_name, speaker_email)
VALUES
	('Benjamin Luedicke', 'benjamin.luedicke@codecentric.de'),
	('Roger Butenuth', 'roger.butenuth@codecentric.de'),
	('Pasquale Brunelli', 'pasquale.brunelli@codecentric.de');

INSERT INTO meetup_tbl (meetup_title, meetup_description, speaker_id)
VALUES
	('Datenbanken testen mit Testcontainers', 'Testen mit Mocks ist schön und gut, aber funktioniert ein SQL-Statement wirklich mit der Datenbank, die wir im echten Leben einsetzen? Das weiß man erst, wenn man auch damit testet. Genau das wird mit Hilfe von Testcontainers möglich. Benjamin wird live zeigen, wie es funktioniert.', 1),
	('Kleine Helferlein für Schleifen', 'Mule bietet serienmäßig ein paar Schleifenkonstrukte, sowohl im Flow als auch in DataWeave. Bestimmte Dinge wie eine While-Schleife fehlen jedoch. Ebenso ist es schwierig, eine payload in einer Schleife zusammen zu bauen. Und wenn man es schafft, macht einem der Heap gerne Probleme. Roger wird live zeigen, wie man dies mit seinem loop-module erledigen kann.', 2),
	('Neuigkeiten in Mule 4.5', 'Was gibts neues in Mule 4.5 und lohnt sich ein Update?', null);

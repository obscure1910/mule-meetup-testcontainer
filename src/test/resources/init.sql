CREATE TABLE IF NOT EXISTS speaker_tbl (
  speaker_id SERIAL PRIMARY KEY,
  speaker_name VARCHAR(255) NOT null,
  speaker_email VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS meetup_tbl (
  meetup_id SERIAL PRIMARY KEY,
  meetup_title VARCHAR(255) NOT NULL,
  meetup_description VARCHAR(1024) NOT NULL,
  speaker_id INTEGER
);

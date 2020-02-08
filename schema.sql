CREATE TABLE manufactures (
  id SERIAL NOT NULL PRIMARY KEY,
  name TEXT NOT NULL,
  url TEXT,
  octopart_uid CHAR(16)
);

CREATE TABLE parts (
    id SERIAL NOT NULL PRIMARY KEY,
    mpn TEXT NOT NULL,
    manufacture_id INTEGER NOT NULL REFERENCES manufactures(id),
    octopart_uid char(16)
);

CREATE TABLE descriptions (
    id SERIAL NOT NULL PRIMARY KEY,
    description TEXT NOT NULL,
    source TEXT,
    octopart_uid CHAR(16)
);



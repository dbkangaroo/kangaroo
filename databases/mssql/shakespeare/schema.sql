CREATE TABLE work
  ( workID    VARCHAR(32) PRIMARY KEY,
    title     VARCHAR(32) NOT NULL,
    longTitle VARCHAR(64) NOT NULL,
    year      INTEGER NOT NULL,
    genreType VARCHAR(1) NOT NULL,
    notes     TEXT,
    source    VARCHAR(16) NOT NULL,
    totalWords      INTEGER NOT NULL,
    totalParagraphs INTEGER NOT NULL
  );

CREATE TABLE character
  ( charID      VARCHAR(32) PRIMARY KEY,
    charName    VARCHAR(64) NOT NULL,
    abbrev      VARCHAR(32),
    works       VARCHAR(256) NOT NULL,
    description VARCHAR(2056),
    speechCount INTEGER NOT NULL
  );

CREATE TABLE character_work
  ( charID     VARCHAR(32) NOT NULL REFERENCES character (charID),
    workID     VARCHAR(32) NOT NULL REFERENCES work (workID),
    PRIMARY KEY (charID, workID)
  );

ALTER TABLE character DROP COLUMN works;

CREATE TABLE chapter
  ( workID         VARCHAR(32) NOT NULL REFERENCES work (workID),
    chapterID      INTEGER PRIMARY KEY,
    section        INTEGER NOT NULL,
    chapter        INTEGER NOT NULL,
    description    VARCHAR(256) NOT NULL
  );

CREATE TABLE paragraph
  ( workID         VARCHAR(32) NOT NULL REFERENCES work (workID), paragraphID    INTEGER PRIMARY KEY NOT NULL,
    paragraphNum   INTEGER NOT NULL,
    charID         VARCHAR(32) NOT NULL REFERENCES character (charID),
    plainText      TEXT NOT NULL,
    phoneticText   TEXT NOT NULL,
    stemText       TEXT NOT NULL,
    paragraphType  VARCHAR(1) NOT NULL,
    section        INTEGER NOT NULL,
    chapter        INTEGER NOT NULL,
    charCount      INTEGER NOT NULL,
    wordCount      INTEGER NOT NULL
  );

CREATE TABLE wordform
  ( wordFormID     INTEGER PRIMARY KEY,
    plainText      VARCHAR(64) NOT NULL,
    phoneticText   VARCHAR(64) NOT NULL,
    stemText       VARCHAR(64) NOT NULL,
    occurences     INTEGER NOT NULL
  );


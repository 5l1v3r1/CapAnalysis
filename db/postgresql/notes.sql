--
-- Tabella notes 
--
CREATE TABLE IF NOT EXISTS notes (
  id SERIAL NOT NULL PRIMARY KEY,
  user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE,
  dataset_id INTEGER NOT NULL REFERENCES datasets(id) ON DELETE CASCADE ON UPDATE CASCADE,
  capfile_id INTEGER NOT NULL REFERENCES capfiles(id) ON DELETE CASCADE ON UPDATE CASCADE,
  itemid INTEGER NOT NULL,
  at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  body TEXT
);

ALTER TABLE notes OWNER TO capana;
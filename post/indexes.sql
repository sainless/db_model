CREATE UNIQUE INDEX idx_post ON posts(author);
CREATE INDEX idx_comments ON comments(author);


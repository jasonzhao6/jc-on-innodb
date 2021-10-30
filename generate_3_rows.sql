CREATE TABLE t_btree (
  i INT NOT NULL,
  s CHAR(10) NOT NULL,
  PRIMARY KEY(i)
) ENGINE=InnoDB;

INSERT INTO t_btree (i, s)
  VALUES (0, "A"), (1, "B"), (2, "C");

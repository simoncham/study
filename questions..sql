--// Preparation sample scripts for sqlserver. 
--// CONSTRAINTs of objets not defined.
CREATE TABLE boms (
  parent_code varchar(20) NOT NULL,
  item_code varchar(20) NOT NULL,
  usage numeric(18,2) NOT NULL
);

CREATE TABLE items (
  item_code varchar(20) NOT NULL,
  uom varchar(10) NOT NULL,
  mat_cost numeric(18,2) NULL
);

INSERT INTO boms (parent_code, item_code, usage) values ('M',	'X1',	1);
INSERT INTO boms (parent_code, item_code, usage) values ('M',	'X2',	2);
INSERT INTO boms (parent_code, item_code, usage) values ('B',	'M',	4);
INSERT INTO boms (parent_code, item_code, usage) values ('A',	'B',	2);
INSERT INTO boms (parent_code, item_code, usage) values ('A',	'M',	1);
INSERT INTO boms (parent_code, item_code, usage) values ('A',	'X2',	2);

INSERT INTO items(item_code, uom, mat_cost) values ('A',	'PCS'	 NULL);
INSERT INTO items(item_code, uom, mat_cost) values ('B',	'PCS'	NULL);
INSERT INTO items(item_code, uom, mat_cost) values ('M',	'PCS'	NULL);
INSERT INTO items(item_code, uom, mat_cost) values ('X1',	'PCS',	3.2);
INSERT INTO items(item_code, uom, mat_cost) values ('X2',	'M',	6);

--// Preparation sample scripts for sqlite. 
--// CONSTRAINTs of objets not defined.
CREATE TABLE boms (
  parent_code CHAR NOT NULL,
  item_code CHAR NOT NULL,
  usage NUMERIC NOT NULL
);

CREATE TABLE items (
  item_code CHAR NOT NULL,
  uom CHAR NOT NULL,
  mat_cost NUMERIC NULL
);

INSERT INTO boms (parent_code, item_code, usage) values 
  ('M',	'X1',	1),
  ('M',	'X2',	2),
  ('B',	'M',	4),
  ('A',	'B',	2),
  ('A',	'M',	1),
  ('A',	'X2',	2);

INSERT INTO items(item_code, uom, mat_cost) values 
  ('A',	'PCS'	 NULL),
  ('B',	'PCS'	NULL),
  ('M',	'PCS'	NULL),
  ('X1',	'PCS',	3.2),
  ('X2',	'M',	6);

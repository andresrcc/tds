--
-- Predicados Difusos en PostgreSQLf
--

CREATE FUZZY PREDICATE alto ON 1 .. 5 AS (3,4,5,6);
CREATE FUZZY PREDICATE mediano ON 1 .. 5 AS (2,3,4,5);
CREATE FUZZY PREDICATE bajo ON 1 .. 5 AS (0,1,2,3);

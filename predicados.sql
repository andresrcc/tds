--
-- Predicados Difusos en PostgreSQLf
--

CREATE FUZZY PREDICATE altomu ON 1 .. 5 AS (3,4,5,6);  
CREATE FUZZY PREDICATE mediomu ON 1 .. 5 AS (2,3,3,5);
CREATE FUZZY PREDICATE bajomu ON 1 .. 5 AS (0,1,2,4);


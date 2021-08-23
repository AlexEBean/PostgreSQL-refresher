--1
SELECT * FROM data_src
WHERE journal = 'Food Chemistry';

--2
SELECT * FROM nutr_def
WHERE nutrdesc = 'Retinol';

--3
SELECT * FROM food_des
WHERE manufacname = 'Kellogg, Co.';

--4
SELECT COUNT(*) FROM data_src
WHERE year > 2000;

--5
SELECT COUNT(*) FROM food_des
WHERE fat_factor < 4;

--6
SELECT * FROM weight
WHERE gm_wgt = 190;

--7
SELECT COUNT(*)
FROM food_des
WHERE pro_factor > 1.5 AND fat_factor < 5;

--8
SELECT * FROM data_src
WHERE year = 1990 AND journal = 'Cereal Foods World';

--9
SELECT COUNT(*) FROM weight
WHERE gm_wgt > 150 AND gm_wgt < 200;

-- Also works
-- SELECT COUNT COUNT(*) FROM weight
-- WHERE gm_wgt BETWEEN 150 AND 200;

--10
SELECT *
FROM nutr_def
WHERE units = 'kj' OR units = 'kcal';

--11
SELECT * FROM data_src
WHERE year = 2000 OR journal = 'Food Chemistry';

--12
-- lookup the fdgrp_cd for Breakfast Cereals
SELECT fdgrp_cd FROM fd_group
WHERE fddrp_desc = 'Breakfast Cereals';
-- find the count
SELECT COUNT(*) FROM food_des
WHERE NOT fdgrp_cd = '0800';

-- SELECT COUNT(*) FROM food_des
-- WHERE NOT fdgrp_cd = (SELECT fdgrp_cd FROM fd_group
-- 						WHERE fddrp_desc = 'Breakfast Cereals');

--13
SELECT * FROM data_src
WHERE (year >= 1990 AND year <=2000) AND
-- WHERE year BETWEEN 1990 AND 2000 AND
	(journal = 'J. Food Protection' OR Journal='Food Chemistry');

-- SELECT * FROM data_src
-- WHERE year BETWEEN 1990 AND 2000 AND
-- 	(journal = 'J. Food Protection' OR Journal='Food Chemistry');

--14
SELECT COUNT(*)
FROM weight
WHERE gm_wgt BETWEEN 50 AND 75;

--15
SELECT * FROM data_src
WHERE year IN (1960, 1970, 1980, 1990, 2000);

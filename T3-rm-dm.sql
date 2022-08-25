--****PLEASE ENTER YOUR DETAILS BELOW****
--T3-rm-dm.sql

--Student ID: 32024975
--Student Name: Soh En Ming
--Unit Code: FIT2094
--Applied Class No: 5

/* Comments for your marker:




*/

--3(a)
DROP SEQUENCE competitor_seq;
CREATE SEQUENCE competitor_seq START WITH 100 INCREMENT BY 1;

DROP SEQUENCE team_seq;
CREATE SEQUENCE team_seq START WITH 100 INCREMENT BY 1;

--3(b)
INSERT INTO entry VALUES((SELECT event_id FROM event
WHERE carn_date = (SELECT carn_date FROM carnival WHERE carn_name = 'RM Autumn Series Caulfield 2022')
AND eventtype_code = (SELECT eventtype_code FROM eventtype WHERE eventtype_desc = '21.1 Km Half Marathon')),
(SELECT entry_no FROM entry WHERE comp_no = (SELECT comp_no FROM competitor 
WHERE ec_phone = '0476541234' AND comp_fname = 'Annabelle') AND event_id = (SELECT event_id FROM event
WHERE carn_date = (SELECT carn_date FROM carnival WHERE carn_name = 'RM Autumn Series Caulfield 2022')
AND eventtype_code = (SELECT eventtype_code FROM eventtype WHERE eventtype_desc = '21.1 Km Half Marathon'))),
null, null, (SELECT comp_no FROM competitor WHERE ec_phone = '0476541234' AND comp_fname = 'Annabelle'),
null, (SELECT char_id FROM charity WHERE char_name = 'Amnesty International'));

INSERT INTO entry VALUES((SELECT event_id FROM event
WHERE carn_date = (SELECT carn_date FROM carnival WHERE carn_name = 'RM Autumn Series Caulfield 2022')
AND eventtype_code = (SELECT eventtype_code FROM eventtype WHERE eventtype_desc = '21.1 Km Half Marathon')),
(SELECT entry_no FROM entry WHERE comp_no = (SELECT comp_no FROM competitor 
WHERE ec_phone = '0476541234' AND comp_fname = 'Daniel') AND event_id = (SELECT event_id FROM event
WHERE carn_date = (SELECT carn_date FROM carnival WHERE carn_name = 'RM Autumn Series Caulfield 2022')
AND eventtype_code = (SELECT eventtype_code FROM eventtype WHERE eventtype_desc = '21.1 Km Half Marathon'))),
null, null, (SELECT comp_no FROM competitor WHERE ec_phone = '0476541234' AND comp_fname = 'Daniel'),
null, (SELECT char_id FROM charity WHERE char_name = 'Beyond Blue'));

COMMIT;

--3(c)
INSERT INTO team VALUES (team_seq.nextval, 'Kai Speedstars',
(SELECT carn_date FROM carnival WHERE carn_name = 'RM Autumn Series Caulfield 2022'), 1,
(SELECT event_id FROM event where carn_date = (SELECT carn_date FROM carnival WHERE carn_name = 'RM Autumn Series Caulfield 2022')
AND eventtype_code = (SELECT eventtype_code FROM eventtype WHERE eventtype_desc = '21.1 Km Half Marathon')),
(SELECT entry_no FROM entry WHERE comp_no = (SELECT comp_no FROM competitor WHERE
ec_phone = '0476541234' AND comp_fname = 'Annabelle') AND event_id = (SELECT event_id FROM event WHERE carn_date = (SELECT carn_date 
FROM carnival WHERE carn_name = 'RM Autumn Series Caulfield 2022')
AND eventtype_code = (SELECT eventtype_code FROM eventtype WHERE eventtype_desc = '21.1 Km Half Marathon'))),
(SELECT char_id FROM charity WHERE char_name = 'Beyond Blue'));

UPDATE entry
SET team_id = (SELECT team_id FROM team WHERE team_name = 'Kai Speedstars')
WHERE comp_no = (SELECT comp_no FROM competitor WHERE ec_phone = '0476541234' AND comp_fname = 'Annabelle') AND
event_id = (SELECT event_id FROM event WHERE carn_date = (SELECT carn_date 
FROM carnival WHERE carn_name = 'RM Autumn Series Caulfield 2022')
AND eventtype_code = (SELECT eventtype_code FROM eventtype WHERE eventtype_desc = '21.1 Km Half Marathon'));

COMMIT;

--3(d)
UPDATE entry
SET event_id = (SELECT event_id FROM event WHERE eventtype_code = 
(SELECT eventtype_code FROM eventtype WHERE eventtype_desc = '10 Km Run'))
WHERE comp_no = (SELECT comp_no FROM competitor WHERE ec_phone = '0476541234' 
AND comp_fname = 'Daniel');

UPDATE team
SET team_no_members = 2
WHERE team_name = 'Kai Speedstars' AND carn_date = 
(SELECT carn_date FROM carnival WHERE carn_name = 'RM Autumn Series Caulfield 2022');

UPDATE entry
SET team_id = (SELECT team_id FROM team WHERE team_name = 'Kai Speedstars')
WHERE comp_no = (SELECT comp_no FROM competitor WHERE ec_phone = '0476541234' AND comp_fname = 'Daniel') AND
event_id = (SELECT event_id FROM event WHERE carn_date = (SELECT carn_date 
FROM carnival WHERE carn_name = 'RM Autumn Series Caulfield 2022')
AND eventtype_code = (SELECT eventtype_code FROM eventtype WHERE eventtype_desc = '21.1 Km Half Marathon'));

COMMIT;

--3(e)
UPDATE entry
SET team_id = NULL
WHERE comp_no = (SELECT comp_no FROM competitor WHERE ec_phone = '0476541234' AND comp_fname = 'Daniel') AND
event_id = (SELECT event_id FROM event WHERE carn_date = (SELECT carn_date 
FROM carnival WHERE carn_name = 'RM Autumn Series Caulfield 2022')
AND eventtype_code = (SELECT eventtype_code FROM eventtype WHERE eventtype_desc = '21.1 Km Half Marathon'));

UPDATE entry
SET team_id = NULL
WHERE comp_no = (SELECT comp_no FROM competitor WHERE ec_phone = '0476541234' AND comp_fname = 'Annabelle') AND
event_id = (SELECT event_id FROM event WHERE carn_date = (SELECT carn_date
FROM carnival WHERE carn_name = 'RM Autumn Series Caulfield 2022')
AND eventtype_code = (SELECT eventtype_code FROM eventtype WHERE eventtype_desc = '21.1 Km Half Marathon'));

DELETE FROM team WHERE team_name = 'Kai Speedstars';

DELETE FROM entry WHERE comp_no = (SELECT comp_no FROM competitor 
WHERE ec_phone = '0476541234' AND comp_fname = 'Daniel') AND
event_id = (SELECT event_id FROM event WHERE carn_date = (SELECT carn_date 
FROM carnival WHERE carn_name = 'RM Autumn Series Caulfield 2022')
AND eventtype_code = (SELECT eventtype_code FROM eventtype WHERE eventtype_desc = '21.1 Km Half Marathon'));

COMMIT;






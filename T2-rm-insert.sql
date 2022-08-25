--****PLEASE ENTER YOUR DETAILS BELOW****
--T2-rm-insert.sql

--Student ID:32024975
--Student Name:Soh En Ming
--Unit Code: FIT2094
--Applied Class No: 5

/* Comments for your marker:




*/

-- Task 2 Load the EMERCONTACT, COMPETITOR, ENTRY and TEAM tables with your own
-- test data following the data requirements expressed in the brief

-- =======================================
-- EMERCONTACT
-- =======================================
INSERT INTO emercontact VALUES (
    '0102672888',
    'Robert',
    'Gorden'
);

INSERT INTO emercontact VALUES (
    '0122141688',
    'Gayle',
    'Dandy'
);

INSERT INTO emercontact VALUES (
    '0133141988',
    'Richard',
    'Brown'
);

INSERT INTO emercontact VALUES (
    '0172576388',
    'Sundi',
    'Pravash'
);

INSERT INTO emercontact VALUES (
    '0162228888',
    'Jarvis',
    'Maso'
);

INSERT INTO emercontact VALUES (
    '0186467430',
    'Zhong',
    'Soo'
);

INSERT INTO emercontact VALUES (
    '0102222544',
    'Chris',
    'Pratt'
);

INSERT INTO emercontact VALUES (
    '0108802805',
    'David',
    'Lim'
);
-- =======================================
-- COMPETITOR
-- =======================================
-- 10 competitors who are monash student/staff
INSERT INTO competitor VALUES (
    1,
    'Rebecca',
    'Gorden',
    'F',
    TO_DATE('18/DEC/1985', 'DD/MON/YYYY'),
    'rebecca@gmail.com',
    'Y',
    '0142672888',
    'T',
    '0102672888'
);

INSERT INTO competitor VALUES (
    2,
    'Ronny',
    'Dandy',
    'M',
    TO_DATE('25/OCT/2000', 'DD/MON/YYYY'),
    'ronny@gmail.com',
    'Y',
    '0117559222',
    'P',
    '0122141688'
);

INSERT INTO competitor VALUES (
    3,
    'Jess',
    'Dandy',
    'F',
    TO_DATE('05/FEB/1998', 'DD/MON/YYYY'),
    'jess@gmail.com',
    'Y',
    '0157559222',
    'P',
    '0122141688'
);


INSERT INTO competitor VALUES (
    4,
    'Daniel',
    'Roddy',
    'M',
    TO_DATE('08/JAN/2001', 'DD/MON/YYYY'),
    'daniel@gmail.com',
    'Y',
    '0105555235',
    'F',
    '0133141988'
);

INSERT INTO competitor VALUES (
    5,
    'Ranjit',
    'Pravanah',
    'M',
    TO_DATE('17/JUN/1999', 'DD/MON/YYYY'),
    'ranjit@gmail.com',
    'Y',
    '0154447222',
    'G',
    '0172576388'
);

INSERT INTO competitor VALUES (
    6,
    'Savi',
    'Gobnah',
    'M',
    TO_DATE('21/AUG/1999', 'DD/MON/YYYY'),
    'savi@gmail.com',
    'Y',
    '0154447222',
    'G',
    '0172576388'
);

INSERT INTO competitor VALUES (
    7,
    'Gobar',
    'Uino',
    'F',
    TO_DATE('04/DEC/1998', 'DD/MON/YYYY'),
    'gobar@gmail.com',
    'Y',
    '0119883888',
    'G',
    '0172576388'
);

-- Under 18 the 3 below
INSERT INTO competitor VALUES (
    8,
    'Jarvy',
    'Maso',
    'M',
    TO_DATE('04/DEC/2006', 'DD/MON/YYYY'),
    'jarvy@gmail.com',
    'Y',
    '0136664440',
    'P',
    '0162228888'
);

INSERT INTO competitor VALUES (
    9,
    'Jennie',
    'Maso',
    'M',
    TO_DATE('13/JUL/2005', 'DD/MON/YYYY'),
    'jennie@gmail.com',
    'Y',
    '0136664441',
    'P',
    '0162228888'
);

INSERT INTO competitor VALUES (
    10,
    'Becky',
    'Maso',
    'M',
    TO_DATE('23/NOV/2007', 'DD/MON/YYYY'),
    'becky@gmail.com',
    'Y',
    '0136664442',
    'P',
    '0162228888'
);

-- 2 Competitors who are not in Monash student/staff
INSERT INTO competitor VALUES (
    11,
    'Xiao',
    'Hua',
    'M',
    TO_DATE('30/MAR/2002', 'DD/MON/YYYY'),
    'xiao@gmail.com',
    'N',
    '0182888388',
    'F',
    '0186467430'
);

INSERT INTO competitor VALUES (
    12,
    'Desmond',
    'Wong',
    'M',
    TO_DATE('11/FEB/2003', 'DD/MON/YYYY'),
    'desmond@gmail.com',
    'N',
    '0122888388',
    'F',
    '0186467430'
);

-- Rest to fill out the remaning entries left
INSERT INTO competitor VALUES (
    13,
    'Olivia',
    'Hardey',
    'F',
    TO_DATE('24/NOV/2000', 'DD/MON/YYYY'),
    'olivia@gmail.com',
    'N',
    '0198637645',
    'F',
    '0102222544'
);

INSERT INTO competitor VALUES (
    14,
    'Hendy',
    'Lim',
    'M',
    TO_DATE('26/OCT/2003', 'DD/MON/YYYY'),
    'hendy@gmail.com',
    'Y',
    '0123947563',
    'P',
    '0108802805'
);

INSERT INTO competitor VALUES (
    15,
    'Mao',
    'Wang',
    'U',
    TO_DATE('02/FEB/2005', 'DD/MON/YYYY'),
    'mao@gmail.com',
    'Y',
    '0166669345',
    'G',
    '0108802805'
);

-- =======================================
-- ENTRY & TEAM Combined together
-- =======================================

-- First event on 24/sep/2021 with team 1
INSERT INTO entry VALUES (1, 1, TO_DATE('10:00:00', 'HH24:MI:SS'), TO_DATE('13:00:00', 'HH24:MI:SS'), 4, null, null);
INSERT INTO entry VALUES (1, 2, TO_DATE('09:00:00', 'HH24:MI:SS'), TO_DATE('14:00:00', 'HH24:MI:SS'), 8, null, 1);

INSERT INTO team VALUES (1, 'Vagamind', TO_DATE('24/SEP/2021', 'DD/MON/YYYY'), 1, 1, 2, 1);

UPDATE entry
SET team_id = 1
WHERE entry_no = 2;

INSERT INTO entry VALUES (1, 3, TO_DATE('09:00:00', 'HH24:MI:SS'), TO_DATE('14:00:00', 'HH24:MI:SS'), 9, null, 1);

UPDATE team
SET team_no_members = 2
WHERE team_id = 1;

UPDATE entry
SET team_id = 1
WHERE entry_no = 3;

INSERT INTO entry VALUES (1, 4, TO_DATE('09:00:00', 'HH24:MI:SS'), TO_DATE('14:00:00', 'HH24:MI:SS'), 10, null, 1);

UPDATE team
SET team_no_members = 3
WHERE team_id = 1;

UPDATE entry
SET team_id = 1
WHERE entry_no = 4;

INSERT INTO entry VALUES (1, 5, TO_DATE('10:00:00', 'HH24:MI:SS'), TO_DATE('16:00:00', 'HH24:MI:SS'), 2, null, 3);

INSERT INTO team VALUES (2, 'Descendent', TO_DATE('24/SEP/2021', 'DD/MON/YYYY'), 1, 1, 5, 1);

UPDATE entry
SET team_id = 2
WHERE entry_no = 5;

INSERT INTO entry VALUES (1, 6, TO_DATE('10:00:00', 'HH24:MI:SS'), TO_DATE('16:00:00', 'HH24:MI:SS'), 3, null, 3);

UPDATE team
SET team_no_members = 2
WHERE team_id = 2;

UPDATE entry
SET team_id = 2
WHERE entry_no = 6;

-- Event 3 on 1/oct/2021
INSERT INTO entry VALUES (3, 7, TO_DATE('08:30:00', 'HH24:MI:SS'), TO_DATE('11:00:00', 'HH24:MI:SS'), 8, null, 2);

INSERT INTO team VALUES (3, 'Vagabond', TO_DATE('01/OCT/2021', 'DD/MON/YYYY'), 1, 3, 7, 2);

UPDATE entry
SET team_id = 3
WHERE entry_no = 7;

INSERT INTO entry VALUES (3, 8, TO_DATE('08:30:00', 'HH24:MI:SS'), TO_DATE('11:00:00', 'HH24:MI:SS'), 9, null, 2);

UPDATE team
SET team_no_members = 2
WHERE team_id = 3;

UPDATE entry
SET team_id = 3
WHERE entry_no = 8;

INSERT INTO entry VALUES (3, 9, TO_DATE('08:30:00', 'HH24:MI:SS'), TO_DATE('11:00:00', 'HH24:MI:SS'), 10, null, 2);

UPDATE team
SET team_no_members = 3
WHERE team_id = 3;

UPDATE entry
SET team_id = 3
WHERE entry_no = 9;

INSERT INTO entry VALUES (3, 10, TO_DATE('09:00:00', 'HH24:MI:SS'), TO_DATE('13:00:00', 'HH24:MI:SS'), 1, null, 4);

INSERT INTO team VALUES (4, 'Descendent', TO_DATE('01/OCT/2021', 'DD/MON/YYYY'), 1, 3, 10, 4);

UPDATE entry
SET team_id = 4
WHERE entry_no = 10;

INSERT INTO entry VALUES (3, 11, TO_DATE('09:00:00', 'HH24:MI:SS'), TO_DATE('12:30:00', 'HH24:MI:SS'), 2, null, 4);

UPDATE team
SET team_no_members = 2
WHERE team_id = 4;

UPDATE entry
SET team_id = 4
WHERE entry_no = 11;

INSERT INTO entry VALUES (3, 12, TO_DATE('09:00:00', 'HH24:MI:SS'), TO_DATE('12:30:00', 'HH24:MI:SS'), 3, null, 4);

UPDATE team
SET team_no_members = 3
WHERE team_id = 4;

UPDATE entry
SET team_id = 4
WHERE entry_no = 12;

-- Event 6 on 5 feb 2021 triple team from olivia
INSERT INTO entry VALUES (6, 13, TO_DATE('09:00:00', 'HH24:MI:SS'), TO_DATE('12:00:00', 'HH24:MI:SS'), 1, null, 4);
INSERT INTO entry VALUES (6, 14, TO_DATE('12:00:00', 'HH24:MI:SS'), TO_DATE('14:00:00', 'HH24:MI:SS'), 4, null, 1);

INSERT INTO entry VALUES (6, 15, TO_DATE('10:00:00', 'HH24:MI:SS'), TO_DATE('13:30:00', 'HH24:MI:SS'), 13, null, 3);

INSERT INTO team VALUES (5, 'Triple Threat', TO_DATE('05/FEB/2022', 'DD/MON/YYYY'), 1, 6, 15, 3);

UPDATE entry
SET team_id = 5
WHERE entry_no = 15;

INSERT INTO entry VALUES (6, 16, TO_DATE('10:00:00', 'HH24:MI:SS'), TO_DATE('13:30:00', 'HH24:MI:SS'), 14, null, 3);

UPDATE team
SET team_no_members = 2
WHERE team_id = 5;

UPDATE entry
SET team_id = 5
WHERE entry_no = 16;

INSERT INTO entry VALUES (6, 17, TO_DATE('10:00:00', 'HH24:MI:SS'), TO_DATE('13:30:00', 'HH24:MI:SS'), 15, null, 3);

UPDATE team
SET team_no_members = 3
WHERE team_id = 5;

UPDATE entry
SET team_id = 5
WHERE entry_no = 17;

-- Event 7 on 5 feb 2021 triple team from the siblings
INSERT INTO entry VALUES (7, 18, TO_DATE('08:30:00', 'HH24:MI:SS'), TO_DATE('11:00:00', 'HH24:MI:SS'), 8, null, 2);

INSERT INTO team VALUES (6, 'Triple Siblings', TO_DATE('05/FEB/2022', 'DD/MON/YYYY'), 1, 7, 18, 2);

UPDATE entry
SET team_id = 6
WHERE entry_no = 18;

INSERT INTO entry VALUES (7, 19, TO_DATE('08:30:00', 'HH24:MI:SS'), TO_DATE('11:00:00', 'HH24:MI:SS'), 9, null, 2);

UPDATE team
SET team_no_members = 2
WHERE team_id = 6;

UPDATE entry
SET team_id = 6
WHERE entry_no = 19;

INSERT INTO entry VALUES (7, 20, TO_DATE('08:30:00', 'HH24:MI:SS'), TO_DATE('11:00:00', 'HH24:MI:SS'), 10, null, 2);

UPDATE team
SET team_no_members = 3
WHERE team_id = 6;

UPDATE entry
SET team_id = 6
WHERE entry_no = 20;

INSERT INTO entry VALUES (7, 21, TO_DATE('10:30:00', 'HH24:MI:SS'), TO_DATE('15:30:00', 'HH24:MI:SS'), 11, null, 1);

INSERT INTO team VALUES (7, 'Asian Duo', TO_DATE('05/FEB/2022', 'DD/MON/YYYY'), 1, 7, 21, 1);

UPDATE entry
SET team_id = 7
WHERE entry_no = 21;

INSERT INTO entry VALUES (7, 22, TO_DATE('10:30:00', 'HH24:MI:SS'), TO_DATE('15:30:00', 'HH24:MI:SS'), 12, null, 1);

UPDATE team
SET team_no_members = 2
WHERE team_id = 7;

UPDATE entry
SET team_id = 7
WHERE entry_no = 22;

-- Event 10 on 14/mar/2022
INSERT INTO entry VALUES (10, 23, TO_DATE('10:00:00', 'HH24:MI:SS'), TO_DATE('12:00:00', 'HH24:MI:SS'), 1, null, null);

INSERT INTO entry VALUES (10, 24, TO_DATE('10:30:00', 'HH24:MI:SS'), TO_DATE('16:00:00', 'HH24:MI:SS'), 5, null, 3);

INSERT INTO team VALUES (8, 'Indian Trio', TO_DATE('14/MAR/2022', 'DD/MON/YYYY'), 1, 10, 24, 3);

UPDATE entry
SET team_id = 8
WHERE entry_no = 24;

INSERT INTO entry VALUES (10, 25, TO_DATE('10:30:00', 'HH24:MI:SS'), TO_DATE('16:00:00', 'HH24:MI:SS'), 6, null, 3);

UPDATE team
SET team_no_members = 2
WHERE team_id = 8;

UPDATE entry
SET team_id = 8
WHERE entry_no = 25;

INSERT INTO entry VALUES (10, 26, TO_DATE('10:30:00', 'HH24:MI:SS'), TO_DATE('16:00:00', 'HH24:MI:SS'), 7, null, 3);

UPDATE team
SET team_no_members = 3
WHERE team_id = 8;

UPDATE entry
SET team_id = 8
WHERE entry_no = 26;

-- Event 11 on 14/mar/2022
INSERT INTO entry VALUES (11, 27, TO_DATE('13:00:00', 'HH24:MI:SS'), TO_DATE('14:30:00', 'HH24:MI:SS'), 4, null, 1);

INSERT INTO entry VALUES (11, 28, TO_DATE('08:30:00', 'HH24:MI:SS'), TO_DATE('14:00:00', 'HH24:MI:SS'), 11, null, null);

INSERT INTO team VALUES (9, 'Asians Strikes Again', TO_DATE('14/MAR/2022', 'DD/MON/YYYY'), 1, 11, 28, null);

UPDATE entry
SET team_id = 9
WHERE entry_no = 28;

INSERT INTO entry VALUES (11, 29, TO_DATE('08:30:00', 'HH24:MI:SS'), TO_DATE('14:00:00', 'HH24:MI:SS'), 12, null, null);

UPDATE team
SET team_no_members = 2
WHERE team_id = 9;

UPDATE entry
SET team_id = 9
WHERE entry_no = 29;

-- Event 14 29/may/2022 with the 2 boys registration only
INSERT INTO entry VALUES (14, 30, TO_DATE('09:00:00', 'HH24:MI:SS'), null, 2, null, null);

INSERT INTO team VALUES (10, 'Final Descedent', TO_DATE('29/May/2022', 'DD/MON/YYYY'), 1, 14, 30, null);

UPDATE entry
SET team_id = 10
WHERE entry_no = 30;

INSERT INTO entry VALUES (14, 31, TO_DATE('09:00:00', 'HH24:MI:SS'), null, 3, null, null);

UPDATE team
SET team_no_members = 2
WHERE team_id = 10;

UPDATE entry
SET team_id = 10
WHERE entry_no = 31;

COMMIT;

--****PLEASE ENTER YOUR DETAILS BELOW****
--T4-rm-alter.sql

--Student ID: 32024975
--Student Name: Soh En Ming
--Unit Code: FIT2094
--Applied Class No: 5

/* Comments for your marker:




*/

--4(a)
ALTER TABLE entry
DROP COLUMN run_time;
    
ALTER TABLE entry
ADD run_time numeric(5,2);

UPDATE entry
SET run_time = (entry_finishtime - entry_starttime) * 24 * 60
WHERE entry_starttime IS NOT NULL AND entry_finishtime IS NOT NULL;

COMMIT;

--4(b)
CREATE TABLE competitor_additional_charity (
    event_id VARCHAR2(30),
    comp_no number(4,0),
    char_id char(10)
    );

ALTER TABLE competitor_additional_charity
    ADD
        ( CONSTRAINT cac_pk PRIMARY KEY (event_id, comp_no, char_id),
          CONSTRAINT competitor_cac_fk FOREIGN KEY (comp_no) 
                        REFERENCES competitor (comp_no),
          CONSTRAINT charity_cac_fk FOREIGN KEY (char_id)
                        REFERENCES charity (char_id));

COMMENT ON COLUMN competitor_emergency_contact.compno IS
    'Event id (surrogate primary key)';
    
COMMENT ON COLUMN competitor_emergency_contact.emerconphone IS
    'Unique identifier for a competitor';

COMMENT ON COLUMN competitor_emergency_contact.compecrelation IS
    'Charity unique identifier';

INSERT INTO competitor_additional_charity (event_id, comp_no, char_id)
SELECT event_id, comp_no, char_id FROM
((SELECT event_id FROM entry) NATURAL JOIN
(SELECT event_id, comp_no FROM entry) NATURAL JOIN 
(SELECT event_id, char_id FROM entry));

ALTER TABLE entry
DROP COLUMN event_id;

ALTER TABLE entry
DROP COLUMN comp_no;

ALTER TABLE team ADD (
    prcntage_ttl_raised_funds NUMBER(3),
    total_raised_funds NUMBER(10));

UPDATE team
SET prcntage_ttl_raised_funds = (
    Select total_raised_funds
    From team
    WHERE prcntage_ttl_raised_funds = (Count(total_raised_funds)* 100 / (Select Count(*) From team))
);
COMMIT;
        
--4(c)
CREATE TABLE competitor_official (
    event_id number(6),
    comp_no number(4,0) NOT NULL,
    official_roles VARCHAR2(50)
    );

ALTER TABLE competitor_official
    ADD
        ( CONSTRAINT co_pk PRIMARY KEY (event_id, comp_no),
          CONSTRAINT competitor_co_fk FOREIGN KEY (comp_no) 
                        REFERENCES competitor (comp_no),
          CONSTRAINT entry_co_fk FOREIGN KEY (event_id)
                        REFERENCES event (event_id));

ALTER TABLE competitor_official
    ADD CONSTRAINT chk_official_roles CHECK ( official_roles IN (
        'T',
        'N',
        'S',
        'F'
    ) );

COMMENT ON COLUMN competitor_official.event_id IS
'Event id (surrogate primary key)';

COMMENT ON COLUMN competitor_official.comp_no IS
'Unique identifier for a competitor';

COMMENT ON COLUMN competitor_official.official_roles IS
'Different official roles to competitor 
(‘T’ for Time Keeper, ‘M’ for Marshal, ‘S’ for Starter, or ‘F’ for First Aid)';

COMMIT;
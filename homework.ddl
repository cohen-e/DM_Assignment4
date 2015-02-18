-- Generated by Oracle SQL Developer Data Modeler 4.0.3.853
--   at:        2015-02-17 14:37:00 PST
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g




DROP TABLE sim_dept CASCADE CONSTRAINTS ;

DROP TABLE sim_person CASCADE CONSTRAINTS ;

DROP TABLE sim_project CASCADE CONSTRAINTS ;

DROP TABLE sim_projecte CASCADE CONSTRAINTS ;

CREATE TABLE sim_dept
  (
    dept_id              INTEGER NOT NULL ,
    name                 VARCHAR2 (255) ,
    location             VARCHAR2 (255) ,
    sim_person_person_id INTEGER
  ) ;
CREATE UNIQUE INDEX sim_dept__IDX ON sim_dept
  (
    sim_person_person_id ASC
  )
  ;
  ALTER TABLE sim_dept ADD CONSTRAINT sim_dept_PK PRIMARY KEY ( dept_id ) ;

CREATE TABLE sim_person
  (
    person_id         INTEGER NOT NULL ,
    emp_id            INTEGER ,
    project_id        INTEGER ,
    name              VARCHAR2 (255) ,
    ssnum             INTEGER ,
    gender            VARCHAR2 (255) ,
    birth_date        DATE ,
    address           VARCHAR2 (255) ,
    city              VARCHAR2 (255) ,
    state             VARCHAR2 (255) ,
    zip               INTEGER ,
    hire_date         DATE ,
    salary            INTEGER ,
    status            VARCHAR2 (255) ,
    rating            VARCHAR2 (255) ,
    title             VARCHAR2 (255) ,
    bonus             INTEGER ,
    type              VARCHAR2 (255) ,
    sim_dept_dept_id1 INTEGER ,
    sim_dept_dept_id  INTEGER
  ) ;
CREATE UNIQUE INDEX sim_person__IDX ON sim_person
  (
    sim_dept_dept_id1 ASC
  )
  ;
  ALTER TABLE sim_person ADD CONSTRAINT sim_person_PK PRIMARY KEY ( person_id ) ;

CREATE TABLE sim_project
  (
    project_id       INTEGER NOT NULL ,
    name             VARCHAR2 (255) ,
    dept_id          INTEGER ,
    sim_dept_dept_id INTEGER
  ) ;
ALTER TABLE sim_project ADD CONSTRAINT sim_project_PK PRIMARY KEY ( project_id ) ;

CREATE TABLE sim_projecte
  (
    projecte_id            INTEGER NOT NULL ,
    project_id             INTEGER ,
    person_id              INTEGER ,
    sim_project_project_id INTEGER ,
    sim_person_person_id   INTEGER
  ) ;
ALTER TABLE sim_projecte ADD CONSTRAINT sim_projecte_PK PRIMARY KEY ( projecte_id ) ;

ALTER TABLE sim_dept ADD CONSTRAINT sim_dept_sim_person_FK FOREIGN KEY ( sim_person_person_id ) REFERENCES sim_person ( person_id ) ;

ALTER TABLE sim_person ADD CONSTRAINT sim_person_sim_dept_FK FOREIGN KEY ( sim_dept_dept_id ) REFERENCES sim_dept ( dept_id ) ;

ALTER TABLE sim_person ADD CONSTRAINT sim_person_sim_dept_FKv1 FOREIGN KEY ( sim_dept_dept_id1 ) REFERENCES sim_dept ( dept_id ) ;

ALTER TABLE sim_project ADD CONSTRAINT sim_project_sim_dept_FK FOREIGN KEY ( sim_dept_dept_id ) REFERENCES sim_dept ( dept_id ) ;

ALTER TABLE sim_projecte ADD CONSTRAINT sim_projecte_sim_person_FK FOREIGN KEY ( sim_person_person_id ) REFERENCES sim_person ( person_id ) ;

ALTER TABLE sim_projecte ADD CONSTRAINT sim_projecte_sim_project_FK FOREIGN KEY ( sim_project_project_id ) REFERENCES sim_project ( project_id ) ;


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             4
-- CREATE INDEX                             2
-- ALTER TABLE                             10
-- CREATE VIEW                              0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0

CREATE TABLE LOCATION_TYPE (
    LOCATION_TYPE_CODE number (3) NOT NULL, 
    LOCATION_TYPE_DESC varchar2 (200) NOT NULL, 
    UPDATE_TIMESTAMP date NOT NULL, 
    UPDATE_USER varchar2 (8) NOT NULL) ;

ALTER TABLE LOCATION_TYPE 
    ADD CONSTRAINT PK_LOCATION_TYPE 
            PRIMARY KEY (LOCATION_TYPE_CODE) ;
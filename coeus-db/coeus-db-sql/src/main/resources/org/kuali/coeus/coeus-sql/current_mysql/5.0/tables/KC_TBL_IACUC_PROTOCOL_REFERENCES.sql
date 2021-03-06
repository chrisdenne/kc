DELIMITER /
CREATE TABLE IACUC_PROTOCOL_REFERENCES ( 
    IACUC_PROTOCOL_REFERENCES_ID DECIMAL(12,0) NOT NULL, 
    PROTOCOL_ID DECIMAL(12,0) NOT NULL, 
    PROTOCOL_NUMBER VARCHAR(20) NOT NULL, 
    SEQUENCE_NUMBER DECIMAL(4,0) NOT NULL, 
    PROTOCOL_REFERENCE_NUMBER DECIMAL(12,0) NOT NULL, 
    PROTOCOL_REFERENCE_TYPE_CODE DECIMAL(3,0) NOT NULL, 
    REFERENCE_KEY VARCHAR(50), 
    APPLICATION_DATE DATE, 
    APPROVAL_DATE DATE, 
    COMMENTS LONGTEXT, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR(60) NOT NULL, 
    EXPIRATION_DATE DATE, 
    VER_NBR DECIMAL(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR(36) NOT NULL) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/


ALTER TABLE IACUC_PROTOCOL_REFERENCES 
ADD CONSTRAINT PK_IACUC_PROTOCOL_REFERENCES 
PRIMARY KEY (IACUC_PROTOCOL_REFERENCES_ID) 
/

DELIMITER ;

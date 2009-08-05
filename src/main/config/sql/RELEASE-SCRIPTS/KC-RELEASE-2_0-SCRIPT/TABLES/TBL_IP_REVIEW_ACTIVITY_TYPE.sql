-- Table Script  
CREATE TABLE IP_REVIEW_ACTIVITY_TYPE (
    IP_REVIEW_ACTIVITY_TYPE_CODE VARCHAR2 (3) NOT NULL, 
    DESCRIPTION VARCHAR2 (200) NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2 (60) NOT NULL, 
    VER_NBR NUMBER (8, 0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2 (36) DEFAULT SYS_GUID () NOT NULL) ;

-- Primary Key Constraint  
ALTER TABLE IP_REVIEW_ACTIVITY_TYPE 
    ADD CONSTRAINT PK_IP_REVIEW_ACTIVITY_TYPE 
            PRIMARY KEY (IP_REVIEW_ACTIVITY_TYPE_CODE) ; 
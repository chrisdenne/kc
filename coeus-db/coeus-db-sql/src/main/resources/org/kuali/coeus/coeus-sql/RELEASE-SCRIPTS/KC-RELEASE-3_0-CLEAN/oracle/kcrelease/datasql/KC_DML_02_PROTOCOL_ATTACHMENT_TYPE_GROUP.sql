TRUNCATE TABLE PROTOCOL_ATTACHMENT_TYPE_GROUP DROP STORAGE
/
INSERT INTO PROTOCOL_ATTACHMENT_TYPE_GROUP (TYPE_GROUP_ID,TYPE_CD,GROUP_CD,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQ_PROTOCOL_ID.NEXTVAL,(SELECT TYPE_CD FROM PROTOCOL_ATTACHMENT_TYPE WHERE DESCRIPTION = 'Informed Consent Document'),(SELECT GROUP_CD FROM PROTOCOL_ATTACHMENT_GROUP WHERE DESCRIPTION = 'Protocol Attachments'),'admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO PROTOCOL_ATTACHMENT_TYPE_GROUP (TYPE_GROUP_ID,TYPE_CD,GROUP_CD,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQ_PROTOCOL_ID.NEXTVAL,(SELECT TYPE_CD FROM PROTOCOL_ATTACHMENT_TYPE WHERE DESCRIPTION = 'Recruitment Brochure'),(SELECT GROUP_CD FROM PROTOCOL_ATTACHMENT_GROUP WHERE DESCRIPTION = 'Protocol Attachments'),'admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO PROTOCOL_ATTACHMENT_TYPE_GROUP (TYPE_GROUP_ID,TYPE_CD,GROUP_CD,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQ_PROTOCOL_ID.NEXTVAL,(SELECT TYPE_CD FROM PROTOCOL_ATTACHMENT_TYPE WHERE DESCRIPTION = 'Advertisement'),(SELECT GROUP_CD FROM PROTOCOL_ATTACHMENT_GROUP WHERE DESCRIPTION = 'Protocol Attachments'),'admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO PROTOCOL_ATTACHMENT_TYPE_GROUP (TYPE_GROUP_ID,TYPE_CD,GROUP_CD,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQ_PROTOCOL_ID.NEXTVAL,(SELECT TYPE_CD FROM PROTOCOL_ATTACHMENT_TYPE WHERE DESCRIPTION = 'Protocol Narrative'),(SELECT GROUP_CD FROM PROTOCOL_ATTACHMENT_GROUP WHERE DESCRIPTION = 'Protocol Attachments'),'admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO PROTOCOL_ATTACHMENT_TYPE_GROUP (TYPE_GROUP_ID,TYPE_CD,GROUP_CD,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQ_PROTOCOL_ID.NEXTVAL,(SELECT TYPE_CD FROM PROTOCOL_ATTACHMENT_TYPE WHERE DESCRIPTION = 'Investigator Brochure'),(SELECT GROUP_CD FROM PROTOCOL_ATTACHMENT_GROUP WHERE DESCRIPTION = 'Protocol Attachments'),'admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO PROTOCOL_ATTACHMENT_TYPE_GROUP (TYPE_GROUP_ID,TYPE_CD,GROUP_CD,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQ_PROTOCOL_ID.NEXTVAL,(SELECT TYPE_CD FROM PROTOCOL_ATTACHMENT_TYPE WHERE DESCRIPTION = 'Children''s Assent Form'),(SELECT GROUP_CD FROM PROTOCOL_ATTACHMENT_GROUP WHERE DESCRIPTION = 'Protocol Attachments'),'admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO PROTOCOL_ATTACHMENT_TYPE_GROUP (TYPE_GROUP_ID,TYPE_CD,GROUP_CD,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQ_PROTOCOL_ID.NEXTVAL,(SELECT TYPE_CD FROM PROTOCOL_ATTACHMENT_TYPE WHERE DESCRIPTION = 'HIPAA Research Authorization Form'),(SELECT GROUP_CD FROM PROTOCOL_ATTACHMENT_GROUP WHERE DESCRIPTION = 'Protocol Attachments'),'admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO PROTOCOL_ATTACHMENT_TYPE_GROUP (TYPE_GROUP_ID,TYPE_CD,GROUP_CD,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQ_PROTOCOL_ID.NEXTVAL,(SELECT TYPE_CD FROM PROTOCOL_ATTACHMENT_TYPE WHERE DESCRIPTION = 'HIPAA Waiver of Research Authorization Form'),(SELECT GROUP_CD FROM PROTOCOL_ATTACHMENT_GROUP WHERE DESCRIPTION = 'Protocol Attachments'),'admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO PROTOCOL_ATTACHMENT_TYPE_GROUP (TYPE_GROUP_ID,TYPE_CD,GROUP_CD,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQ_PROTOCOL_ID.NEXTVAL,(SELECT TYPE_CD FROM PROTOCOL_ATTACHMENT_TYPE WHERE DESCRIPTION = 'Other'),(SELECT GROUP_CD FROM PROTOCOL_ATTACHMENT_GROUP WHERE DESCRIPTION = 'Protocol Attachments'),'admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO PROTOCOL_ATTACHMENT_TYPE_GROUP (TYPE_GROUP_ID,TYPE_CD,GROUP_CD,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQ_PROTOCOL_ID.NEXTVAL,(SELECT TYPE_CD FROM PROTOCOL_ATTACHMENT_TYPE WHERE DESCRIPTION = 'Other'),(SELECT GROUP_CD FROM PROTOCOL_ATTACHMENT_GROUP WHERE DESCRIPTION = 'Personnel Attachments'),'admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO PROTOCOL_ATTACHMENT_TYPE_GROUP (TYPE_GROUP_ID,TYPE_CD,GROUP_CD,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQ_PROTOCOL_ID.NEXTVAL,(SELECT TYPE_CD FROM PROTOCOL_ATTACHMENT_TYPE WHERE DESCRIPTION = 'Adverse Event'),(SELECT GROUP_CD FROM PROTOCOL_ATTACHMENT_GROUP WHERE DESCRIPTION = 'Protocol Attachments'),'admin',SYSDATE,SYS_GUID(),1)
/
INSERT INTO PROTOCOL_ATTACHMENT_TYPE_GROUP (TYPE_GROUP_ID,TYPE_CD,GROUP_CD,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (SEQ_PROTOCOL_ID.NEXTVAL,(SELECT TYPE_CD FROM PROTOCOL_ATTACHMENT_TYPE WHERE DESCRIPTION = 'Biography'),(SELECT GROUP_CD FROM PROTOCOL_ATTACHMENT_GROUP WHERE DESCRIPTION = 'Personnel Attachments'),'admin',SYSDATE,SYS_GUID(),1)
/

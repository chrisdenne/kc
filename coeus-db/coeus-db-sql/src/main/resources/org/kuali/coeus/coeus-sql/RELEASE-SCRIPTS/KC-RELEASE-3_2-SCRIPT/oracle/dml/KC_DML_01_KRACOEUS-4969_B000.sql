
-- insert negotiation activity types
INSERT INTO NEGOTIATION_ACTIVITY_TYPE (NEGOTIATION_ACTIVITY_TYPE_ID, NEGOTIATION_ACTIVITY_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, ACTV_IND, VER_NBR)
  VALUES (NEGOTIATION_ACTIVITY_TYPE_S.NEXTVAL, 'CC', 'Conference Call', SYSDATE, 'admin', SYS_GUID(), 'Y', 1)
/

INSERT INTO NEGOTIATION_ACTIVITY_TYPE (NEGOTIATION_ACTIVITY_TYPE_ID, NEGOTIATION_ACTIVITY_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, ACTV_IND, VER_NBR)
  VALUES (NEGOTIATION_ACTIVITY_TYPE_S.NEXTVAL, 'CD', 'Copied Documents', SYSDATE, 'admin', SYS_GUID(), 'Y', 1)
/

INSERT INTO NEGOTIATION_ACTIVITY_TYPE (NEGOTIATION_ACTIVITY_TYPE_ID, NEGOTIATION_ACTIVITY_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, ACTV_IND, VER_NBR)
  VALUES (NEGOTIATION_ACTIVITY_TYPE_S.NEXTVAL, 'E', 'Email', SYSDATE, 'admin', SYS_GUID(), 'Y', 1)
/

INSERT INTO NEGOTIATION_ACTIVITY_TYPE (NEGOTIATION_ACTIVITY_TYPE_ID, NEGOTIATION_ACTIVITY_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, ACTV_IND, VER_NBR)
  VALUES (NEGOTIATION_ACTIVITY_TYPE_S.NEXTVAL, 'FR', 'Fax Received', SYSDATE, 'admin', SYS_GUID(), 'Y', 1)
/

INSERT INTO NEGOTIATION_ACTIVITY_TYPE (NEGOTIATION_ACTIVITY_TYPE_ID, NEGOTIATION_ACTIVITY_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, ACTV_IND, VER_NBR)
  VALUES (NEGOTIATION_ACTIVITY_TYPE_S.NEXTVAL, 'FS', 'Fax Sent', SYSDATE, 'admin', SYS_GUID(), 'Y', 1)
/

INSERT INTO NEGOTIATION_ACTIVITY_TYPE (NEGOTIATION_ACTIVITY_TYPE_ID, NEGOTIATION_ACTIVITY_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, ACTV_IND, VER_NBR)
  VALUES (NEGOTIATION_ACTIVITY_TYPE_S.NEXTVAL, 'M', 'Meeting', SYSDATE, 'admin', SYS_GUID(), 'Y', 1)
/

INSERT INTO NEGOTIATION_ACTIVITY_TYPE (NEGOTIATION_ACTIVITY_TYPE_ID, NEGOTIATION_ACTIVITY_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, ACTV_IND, VER_NBR)
  VALUES (NEGOTIATION_ACTIVITY_TYPE_S.NEXTVAL, 'TC', 'Telephone Call', SYSDATE, 'admin', SYS_GUID(), 'Y', 1)
/

INSERT INTO NEGOTIATION_ACTIVITY_TYPE (NEGOTIATION_ACTIVITY_TYPE_ID, NEGOTIATION_ACTIVITY_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, ACTV_IND, VER_NBR)
  VALUES (NEGOTIATION_ACTIVITY_TYPE_S.NEXTVAL, 'O', 'Other', SYSDATE, 'admin', SYS_GUID(), 'Y', 1)
/

INSERT INTO NEGOTIATION_ACTIVITY_TYPE (NEGOTIATION_ACTIVITY_TYPE_ID, NEGOTIATION_ACTIVITY_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, ACTV_IND, VER_NBR)
  VALUES (NEGOTIATION_ACTIVITY_TYPE_S.NEXTVAL, 'DD', 'Draft Document', SYSDATE, 'admin', SYS_GUID(), 'Y', 1)
/

INSERT INTO NEGOTIATION_ACTIVITY_TYPE (NEGOTIATION_ACTIVITY_TYPE_ID, NEGOTIATION_ACTIVITY_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, ACTV_IND, VER_NBR)
  VALUES (NEGOTIATION_ACTIVITY_TYPE_S.NEXTVAL, 'RD', 'Revised Document', SYSDATE, 'admin', SYS_GUID(), 'Y', 1)
/

INSERT INTO NEGOTIATION_ACTIVITY_TYPE (NEGOTIATION_ACTIVITY_TYPE_ID, NEGOTIATION_ACTIVITY_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, ACTV_IND, VER_NBR)
  VALUES (NEGOTIATION_ACTIVITY_TYPE_S.NEXTVAL, 'CS', 'Correspondence Sent', SYSDATE, 'admin', SYS_GUID(), 'Y', 1)
/

INSERT INTO NEGOTIATION_ACTIVITY_TYPE (NEGOTIATION_ACTIVITY_TYPE_ID, NEGOTIATION_ACTIVITY_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, ACTV_IND, VER_NBR)
  VALUES (NEGOTIATION_ACTIVITY_TYPE_S.NEXTVAL, 'CR', 'Correspondence Received', SYSDATE, 'admin', SYS_GUID(), 'Y', 1)
/

INSERT INTO NEGOTIATION_ACTIVITY_TYPE (NEGOTIATION_ACTIVITY_TYPE_ID, NEGOTIATION_ACTIVITY_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, ACTV_IND, VER_NBR)
  VALUES (NEGOTIATION_ACTIVITY_TYPE_S.NEXTVAL, 'CPS', 'Courier Package Sent', SYSDATE, 'admin', SYS_GUID(), 'Y', 1)
/

INSERT INTO NEGOTIATION_ACTIVITY_TYPE (NEGOTIATION_ACTIVITY_TYPE_ID, NEGOTIATION_ACTIVITY_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, ACTV_IND, VER_NBR)
  VALUES (NEGOTIATION_ACTIVITY_TYPE_S.NEXTVAL, 'CPR', 'Courier Package Received', SYSDATE, 'admin', SYS_GUID(), 'Y', 1)
/

INSERT INTO NEGOTIATION_ACTIVITY_TYPE (NEGOTIATION_ACTIVITY_TYPE_ID, NEGOTIATION_ACTIVITY_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, ACTV_IND, VER_NBR)
  VALUES (NEGOTIATION_ACTIVITY_TYPE_S.NEXTVAL, 'EDS', 'Executable Document Sent', SYSDATE, 'admin', SYS_GUID(), 'Y', 1)
/

INSERT INTO NEGOTIATION_ACTIVITY_TYPE (NEGOTIATION_ACTIVITY_TYPE_ID, NEGOTIATION_ACTIVITY_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, ACTV_IND, VER_NBR)
  VALUES (NEGOTIATION_ACTIVITY_TYPE_S.NEXTVAL, 'EDR', 'Executable Document Received', SYSDATE, 'admin', SYS_GUID(), 'Y', 1)
/

INSERT INTO NEGOTIATION_ACTIVITY_TYPE (NEGOTIATION_ACTIVITY_TYPE_ID, NEGOTIATION_ACTIVITY_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, ACTV_IND, VER_NBR)
  VALUES (NEGOTIATION_ACTIVITY_TYPE_S.NEXTVAL, 'F', 'Filed - Returned to CA', SYSDATE, 'admin', SYS_GUID(), 'Y', 1)
/

-- insert negotiation locations
INSERT INTO NEGOTIATION_LOCATION (NEGOTIATION_LOCATION_ID, NEGOTIATION_LOCATION_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, ACTV_IND, VER_NBR)
  VALUES (NEGOTIATION_LOCATION_S.NEXTVAL, 'OSP', 'OSP', SYSDATE, 'admin', SYS_GUID(), 'Y', 1)
/

INSERT INTO NEGOTIATION_LOCATION (NEGOTIATION_LOCATION_ID, NEGOTIATION_LOCATION_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, ACTV_IND, VER_NBR)
  VALUES (NEGOTIATION_LOCATION_S.NEXTVAL, 'TLO', 'TLO', SYSDATE, 'admin', SYS_GUID(), 'Y', 1)
/

INSERT INTO NEGOTIATION_LOCATION (NEGOTIATION_LOCATION_ID, NEGOTIATION_LOCATION_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, ACTV_IND, VER_NBR)
  VALUES (NEGOTIATION_LOCATION_S.NEXTVAL, 'OGC', 'OGC', SYSDATE, 'admin', SYS_GUID(), 'Y', 1)
/

INSERT INTO NEGOTIATION_LOCATION (NEGOTIATION_LOCATION_ID, NEGOTIATION_LOCATION_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, ACTV_IND, VER_NBR)
  VALUES (NEGOTIATION_LOCATION_S.NEXTVAL, 'S', 'Sponsor', SYSDATE, 'admin', SYS_GUID(), 'Y', 1)
/

INSERT INTO NEGOTIATION_LOCATION (NEGOTIATION_LOCATION_ID, NEGOTIATION_LOCATION_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, ACTV_IND, VER_NBR)
  VALUES (NEGOTIATION_LOCATION_S.NEXTVAL, 'DLC', 'DLC', SYSDATE, 'admin', SYS_GUID(), 'Y', 1)
/

COMMIT
/





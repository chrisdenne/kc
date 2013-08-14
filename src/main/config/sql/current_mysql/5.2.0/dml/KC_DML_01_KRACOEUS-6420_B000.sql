DELIMITER /
UPDATE WATERMARK SET GROUP_NAME = 'IRB' WHERE STATUS_CODE = '-1' AND WATERMARK_TEXT = 'INVALID'
/
UPDATE WATERMARK SET GROUP_NAME = 'IRB' WHERE STATUS_CODE = '100' AND WATERMARK_TEXT = 'Pending/In Progress'
/
UPDATE WATERMARK SET GROUP_NAME = 'IRB' WHERE STATUS_CODE = '101' AND WATERMARK_TEXT = 'Submitted To IRB'
/
UPDATE WATERMARK SET GROUP_NAME = 'IRB' WHERE STATUS_CODE = '102' AND WATERMARK_TEXT = 'Specific Minor Revisions Required'
/
UPDATE WATERMARK SET GROUP_NAME = 'IRB' WHERE STATUS_CODE = '103' AND WATERMARK_TEXT = 'Deferred'
/
UPDATE WATERMARK SET GROUP_NAME = 'IRB' WHERE STATUS_CODE = '104' AND WATERMARK_TEXT = 'Substantive Revisions Required'
/
UPDATE WATERMARK SET GROUP_NAME = 'IRB' WHERE STATUS_CODE = '200' AND WATERMARK_TEXT = 'Approved'
/
UPDATE WATERMARK SET GROUP_NAME = 'IRB' WHERE STATUS_CODE = '304' AND WATERMARK_TEXT = 'Withdrawn'
/
UPDATE WATERMARK SET GROUP_NAME = 'IRB' WHERE STATUS_CODE = '305' AND WATERMARK_TEXT = 'Expired'
/
UPDATE WATERMARK SET GROUP_NAME = 'IRB' WHERE STATUS_CODE = '306' AND WATERMARK_TEXT = 'Withdrawn'
/
INSERT INTO SEQ_WATERMARK_ID VALUES(NULL)
/
INSERT INTO WATERMARK (WATERMARK_ID,GROUP_NAME, STATUS_CODE, WATERMARK_TEXT, WATERMARK_STATUS, FONT_SIZE, FONT_COLOUR, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID, UPDATE_USER, WATERMARK_TYPE, POSITION_FONT, POSITION, ALIGNMENT)
VALUES ((SELECT (MAX(ID)) FROM SEQ_WATERMARK_ID),'IACUC', '100', 'Pending/In Progress', 'Y', '50', 'DARKGRAY', NOW(), 0, UUID(),'admin','TEXT','25','HEADER','CENTER')
/
INSERT INTO SEQ_WATERMARK_ID VALUES(NULL)
/
INSERT INTO WATERMARK (WATERMARK_ID,GROUP_NAME, STATUS_CODE, WATERMARK_TEXT, WATERMARK_STATUS, FONT_SIZE, FONT_COLOUR, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID, UPDATE_USER, WATERMARK_TYPE, POSITION_FONT, POSITION, ALIGNMENT)
VALUES ((SELECT (MAX(ID)) FROM SEQ_WATERMARK_ID),'IACUC', '101', 'Submitted to IACUC', 'Y', '50', 'DARKGRAY', NOW(), 0, UUID(),'admin','TEXT','25','HEADER','CENTER')
/
INSERT INTO SEQ_WATERMARK_ID VALUES(NULL)
/
INSERT INTO WATERMARK (WATERMARK_ID,GROUP_NAME, STATUS_CODE, WATERMARK_TEXT, WATERMARK_STATUS, FONT_SIZE, FONT_COLOUR, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID, UPDATE_USER, WATERMARK_TYPE, POSITION_FONT, POSITION, ALIGNMENT)
VALUES ((SELECT (MAX(ID)) FROM SEQ_WATERMARK_ID),'IACUC', '102', 'Return to PI', 'Y', '50', 'DARKGRAY', NOW(), 0, UUID(),'admin','TEXT','25','HEADER','CENTER')
/
INSERT INTO SEQ_WATERMARK_ID VALUES(NULL)
/
INSERT INTO WATERMARK (WATERMARK_ID,GROUP_NAME, STATUS_CODE, WATERMARK_TEXT, WATERMARK_STATUS, FONT_SIZE, FONT_COLOUR, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID, UPDATE_USER, WATERMARK_TYPE, POSITION_FONT, POSITION, ALIGNMENT)
VALUES ((SELECT (MAX(ID)) FROM SEQ_WATERMARK_ID),'IACUC', '103', 'Tabled', 'Y', '50', 'DARKGRAY', NOW(), 0, UUID(),'admin','TEXT','25','HEADER','CENTER')
/
INSERT INTO SEQ_WATERMARK_ID VALUES(NULL)
/
INSERT INTO WATERMARK (WATERMARK_ID,GROUP_NAME, STATUS_CODE, WATERMARK_TEXT, WATERMARK_STATUS, FONT_SIZE, FONT_COLOUR, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID, UPDATE_USER, WATERMARK_TYPE, POSITION_FONT, POSITION, ALIGNMENT)
VALUES ((SELECT (MAX(ID)) FROM SEQ_WATERMARK_ID),'IACUC', '104', 'Minor Revisions Required', 'Y', '50', 'DARKGRAY', NOW(), 0, UUID(),'admin','TEXT','25','HEADER','CENTER')
/
INSERT INTO SEQ_WATERMARK_ID VALUES(NULL)
/
INSERT INTO WATERMARK (WATERMARK_ID,GROUP_NAME, STATUS_CODE, WATERMARK_TEXT, WATERMARK_STATUS, FONT_SIZE, FONT_COLOUR, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID, UPDATE_USER, WATERMARK_TYPE, POSITION_FONT, POSITION, ALIGNMENT)
VALUES ((SELECT (MAX(ID)) FROM SEQ_WATERMARK_ID),'IACUC', '105', 'Withdrawn', 'Y', '50', 'DARKGRAY',  NOW(), 0, UUID(),'admin','TEXT','25','HEADER','CENTER')
/
INSERT INTO SEQ_WATERMARK_ID VALUES(NULL)
/
INSERT INTO WATERMARK (WATERMARK_ID,GROUP_NAME, STATUS_CODE, WATERMARK_TEXT, WATERMARK_STATUS, FONT_SIZE, FONT_COLOUR, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID, UPDATE_USER, WATERMARK_TYPE, POSITION_FONT, POSITION, ALIGNMENT)
VALUES ((SELECT (MAX(ID)) FROM SEQ_WATERMARK_ID),'IACUC', '107', 'Major Revisions Required', 'Y', '50', 'DARKGRAY',  NOW(), 0, UUID(),'admin','TEXT','25','HEADER','CENTER')
/
INSERT INTO SEQ_WATERMARK_ID VALUES(NULL)
/
INSERT INTO WATERMARK (WATERMARK_ID,GROUP_NAME, STATUS_CODE, WATERMARK_TEXT, WATERMARK_STATUS, FONT_SIZE, FONT_COLOUR, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID, UPDATE_USER, WATERMARK_TYPE, POSITION_FONT, POSITION, ALIGNMENT)
VALUES ((SELECT (MAX(ID)) FROM SEQ_WATERMARK_ID),'IACUC', '108', 'Routing In Progress', 'Y', '50', 'DARKGRAY',  NOW(), 0, UUID(),'admin','TEXT','25','HEADER','CENTER')
/
INSERT INTO SEQ_WATERMARK_ID VALUES(NULL)
/
INSERT INTO WATERMARK (WATERMARK_ID,GROUP_NAME, STATUS_CODE, WATERMARK_TEXT, WATERMARK_STATUS, FONT_SIZE, FONT_COLOUR, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID, UPDATE_USER, WATERMARK_TYPE, POSITION_FONT, POSITION, ALIGNMENT)
VALUES ((SELECT (MAX(ID)) FROM SEQ_WATERMARK_ID),'IACUC', '200', 'Active', 'Y', '50', 'DARKGRAY',  NOW(), 0, UUID(),'admin','TEXT','25','HEADER','CENTER');
/
INSERT INTO SEQ_WATERMARK_ID VALUES(NULL)
/
INSERT INTO WATERMARK (WATERMARK_ID,GROUP_NAME, STATUS_CODE, WATERMARK_TEXT, WATERMARK_STATUS, FONT_SIZE, FONT_COLOUR, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID, UPDATE_USER, WATERMARK_TYPE, POSITION_FONT, POSITION, ALIGNMENT)
VALUES ((SELECT (MAX(ID)) FROM SEQ_WATERMARK_ID),'IACUC', '201', 'Active - On Hold', 'Y', '50', 'DARKGRAY', NOW(), 0, UUID(),'admin','TEXT','25','HEADER','CENTER')
/
INSERT INTO SEQ_WATERMARK_ID VALUES(NULL)
/
INSERT INTO WATERMARK (WATERMARK_ID,GROUP_NAME, STATUS_CODE, WATERMARK_TEXT, WATERMARK_STATUS, FONT_SIZE, FONT_COLOUR, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID, UPDATE_USER, WATERMARK_TYPE, POSITION_FONT, POSITION, ALIGNMENT)
VALUES ((SELECT (MAX(ID)) FROM SEQ_WATERMARK_ID),'IACUC', '202', 'Administratively Approved', 'Y', '50', 'DARKGRAY', NOW(), 0, UUID(),'admin','TEXT','25','HEADER','CENTER')
/
INSERT INTO SEQ_WATERMARK_ID VALUES(NULL)
/
INSERT INTO WATERMARK (WATERMARK_ID,GROUP_NAME, STATUS_CODE, WATERMARK_TEXT, WATERMARK_STATUS, FONT_SIZE, FONT_COLOUR, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID, UPDATE_USER, WATERMARK_TYPE, POSITION_FONT, POSITION, ALIGNMENT)
VALUES ((SELECT (MAX(ID)) FROM SEQ_WATERMARK_ID),'IACUC', '203', 'Administratively Incomplete', 'Y', '50', 'DARKGRAY', NOW(), 0, UUID(),'admin','TEXT','25','HEADER','CENTER')
/
INSERT INTO SEQ_WATERMARK_ID VALUES(NULL)
/
INSERT INTO WATERMARK (WATERMARK_ID,GROUP_NAME, STATUS_CODE, WATERMARK_TEXT, WATERMARK_STATUS, FONT_SIZE, FONT_COLOUR, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID, UPDATE_USER, WATERMARK_TYPE, POSITION_FONT, POSITION, ALIGNMENT)
VALUES ((SELECT (MAX(ID)) FROM SEQ_WATERMARK_ID),'IACUC', '300', 'IACUC Review Not Required', 'Y', '50', 'DARKGRAY', NOW(), 0, UUID(),'admin','TEXT','25','HEADER','CENTER')
/
INSERT INTO SEQ_WATERMARK_ID VALUES(NULL)
/
INSERT INTO WATERMARK (WATERMARK_ID,GROUP_NAME, STATUS_CODE, WATERMARK_TEXT, WATERMARK_STATUS, FONT_SIZE, FONT_COLOUR, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID, UPDATE_USER, WATERMARK_TYPE, POSITION_FONT, POSITION, ALIGNMENT)
VALUES ((SELECT (MAX(ID)) FROM SEQ_WATERMARK_ID),'IACUC', '302', 'Administratively Withdrawn', 'Y', '50', 'DARKGRAY', NOW(), 0, UUID(),'admin','TEXT','25','HEADER','CENTER')
/
INSERT INTO SEQ_WATERMARK_ID VALUES(NULL)
/
INSERT INTO WATERMARK (WATERMARK_ID,GROUP_NAME, STATUS_CODE, WATERMARK_TEXT, WATERMARK_STATUS, FONT_SIZE, FONT_COLOUR, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID, UPDATE_USER, WATERMARK_TYPE, POSITION_FONT, POSITION, ALIGNMENT)
VALUES ((SELECT (MAX(ID)) FROM SEQ_WATERMARK_ID),'IACUC', '303', 'Disapproved', 'Y', '50', 'DARKGRAY', NOW(), 0, UUID(),'admin','TEXT','25','HEADER','CENTER')
/
INSERT INTO SEQ_WATERMARK_ID VALUES(NULL)
/
INSERT INTO WATERMARK (WATERMARK_ID,GROUP_NAME, STATUS_CODE, WATERMARK_TEXT, WATERMARK_STATUS, FONT_SIZE, FONT_COLOUR, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID, UPDATE_USER, WATERMARK_TYPE, POSITION_FONT, POSITION, ALIGNMENT)
VALUES ((SELECT (MAX(ID)) FROM SEQ_WATERMARK_ID),'IACUC', '304', 'Suspended', 'Y', '50', 'DARKGRAY', NOW(), 0, UUID(),'admin','TEXT','25','HEADER','CENTER')
/
INSERT INTO SEQ_WATERMARK_ID VALUES(NULL)
/
INSERT INTO WATERMARK (WATERMARK_ID,GROUP_NAME, STATUS_CODE, WATERMARK_TEXT, WATERMARK_STATUS, FONT_SIZE, FONT_COLOUR, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID, UPDATE_USER, WATERMARK_TYPE, POSITION_FONT, POSITION, ALIGNMENT)
VALUES ((SELECT (MAX(ID)) FROM SEQ_WATERMARK_ID),'IACUC', '305', 'Deactivated', 'Y', '50', 'DARKGRAY', NOW(), 0, UUID(),'admin','TEXT','25','HEADER','CENTER')
/
INSERT INTO SEQ_WATERMARK_ID VALUES(NULL)
/
INSERT INTO WATERMARK (WATERMARK_ID,GROUP_NAME, STATUS_CODE, WATERMARK_TEXT, WATERMARK_STATUS, FONT_SIZE, FONT_COLOUR, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID, UPDATE_USER, WATERMARK_TYPE, POSITION_FONT, POSITION, ALIGNMENT)
VALUES ((SELECT (MAX(ID)) FROM SEQ_WATERMARK_ID),'IACUC', '306', 'Administratively Deactivated', 'Y', '50', 'DARKGRAY', NOW(), 0, UUID(),'admin','TEXT','25','HEADER','CENTER')
/
INSERT INTO SEQ_WATERMARK_ID VALUES(NULL)
/
INSERT INTO WATERMARK (WATERMARK_ID,GROUP_NAME, STATUS_CODE, WATERMARK_TEXT, WATERMARK_STATUS, FONT_SIZE, FONT_COLOUR, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID, UPDATE_USER, WATERMARK_TYPE, POSITION_FONT, POSITION, ALIGNMENT)
VALUES ((SELECT (MAX(ID)) FROM SEQ_WATERMARK_ID),'IACUC', '307', 'Terminated', 'Y', '50', 'DARKGRAY', NOW(), 0, UUID(),'admin','TEXT','25','HEADER','CENTER')
/
INSERT INTO SEQ_WATERMARK_ID VALUES(NULL)
/
INSERT INTO WATERMARK (WATERMARK_ID,GROUP_NAME, STATUS_CODE, WATERMARK_TEXT, WATERMARK_STATUS, FONT_SIZE, FONT_COLOUR, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID, UPDATE_USER, WATERMARK_TYPE, POSITION_FONT, POSITION, ALIGNMENT)
VALUES ((SELECT (MAX(ID)) FROM SEQ_WATERMARK_ID),'IACUC', '308', 'Expired', 'Y', '50', 'DARKGRAY', NOW(), 0, UUID(),'admin','TEXT','25','HEADER','CENTER')
/
INSERT INTO SEQ_WATERMARK_ID VALUES(NULL)
/
INSERT INTO WATERMARK (WATERMARK_ID,GROUP_NAME, STATUS_CODE, WATERMARK_TEXT, WATERMARK_STATUS, FONT_SIZE, FONT_COLOUR, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID, UPDATE_USER, WATERMARK_TYPE, POSITION_FONT, POSITION, ALIGNMENT)
VALUES ((SELECT (MAX(ID)) FROM SEQ_WATERMARK_ID),'IACUC', '309', 'Abandoned', 'Y', '50', 'DARKGRAY', NOW(), 0, UUID(),'admin','TEXT','25','HEADER','CENTER');
/
DELIMITER ;

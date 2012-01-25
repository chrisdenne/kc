-- Insert the new Delete Protocol permission data

INSERT INTO KRIM_PERM_T 
(
	PERM_ID, 
	PERM_TMPL_ID, 
	NMSPC_CD, 
	NM,
	DESC_TXT,
	ACTV_IND, 
	OBJ_ID
) 
VALUES 
(
	KRIM_PERM_ID_BS_S.NEXTVAL,
 	(SELECT PERM_TMPL_ID FROM KRIM_PERM_TMPL_T WHERE NMSPC_CD = 'KC-IDM' AND NM = 'Edit Document Section'),
	'KC-PROTOCOL',
	'Delete Protocol',
	'Delete Protocol Document',
	'Y',
	SYS_GUID()
)
/


INSERT INTO KRIM_PERM_ATTR_DATA_T 
(
	ATTR_DATA_ID, 
	PERM_ID,
	KIM_TYP_ID,
	KIM_ATTR_DEFN_ID, 
	ATTR_VAL, 
	OBJ_ID
) 
VALUES 
(
	KRIM_ATTR_DATA_ID_BS_S.NEXTVAL, 
	KRIM_PERM_ID_BS_S.CURRVAL, 
	(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'Document Section'),
	(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'sectionName'),
	'protocol', 
	SYS_GUID()
)
/


INSERT INTO KRIM_PERM_ATTR_DATA_T 
(
	ATTR_DATA_ID,
	PERM_ID,
 	KIM_TYP_ID, 
	KIM_ATTR_DEFN_ID, 
	ATTR_VAL, 
	OBJ_ID
) 
VALUES 
(
	KRIM_ATTR_DATA_ID_BS_S.NEXTVAL,
 	KRIM_PERM_ID_BS_S.CURRVAL,
 	(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'Document Section'), 
	(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'), 
	'ProtocolDocument', 
	SYS_GUID()
)
/


-- Insert the new Protocol Deleter role data

INSERT INTO KRIM_ROLE_T 
(
	ROLE_ID,
	NMSPC_CD,
	ROLE_NM,
	DESC_TXT,
	KIM_TYP_ID,
	ACTV_IND,
	LAST_UPDT_DT,
	VER_NBR,
	OBJ_ID
)
VALUES 
(
	KRIM_ROLE_ID_BS_S.NEXTVAL,
	'KC-PROTOCOL',
	'Protocol Deleter',
	'Protocol Deleter',
	(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'Unit'),
	'Y',
	NULL,
	1,
	SYS_GUID()
)
/

-- Insert the role-permission association data
-- for the newly created Protocol Deleter role

INSERT INTO KRIM_ROLE_PERM_T 
(
	ROLE_PERM_ID,
	ROLE_ID,
	PERM_ID,
	ACTV_IND,
	VER_NBR,
	OBJ_ID
	
) 
VALUES 
(
	KRIM_ROLE_PERM_ID_BS_S.NEXTVAL,
	KRIM_ROLE_ID_BS_S.CURRVAL,
	KRIM_PERM_ID_BS_S.CURRVAL,
	'Y',
	1,
	SYS_GUID()
)
/


-- Insert the role-permission association data
-- for Protocol Aggregator and IRB Administrator roles

INSERT INTO KRIM_ROLE_PERM_T 
(
	ROLE_PERM_ID,
	ROLE_ID,
	PERM_ID,
	ACTV_IND,
	VER_NBR,
	OBJ_ID
)
VALUES 
(
	KRIM_ROLE_PERM_ID_BS_S.NEXTVAL,
	(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Protocol Aggregator' AND NMSPC_CD='KC-PROTOCOL'),
	KRIM_PERM_ID_BS_S.CURRVAL,
	'Y',
	1,
	SYS_GUID()
)
/

INSERT INTO KRIM_ROLE_PERM_T 
(
	ROLE_PERM_ID,
	ROLE_ID,
	PERM_ID,
	ACTV_IND,
	VER_NBR,
	OBJ_ID
)
VALUES 
(
	KRIM_ROLE_PERM_ID_BS_S.NEXTVAL,
	(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'IRB Administrator' AND NMSPC_CD='KC-UNT'),
	KRIM_PERM_ID_BS_S.CURRVAL,
	'Y',
	1,
	SYS_GUID()
)
/

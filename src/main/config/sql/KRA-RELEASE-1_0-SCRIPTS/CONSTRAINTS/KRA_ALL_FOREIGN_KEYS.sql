ALTER TABLE NARRATIVE_ATTACHMENT ADD (CONSTRAINT FK_NARRATIVE_ATTACHMENT_KRA FOREIGN KEY (
	PROPOSAL_NUMBER,MODULE_NUMBER)
	 REFERENCES NARRATIVE (PROPOSAL_NUMBER,MODULE_NUMBER)
	 ON DELETE CASCADE)
/ 
ALTER TABLE STATE_CODE ADD (CONSTRAINT FK_STATE_CODE_COUNTRY FOREIGN KEY (
	COUNTRY_CODE)
	 REFERENCES COUNTRY_CODE (COUNTRY_CODE)
	 )
/ 
ALTER TABLE SPONSOR_FORMS ADD (CONSTRAINT FK_SPONSOR_FORMS FOREIGN KEY (
	SPONSOR_CODE)
	 REFERENCES SPONSOR (SPONSOR_CODE)
	 )
/ 
ALTER TABLE SPONSOR_FORM_TEMPLATES ADD (CONSTRAINT FK_SPONSOR_FORM_TEMPLATES FOREIGN KEY (
	SPONSOR_CODE,PACKAGE_NUMBER)
	 REFERENCES SPONSOR_FORMS (SPONSOR_CODE,PACKAGE_NUMBER)
	 )
/ 
ALTER TABLE VALID_CE_RATE_TYPES ADD (CONSTRAINT FK_VALID_CE_RATE_TYPES_KRA FOREIGN KEY (
	RATE_CLASS_CODE,RATE_TYPE_CODE)
	 REFERENCES RATE_TYPE (RATE_CLASS_CODE,RATE_TYPE_CODE)
	 )
/ 
ALTER TABLE VALID_CE_RATE_TYPES ADD (CONSTRAINT FK_VALID_CE_RATE_TYPES_CE_KRA FOREIGN KEY (
	COST_ELEMENT)
	 REFERENCES COST_ELEMENT (COST_ELEMENT)
	 )
/ 
ALTER TABLE SPONSOR ADD (CONSTRAINT FK_SPONSOR_TYPE_CODE_KRA FOREIGN KEY (
	SPONSOR_TYPE_CODE)
	 REFERENCES SPONSOR_TYPE (SPONSOR_TYPE_CODE)
	 )
/ 
ALTER TABLE SPONSOR ADD (CONSTRAINT FK_SPONSOR_ROLODEX_KRA FOREIGN KEY (
	ROLODEX_ID)
	 REFERENCES ROLODEX (ROLODEX_ID)
	 )
/ 
ALTER TABLE NARRATIVE ADD (CONSTRAINT FK_NARRATIVE_TYPE_CODE_KRA FOREIGN KEY (
	NARRATIVE_TYPE_CODE)
	 REFERENCES NARRATIVE_TYPE (NARRATIVE_TYPE_CODE)
	 )
/ 
ALTER TABLE NARRATIVE ADD (CONSTRAINT FK_NARRATIVE_STATUS_CODE_KRA FOREIGN KEY (
	MODULE_STATUS_CODE)
	 REFERENCES NARRATIVE_STATUS (NARRATIVE_STATUS_CODE)
	 )
/ 
ALTER TABLE NARRATIVE ADD (CONSTRAINT FK_NARRATIVE_KRA FOREIGN KEY (
	PROPOSAL_NUMBER)
	 REFERENCES EPS_PROPOSAL (PROPOSAL_NUMBER)
	 )
/ 
ALTER TABLE NARRATIVE_USER_RIGHTS ADD (CONSTRAINT FK_NARRATIVE_USER_RIGHTS_KRA FOREIGN KEY (
	PROPOSAL_NUMBER,MODULE_NUMBER)
	 REFERENCES NARRATIVE (PROPOSAL_NUMBER,MODULE_NUMBER)
	 )
/ 
ALTER TABLE FP_DOC_TYPE_T ADD (CONSTRAINT FP_DOC_TYPE_TR1 FOREIGN KEY (
	FDOC_GRP_CD)
	 REFERENCES FP_DOC_GROUP_T (FDOC_GRP_CD)
	 )
/ 
ALTER TABLE SPONSOR_HIERARCHY ADD (CONSTRAINT FK_SPONSOR_HIERARCHY_KRA FOREIGN KEY (
	SPONSOR_CODE)
	 REFERENCES SPONSOR (SPONSOR_CODE)
	 ON DELETE CASCADE)
/ 
ALTER TABLE ORGANIZATION_TYPE ADD (CONSTRAINT FK_ORGANIZATION_TYPE_KRA FOREIGN KEY (
	ORGANIZATION_ID)
	 REFERENCES ORGANIZATION (ORGANIZATION_ID)
	 )
/ 
ALTER TABLE ORGANIZATION_TYPE ADD (CONSTRAINT FK_ORGANIZATION_TYPE_LIST_KRA FOREIGN KEY (
	ORGANIZATION_TYPE_CODE)
	 REFERENCES ORGANIZATION_TYPE_LIST (ORGANIZATION_TYPE_CODE)
	 )
/ 

ALTER TABLE EN_WRKGRP_EXT_DTA_T ADD (CONSTRAINT EN_WRKGRP_EXT_DTA_TR1 FOREIGN KEY (
	WRKGRP_EXT_ID)
	 REFERENCES EN_WRKGRP_EXT_T (WRKGRP_EXT_ID)
	 )
/ 
ALTER TABLE EN_WRKGRP_EXT_T ADD (CONSTRAINT EN_WRKGRP_EXT_TR1 FOREIGN KEY (
	WRKGRP_ID,WRKGRP_VER_NBR)
	 REFERENCES EN_WRKGRP_T (WRKGRP_ID,WRKGRP_VER_NBR)
	 )
/ 
ALTER TABLE EN_WRKGRP_EXT_T ADD (CONSTRAINT EN_WRKGRP_EXT_TR2 FOREIGN KEY (
	WRKGRP_TYP_ATTRIB_ID)
	 REFERENCES EN_WRKGRP_TYP_ATTRIB_T (WRKGRP_TYP_ATTRIB_ID)
	 )
/ 
ALTER TABLE EN_WRKGRP_TYP_ATTRIB_T ADD (CONSTRAINT EN_WRKGRP_TYP_ATTRIB_TR1 FOREIGN KEY (
	WRKGRP_TYP_ID)
	 REFERENCES EN_WRKGRP_TYP_T (WRKGRP_TYP_ID)
	 )
/ 
ALTER TABLE EN_WRKGRP_TYP_ATTRIB_T ADD (CONSTRAINT EN_WRKGRP_TYP_ATTRIB_TR2 FOREIGN KEY (
	ATTRIB_ID)
	 REFERENCES EN_RULE_ATTRIB_T (RULE_ATTRIB_ID)
	 )
/ 
ALTER TABLE EN_RTE_NODE_CFG_PARM_T ADD (CONSTRAINT EN_RTE_NODE_CFG_PARM_TR1 FOREIGN KEY (
	RTE_NODE_CFG_PARM_ND)
	 REFERENCES EN_RTE_NODE_T (RTE_NODE_ID)
	 )
/ 
ALTER TABLE EN_RULE_BASE_VAL_T ADD (CONSTRAINT EN_RULE_BASE_VAL_TR1 FOREIGN KEY (
	RULE_EXPR_ID)
	 REFERENCES EN_RULE_EXPR_T (RULE_EXPR_ID)
	 )
/ 

ALTER TABLE FP_MAINTENANCE_DOCUMENT_T ADD (CONSTRAINT FP_MAINTENANCE_DOCUMENT_TR1 FOREIGN KEY (
	FDOC_NBR)
	 REFERENCES FP_DOC_HEADER_T (FDOC_NBR)
	 )
/ 
ALTER TABLE KR_QRTZ_BLOB_TRIGGERS ADD (CONSTRAINT KR_QRTZ_BLOB_TRIGGERS_TR1 FOREIGN KEY (
	TRIGGER_NAME,TRIGGER_GROUP)
	 REFERENCES KR_QRTZ_TRIGGERS (TRIGGER_NAME,TRIGGER_GROUP)
	 )
/ 
ALTER TABLE KR_QRTZ_TRIGGERS ADD (CONSTRAINT KR_QRTZ_TRIGGERS_TR1 FOREIGN KEY (
	JOB_NAME,JOB_GROUP)
	 REFERENCES KR_QRTZ_JOB_DETAILS (JOB_NAME,JOB_GROUP)
	 )
/ 
ALTER TABLE KRA_USER ADD (CONSTRAINT FK_USER_UNIT_NUMBER_KRA FOREIGN KEY (
	UNIT_NUMBER)
	 REFERENCES UNIT (UNIT_NUMBER)
	 )
/ 
ALTER TABLE KR_QRTZ_CRON_TRIGGERS ADD (CONSTRAINT KR_QRTZ_CRON_TRIGGERS_TR1 FOREIGN KEY (
	TRIGGER_NAME,TRIGGER_GROUP)
	 REFERENCES KR_QRTZ_TRIGGERS (TRIGGER_NAME,TRIGGER_GROUP)
	 )
/ 
ALTER TABLE KR_QRTZ_JOB_LISTENERS ADD (CONSTRAINT KR_QRTZ_JOB_LISTENERS_TR1 FOREIGN KEY (
	JOB_NAME,JOB_GROUP)
	 REFERENCES KR_QRTZ_JOB_DETAILS (JOB_NAME,JOB_GROUP)
	 )
/ 
ALTER TABLE KR_QRTZ_SIMPLE_TRIGGERS ADD (CONSTRAINT KR_QRTZ_SIMPLE_TRIGGERS FOREIGN KEY (
	TRIGGER_NAME,TRIGGER_GROUP)
	 REFERENCES KR_QRTZ_TRIGGERS (TRIGGER_NAME,TRIGGER_GROUP)
	 )
/ 
ALTER TABLE KR_QRTZ_TRIGGER_LISTENERS ADD (CONSTRAINT KR_QRTZ_TRIGGER_LISTENERS_TR1 FOREIGN KEY (
	TRIGGER_NAME,TRIGGER_GROUP)
	 REFERENCES KR_QRTZ_TRIGGERS (TRIGGER_NAME,TRIGGER_GROUP)
	 )
/ 
ALTER TABLE KIM_GROUPS_GROUPS_T ADD (CONSTRAINT KIM_GROUPS_GROUPS_FK1 FOREIGN KEY (
	PARENT_GROUP_ID)
	 REFERENCES KIM_GROUPS_T (ID)
	 )
/ 
ALTER TABLE KIM_GROUPS_GROUPS_T ADD (CONSTRAINT KIM_GROUPS_GROUPS_FK2 FOREIGN KEY (
	MEMBER_GROUP_ID)
	 REFERENCES KIM_GROUPS_T (ID)
	 )
/ 
ALTER TABLE KIM_GROUPS_PERSONS_T ADD (CONSTRAINT KIM_GROUPS_PERSONS_FK1 FOREIGN KEY (
	GROUP_ID)
	 REFERENCES KIM_GROUPS_T (ID)
	 )
/ 
ALTER TABLE KIM_GROUPS_PERSONS_T ADD (CONSTRAINT KIM_GROUPS_PERSONS_FK2 FOREIGN KEY (
	PERSON_ID)
	 REFERENCES KIM_PERSONS_T (ID)
	 )
/ 
ALTER TABLE KIM_GROUP_ATTRIBUTES_T ADD (CONSTRAINT KIM_GROUP_ATTRIBUTES_FK1 FOREIGN KEY (
	GROUP_ID)
	 REFERENCES KIM_GROUPS_T (ID)
	 )
/ 
ALTER TABLE KIM_GROUP_ATTRIBUTES_T ADD (CONSTRAINT KIM_GROUP_ATTRIBUTES_FK2 FOREIGN KEY (
	ATTRIBUTE_TYPE_ID)
	 REFERENCES KIM_ATTRIBUTE_TYPES_T (ID)
	 )
/ 
ALTER TABLE KIM_NAMESPACE_DFLT_ATTRIBS_T ADD (CONSTRAINT KIM_NMSPCE_DFLT_ATTR_FK1 FOREIGN KEY (
	NAMESPACE_ID)
	 REFERENCES KIM_NAMESPACES_T (ID)
	 )
/ 
ALTER TABLE KIM_NAMESPACE_DFLT_ATTRIBS_T ADD (CONSTRAINT KIM_NMSPCE_DFLT_ATTR_FK2 FOREIGN KEY (
	ATTRIBUTE_TYPE_ID)
	 REFERENCES KIM_ATTRIBUTE_TYPES_T (ID)
	 )
/ 
ALTER TABLE KIM_PERMISSIONS_T ADD (CONSTRAINT KIM_PERMISSIONS_FK1 FOREIGN KEY (
	NAMESPACE_ID)
	 REFERENCES KIM_NAMESPACES_T (ID)
	 )
/ 
ALTER TABLE KIM_PERSON_ATTRIBUTES_T ADD (CONSTRAINT KIM_PERSON_ATTRIBUTES_FK1 FOREIGN KEY (
	PERSON_ID)
	 REFERENCES KIM_PERSONS_T (ID)
	 )
/ 
ALTER TABLE KIM_PERSON_ATTRIBUTES_T ADD (CONSTRAINT KIM_PERSON_ATTRIBUTES_FK2 FOREIGN KEY (
	ATTRIBUTE_TYPE_ID)
	 REFERENCES KIM_ATTRIBUTE_TYPES_T (ID)
	 )
/ 
ALTER TABLE KIM_PERSON_ATTRIBUTES_T ADD (CONSTRAINT KIM_PERSON_ATTRIBUTES_FK3 FOREIGN KEY (
	SPONSOR_NAMESPACE_ID)
	 REFERENCES KIM_NAMESPACES_T (ID)
	 )
/ 
ALTER TABLE KIM_ROLES_PERMISSIONS_T ADD (CONSTRAINT KIM_ROLES_PERMISSIONS_FK1 FOREIGN KEY (
	ROLE_ID)
	 REFERENCES KIM_ROLES_T (ID)
	 )
/ 
ALTER TABLE KIM_ROLES_PERMISSIONS_T ADD (CONSTRAINT KIM_ROLES_PERMISSIONS_FK2 FOREIGN KEY (
	PERMISSION_ID)
	 REFERENCES KIM_PERMISSIONS_T (ID)
	 )
/ 
ALTER TABLE KIM_ROLE_ATTRIBUTES_T ADD (CONSTRAINT KIM_ROLE_ATTRIBUTES_FK1 FOREIGN KEY (
	ROLE_ID)
	 REFERENCES KIM_ROLES_T (ID)
	 )
/ 
ALTER TABLE KIM_ROLE_ATTRIBUTES_T ADD (CONSTRAINT KIM_ROLE_ATTRIBUTES_FK2 FOREIGN KEY (
	ATTRIBUTE_TYPE_ID)
	 REFERENCES KIM_ATTRIBUTE_TYPES_T (ID)
	 )
/ 
ALTER TABLE KIM_ROLES_PERSONS_QUAL_T ADD (CONSTRAINT KIM_ROLES_PERSONS_QUAL_FK1 FOREIGN KEY (
	ROLE_ID)
	 REFERENCES KIM_ROLES_T (ID)
	 )
/ 
ALTER TABLE KIM_ROLES_PERSONS_QUAL_T ADD (CONSTRAINT KIM_ROLES_PERSONS_QUAL_FK2 FOREIGN KEY (
	PERSON_ID)
	 REFERENCES KIM_PERSONS_T (ID)
	 )
/ 
ALTER TABLE KIM_PERSON_QUAL_ATTR_T ADD (CONSTRAINT KIM_PERSON_QUAL_ATTR_FK1 FOREIGN KEY (
	ROLE_PERSON_ID)
	 REFERENCES KIM_ROLES_PERSONS_QUAL_T (ID)
	 )
/ 
ALTER TABLE KIM_ROLES_GROUPS_QUAL_T ADD (CONSTRAINT KIM_ROLES_GROUPS_QUAL_FK1 FOREIGN KEY (
	ROLE_ID)
	 REFERENCES KIM_ROLES_T (ID)
	 )
/ 
ALTER TABLE KIM_ROLES_GROUPS_QUAL_T ADD (CONSTRAINT KIM_ROLES_GROUPS_QUAL_FK2 FOREIGN KEY (
	GROUP_ID)
	 REFERENCES KIM_GROUPS_T (ID)
	 )
/ 
ALTER TABLE KIM_GROUP_QUAL_ATTR_T ADD (CONSTRAINT KIM_GROUP_QUAL_ATTR_FK1 FOREIGN KEY (
	ROLE_GROUP_ID)
	 REFERENCES KIM_ROLES_GROUPS_QUAL_T (ID)
	 )
/ 

ALTER TABLE EPS_PROP_ABSTRACT ADD (CONSTRAINT FK_EPS_PROP_ABSTRACT_KRA FOREIGN KEY (
	PROPOSAL_NUMBER)
	 REFERENCES EPS_PROPOSAL (PROPOSAL_NUMBER)
	 )
/ 
ALTER TABLE EPS_PROP_ABSTRACT ADD (CONSTRAINT FK_EPS_PROP_ABSTRACT_TYPE_KRA FOREIGN KEY (
	ABSTRACT_TYPE_CODE)
	 REFERENCES ABSTRACT_TYPE (ABSTRACT_TYPE_CODE)
	 )
/ 
ALTER TABLE EPS_PROP_PERSON_BIO_ATTACHMENT ADD (CONSTRAINT FK1_EPS_PROP_PSN_BIO_ATT_KRA FOREIGN KEY (
	PROPOSAL_NUMBER,PROP_PERSON_NUMBER,BIO_NUMBER)
	 REFERENCES EPS_PROP_PERSON_BIO (PROPOSAL_NUMBER,PROP_PERSON_NUMBER,BIO_NUMBER)
	 ON DELETE CASCADE)
/ 
ALTER TABLE EPS_PROP_SPECIAL_REVIEW ADD (CONSTRAINT FK_EPS_PROP_SPECIAL_REVIEW_KRA FOREIGN KEY (
	PROPOSAL_NUMBER)
	 REFERENCES EPS_PROPOSAL (PROPOSAL_NUMBER)
	 )
/ 
ALTER TABLE EPS_PROP_SPECIAL_REVIEW ADD (CONSTRAINT FK_EPS_PROP_SP_APPROV_TYPE_KRA FOREIGN KEY (
	APPROVAL_TYPE_CODE)
	 REFERENCES SP_REV_APPROVAL_TYPE (APPROVAL_TYPE_CODE)
	 )
/ 
ALTER TABLE EPS_PROP_SPECIAL_REVIEW ADD (CONSTRAINT FK_EPS_PROP_SP_CODE_KRA FOREIGN KEY (
	SPECIAL_REVIEW_CODE)
	 REFERENCES SPECIAL_REVIEW (SPECIAL_REVIEW_CODE)
	 )
/ 
ALTER TABLE S2S_OPPORTUNITY ADD (CONSTRAINT FK_S2S_OPPORTUNITY_KRA1 FOREIGN KEY (
	REVISION_CODE)
	 REFERENCES S2S_REVISION_TYPE (S2S_REVISION_TYPE_CODE)
	 )
/ 
ALTER TABLE S2S_OPPORTUNITY ADD (CONSTRAINT FK_S2S_OPPORTUNITY_KRA2 FOREIGN KEY (
	PROPOSAL_NUMBER)
	 REFERENCES EPS_PROPOSAL (PROPOSAL_NUMBER)
	 )
/ 
ALTER TABLE S2S_APPLICATION ADD (CONSTRAINT FK_S2S_APPLICATION_KRA FOREIGN KEY (
	PROPOSAL_NUMBER)
	 REFERENCES EPS_PROPOSAL (PROPOSAL_NUMBER)
	 )
/ 
ALTER TABLE EPS_PROP_EXEMPT_NUMBER ADD (CONSTRAINT FK_EPS_PROP_EXEMPT_NUMBER_KRA FOREIGN KEY (
	PROPOSAL_NUMBER,SPECIAL_REVIEW_NUMBER)
	 REFERENCES EPS_PROP_SPECIAL_REVIEW (PROPOSAL_NUMBER,SPECIAL_REVIEW_NUMBER)
	 )
/ 
ALTER TABLE EPS_PROP_EXEMPT_NUMBER ADD (CONSTRAINT FK_EPS_PROP_EXEMPTION_TYPE_KRA FOREIGN KEY (
	EXEMPTION_TYPE_CODE)
	 REFERENCES EXEMPTION_TYPE (EXEMPTION_TYPE_CODE)
	 )
/ 
ALTER TABLE BUDGET_PERSONS ADD (CONSTRAINT FK_APPOINTMENT_TYPE_CODE_KRA FOREIGN KEY (
	APPOINTMENT_TYPE_CODE)
	 REFERENCES APPOINTMENT_TYPE (APPOINTMENT_TYPE_CODE)
	 )
/ 
ALTER TABLE EPS_PROP_RATES ADD (CONSTRAINT FK_EPS_PROP_RATES_ACTIVITY_KRA FOREIGN KEY (
	ACTIVITY_TYPE_CODE)
	 REFERENCES ACTIVITY_TYPE (ACTIVITY_TYPE_CODE)
	 )
/ 
ALTER TABLE EPS_PROP_RATES ADD (CONSTRAINT FK_EPS_PROP_RATES_CLASS_KRA FOREIGN KEY (
	RATE_CLASS_CODE,RATE_TYPE_CODE)
	 REFERENCES RATE_TYPE (RATE_CLASS_CODE,RATE_TYPE_CODE)
	 )
/ 
ALTER TABLE BUDGET_CATEGORY ADD (CONSTRAINT FK_BUDGET_CATEGORY_KRA FOREIGN KEY (
	CATEGORY_TYPE)
	 REFERENCES BUDGET_CATEGORY_TYPE (BUDGET_CATEGORY_TYPE_CODE)
	 )
/ 
ALTER TABLE S2S_OPP_FORMS ADD (CONSTRAINT FK_S2S_OPP_FORMS_KRA FOREIGN KEY (
	PROPOSAL_NUMBER)
	 REFERENCES EPS_PROPOSAL (PROPOSAL_NUMBER)
	 )
/ 
ALTER TABLE S2S_APP_SUBMISSION ADD (CONSTRAINT FK_S2S_APP_SUBMISSION_KRA FOREIGN KEY (
	PROPOSAL_NUMBER)
	 REFERENCES EPS_PROPOSAL (PROPOSAL_NUMBER)
	 )
/ 
ALTER TABLE S2S_APP_ATTACHMENTS ADD (CONSTRAINT FK_S2S_APP_ATTACHMENTS_KRA FOREIGN KEY (
	PROPOSAL_NUMBER)
	 REFERENCES EPS_PROPOSAL (PROPOSAL_NUMBER)
	 )
/ 
ALTER TABLE EPS_PROP_USER_ROLES ADD (CONSTRAINT FK_EPS_PROP_USER_ROLES_KRA FOREIGN KEY (
	PROPOSAL_NUMBER)
	 REFERENCES EPS_PROPOSAL (PROPOSAL_NUMBER)
	 )
/ 
ALTER TABLE EPS_PROP_USER_ROLES ADD (CONSTRAINT FK_USER_ID_KRA FOREIGN KEY (
	USER_ID)
	 REFERENCES PERSON (PERSON_ID)
	 )
/ 
ALTER TABLE EPS_PROP_PERS_YNQ ADD (CONSTRAINT FK_EPS_PROP_PERS_YNQ_ID_KRA FOREIGN KEY (
	QUESTION_ID)
	 REFERENCES YNQ (QUESTION_ID)
	 )
/ 
ALTER TABLE EPS_PROP_PERSON_BIO ADD (CONSTRAINT FK1_EPS_PROP_PERSON_BIO_KRA FOREIGN KEY (
	DOCUMENT_TYPE_CODE)
	 REFERENCES EPS_PROP_PER_DOC_TYPE (DOCUMENT_TYPE_CODE)
	 )
/ 
ALTER TABLE EPS_PROPOSAL ADD (CONSTRAINT FK_POST_SUB_STATUS_KRA FOREIGN KEY (
	POST_SUB_STATUS_CODE)
	 REFERENCES EPS_PROP_POST_SUB_STATUS (STATUS_CODE)
	 )
/ 
ALTER TABLE EPS_PROP_LOCATION ADD (CONSTRAINT FK_EPS_PROP_LOCATION_KRA FOREIGN KEY (
	PROPOSAL_NUMBER)
	 REFERENCES EPS_PROPOSAL (PROPOSAL_NUMBER)
	 )
/ 
ALTER TABLE EPS_PROP_LOCATION ADD (CONSTRAINT FK_EPS_PROP_LOCATION_RLDEX_KRA FOREIGN KEY (
	ROLODEX_ID)
	 REFERENCES ROLODEX (ROLODEX_ID)
	 )
/ 
ALTER TABLE EPS_PROP_SCIENCE_KEYWORD ADD (CONSTRAINT FK_EPS_PROP_SCIE_KEY_KEYW_KRA FOREIGN KEY (
	SCIENCE_KEYWORD_CODE)
	 REFERENCES SCIENCE_KEYWORD (SCIENCE_KEYWORD_CODE)
	 )
/ 
ALTER TABLE EPS_PROP_SCIENCE_KEYWORD ADD (CONSTRAINT FK_EPS_PROP_SCIE_KEY_PROP_KRA FOREIGN KEY (
	PROPOSAL_NUMBER)
	 REFERENCES EPS_PROPOSAL (PROPOSAL_NUMBER)
	 )
/ 
ALTER TABLE BUDGET_MODULAR ADD (CONSTRAINT FK_BUDGET_MODULAR_BP_KRA FOREIGN KEY (
	BUDGET_PERIOD_NUMBER)
	 REFERENCES BUDGET_PERIODS (BUDGET_PERIOD_NUMBER)
	 )
/ 
ALTER TABLE BUDGET_MODULAR ADD (CONSTRAINT FK_PROPOSAL_MODULAR_KRA FOREIGN KEY (
	PROPOSAL_NUMBER,VERSION_NUMBER)
	 REFERENCES BUDGET (PROPOSAL_NUMBER,VERSION_NUMBER)
	 )
/ 
ALTER TABLE BUDGET_MODULAR_IDC ADD (CONSTRAINT FK_BUDGET_MODULAR_IDC_KRA FOREIGN KEY (
	PROPOSAL_NUMBER,VERSION_NUMBER,BUDGET_PERIOD)
	 REFERENCES BUDGET_MODULAR (PROPOSAL_NUMBER,VERSION_NUMBER,BUDGET_PERIOD)
	 )
/ 
ALTER TABLE EPS_PROP_COST_SHARING ADD (CONSTRAINT FK_EPS_PROP_COST_SHARING_KRA FOREIGN KEY (
	PROPOSAL_NUMBER,BUDGET_VERSION_NUMBER)
	 REFERENCES BUDGET (PROPOSAL_NUMBER,VERSION_NUMBER)
	 )
/ 
ALTER TABLE BUDGET_PROJECT_INCOME ADD (CONSTRAINT FK_BUDGET_PROJ_INC_BUDGET_KRA FOREIGN KEY (
	PROPOSAL_NUMBER,BUDGET_VERSION_NUMBER)
	 REFERENCES BUDGET (PROPOSAL_NUMBER,VERSION_NUMBER)
	 )
/ 
ALTER TABLE BUDGET_PROJECT_INCOME ADD (CONSTRAINT FK_BUDGET_PROJ_INC_BP_KRA FOREIGN KEY (
	BUDGET_PERIOD_NUMBER)
	 REFERENCES BUDGET_PERIODS (BUDGET_PERIOD_NUMBER)
	 )
/ 
ALTER TABLE EPS_PROP_IDC_RATE ADD (CONSTRAINT FK_EPS_PROP_IDC_RATE_KRA FOREIGN KEY (
	PROPOSAL_NUMBER,BUDGET_VERSION_NUMBER)
	 REFERENCES BUDGET (PROPOSAL_NUMBER,VERSION_NUMBER)
	 )
/ 
ALTER TABLE EPS_PROPOSAL_BUDGET_STATUS ADD (CONSTRAINT FK_EPS_PROP_BUDGET_STATUS_KRA FOREIGN KEY (
	PROPOSAL_NUMBER)
	 REFERENCES EPS_PROPOSAL (PROPOSAL_NUMBER)
	 )
/ 
ALTER TABLE BUDGET_PERSONNEL_DETAILS ADD (CONSTRAINT FK_BUDGET_PER_DET_BGT_PER_KRA FOREIGN KEY (
	PROPOSAL_NUMBER,VERSION_NUMBER,PERSON_SEQUENCE_NUMBER)
	 REFERENCES BUDGET_PERSONS (PROPOSAL_NUMBER,VERSION_NUMBER,PERSON_SEQUENCE_NUMBER)
	 )
/ 
ALTER TABLE EPS_PROP_YNQ ADD (CONSTRAINT FK_EPS_PROP_YNQ_ID_KRA FOREIGN KEY (
	QUESTION_ID)
	 REFERENCES YNQ (QUESTION_ID)
	 )
/ 
ALTER TABLE EPS_PROP_YNQ ADD (CONSTRAINT FK_EPS_PROP_YNQ_KRA FOREIGN KEY (
	PROPOSAL_NUMBER)
	 REFERENCES EPS_PROPOSAL (PROPOSAL_NUMBER)
	 )
/ 
ALTER TABLE BUDGET ADD (CONSTRAINT FK_BUDGET_KRA FOREIGN KEY (
	PROPOSAL_NUMBER)
	 REFERENCES EPS_PROPOSAL (PROPOSAL_NUMBER)
	 )
/ 

ALTER TABLE NOTIFICATIONS ADD (CONSTRAINT NOTIFICATIONS_NOTIFICATIO_FK1 FOREIGN KEY (
	NOTIFICATION_CHANNEL_ID)
	 REFERENCES NOTIFICATION_CHANNELS (ID)
	 )
/ 
ALTER TABLE NOTIFICATIONS ADD (CONSTRAINT NOTIFICATIONS_NOTIFICATIO_FK2 FOREIGN KEY (
	CONTENT_TYPE_ID)
	 REFERENCES NOTIFICATION_CONTENT_TYPES (ID)
	 )
/ 
ALTER TABLE NOTIFICATIONS ADD (CONSTRAINT NOTIFICATIONS_NOTIFICATIO_FK3 FOREIGN KEY (
	PRIORITY_ID)
	 REFERENCES NOTIFICATION_PRIORITIES (ID)
	 )
/ 
ALTER TABLE NOTIFICATIONS ADD (CONSTRAINT NOTIFICATIONS_NOTIFICATIO_FK4 FOREIGN KEY (
	PRODUCER_ID)
	 REFERENCES NOTIFICATION_PRODUCERS (ID)
	 )
/ 
ALTER TABLE PERSON ADD (CONSTRAINT FK_PERSON_KIM_PERSON_ID FOREIGN KEY (
	KIM_PERSON_ID)
	 REFERENCES KIM_PERSONS_T (ID)
	 )
/ 
ALTER TABLE USER_ROLES ADD (CONSTRAINT FK_USER_ROLES_PERSON FOREIGN KEY (
	USER_ID)
	 REFERENCES PERSON (PERSON_ID)
	 )
/ 
ALTER TABLE USER_ROLES ADD (CONSTRAINT FK_USER_ROLES_UNIT FOREIGN KEY (
	UNIT_NUMBER)
	 REFERENCES UNIT (UNIT_NUMBER)
	 )
/ 
ALTER TABLE USER_ROLES ADD (CONSTRAINT FK_USER_ROLES_ROLE FOREIGN KEY (
	ROLE_ID)
	 REFERENCES ROLE (ROLE_ID)
	 )
/ 
ALTER TABLE INSTITUTE_LA_RATES ADD (CONSTRAINT FK_INSTITUTE_LA_RATES_UNIT_KRA FOREIGN KEY (
	UNIT_NUMBER)
	 REFERENCES UNIT (UNIT_NUMBER)
	 )
/ 
ALTER TABLE INSTITUTE_RATES ADD (CONSTRAINT FK_INSTITUTE_RATES_KRA FOREIGN KEY (
	RATE_CLASS_CODE,RATE_TYPE_CODE)
	 REFERENCES RATE_TYPE (RATE_CLASS_CODE,RATE_TYPE_CODE)
	 )
/ 
ALTER TABLE INSTITUTE_RATES ADD (CONSTRAINT FK_INST_RATES_ACTIVITY_KRA FOREIGN KEY (
	ACTIVITY_TYPE_CODE)
	 REFERENCES ACTIVITY_TYPE (ACTIVITY_TYPE_CODE)
	 )
/ 
ALTER TABLE INSTITUTE_RATES ADD (CONSTRAINT FK_INST_RATES_UNIT_NUMBER_KRA FOREIGN KEY (
	UNIT_NUMBER)
	 REFERENCES UNIT (UNIT_NUMBER)
	 )
/ 
ALTER TABLE COST_ELEMENT ADD (CONSTRAINT FK_COST_ELEMENT_CATEGORY_KRA FOREIGN KEY (
	BUDGET_CATEGORY_CODE)
	 REFERENCES BUDGET_CATEGORY (BUDGET_CATEGORY_CODE)
	 )
/ 
ALTER TABLE NOTIFICATION_CHANNEL_PRODUCERS ADD (CONSTRAINT NOTIFICATION_CHANNEL_PROD_FK1 FOREIGN KEY (
	CHANNEL_ID)
	 REFERENCES NOTIFICATION_CHANNELS (ID)
	 )
/ 
ALTER TABLE NOTIFICATION_CHANNEL_PRODUCERS ADD (CONSTRAINT NOTIFICATION_CHANNEL_PROD_FK2 FOREIGN KEY (
	PRODUCER_ID)
	 REFERENCES NOTIFICATION_PRODUCERS (ID)
	 )
/ 
ALTER TABLE NOTIFICATION_MSG_DELIVS ADD (CONSTRAINT NOTIF_MSG_DELIVS_FK1 FOREIGN KEY (
	NOTIFICATION_ID)
	 REFERENCES NOTIFICATIONS (ID)
	 )
/ 
ALTER TABLE NOTIFICATION_RECIPIENTS ADD (CONSTRAINT NOTIFICATION_RECIPIENTS_N_FK1 FOREIGN KEY (
	NOTIFICATION_ID)
	 REFERENCES NOTIFICATIONS (ID)
	 )
/ 
ALTER TABLE NOTIFICATION_RECIPIENTS_LISTS ADD (CONSTRAINT NOTIFICATION_RECIPIENTS_L_FK1 FOREIGN KEY (
	CHANNEL_ID)
	 REFERENCES NOTIFICATION_CHANNELS (ID)
	 )
/ 
ALTER TABLE NOTIFICATION_REVIEWERS ADD (CONSTRAINT NOTIFICATION_REVIEWERS_N_FK1 FOREIGN KEY (
	CHANNEL_ID)
	 REFERENCES NOTIFICATION_CHANNELS (ID)
	 )
/ 
ALTER TABLE NOTIFICATION_SENDERS ADD (CONSTRAINT NOTIFICATION_SENDERS_NOTI_FK1 FOREIGN KEY (
	NOTIFICATION_ID)
	 REFERENCES NOTIFICATIONS (ID)
	 )
/ 
ALTER TABLE USER_CHANNEL_SUBSCRIPTIONS ADD (CONSTRAINT USER_CHANNEL_SUBSCRIPTION_FK1 FOREIGN KEY (
	CHANNEL_ID)
	 REFERENCES NOTIFICATION_CHANNELS (ID)
	 )
/ 
ALTER TABLE USER_DELIVERER_CONFIG ADD (CONSTRAINT USER_DELIVERER_CONFIG_FK1 FOREIGN KEY (
	CHANNEL_ID)
	 REFERENCES NOTIFICATION_CHANNELS (ID)
	 )
/ 
ALTER TABLE TRV_ACCT ADD (CONSTRAINT TRV_ACCT_FK1 FOREIGN KEY (
	ACCT_FO_ID)
	 REFERENCES TRV_ACCT_FO (ACCT_FO_ID)
	 )
/ 
ALTER TABLE VALID_SP_REV_APPROVAL ADD (CONSTRAINT FK_VALID_SP_REV_APPROVAL_KRA FOREIGN KEY (
	SPECIAL_REVIEW_CODE)
	 REFERENCES SPECIAL_REVIEW (SPECIAL_REVIEW_CODE)
	 )
/ 
ALTER TABLE VALID_SP_REV_APPROVAL ADD (CONSTRAINT FK_VALID_SP_REV_APPROV_TP_KRA FOREIGN KEY (
	APPROVAL_TYPE_CODE)
	 REFERENCES SP_REV_APPROVAL_TYPE (APPROVAL_TYPE_CODE)
	 )
/ 
ALTER TABLE RATE_CLASS ADD (CONSTRAINT FK_RATE_CLASS_TYPE FOREIGN KEY (
	RATE_CLASS_TYPE)
	 REFERENCES RATE_CLASS_TYPE (RATE_CLASS_TYPE)
	 )
/ 
ALTER TABLE ROLODEX ADD (CONSTRAINT FK_ROLODEX_COUNTRY_KRA FOREIGN KEY (
	COUNTRY_CODE)
	 REFERENCES COUNTRY_CODE (COUNTRY_CODE)
	 )
/ 
ALTER TABLE SH_ATT_T ADD (CONSTRAINT SH_ATT_TR1 FOREIGN KEY (
	NTE_ID)
	 REFERENCES SH_NTE_T (NTE_ID)
	 )
/ 
ALTER TABLE SH_LOCK_T ADD (CONSTRAINT SH_LOCK_TR1 FOREIGN KEY (
	TRN_SMPHR_TYP_CD)
	 REFERENCES SH_LOCK_TYP_DESC_T (TRN_SMPHR_TYP_CD)
	 )
/ 
ALTER TABLE SH_NTE_T ADD (CONSTRAINT SH_NTE_TR1 FOREIGN KEY (
	NTE_TYP_CD)
	 REFERENCES SH_NTE_TYP_T (NTE_TYP_CD)
	 )
/ 
ALTER TABLE SH_PARM_DTL_TYP_T ADD (CONSTRAINT SH_PARM_DTL_TYP_TR1 FOREIGN KEY (
	SH_PARM_NMSPC_CD)
	 REFERENCES SH_PARM_NMSPC_T (SH_PARM_NMSPC_CD)
	 )
/ 
ALTER TABLE SH_PARM_T ADD (CONSTRAINT SH_PARM_TR1 FOREIGN KEY (
	SH_PARM_NMSPC_CD)
	 REFERENCES SH_PARM_NMSPC_T (SH_PARM_NMSPC_CD)
	 )
/ 
ALTER TABLE SH_PARM_T ADD (CONSTRAINT SH_PARM_TR2 FOREIGN KEY (
	SH_PARM_TYP_CD)
	 REFERENCES SH_PARM_TYP_T (SH_PARM_TYP_CD)
	 )
/ 
ALTER TABLE ROLE_RIGHTS ADD (CONSTRAINT FK_ROLE_RIGHTS_ROLE FOREIGN KEY (
	ROLE_ID)
	 REFERENCES ROLE (ROLE_ID)
	 )
/ 
ALTER TABLE ROLE_RIGHTS ADD (CONSTRAINT FK_ROLE_RIGHTS_RIGHT FOREIGN KEY (
	RIGHT_ID)
	 REFERENCES RIGHTS (RIGHT_ID)
	 )
/ 
ALTER TABLE CUSTOM_ATTRIBUTE ADD (CONSTRAINT FK_CUST_ATTR_DATA_TYPE FOREIGN KEY (
	DATA_TYPE_CODE)
	 REFERENCES CUSTOM_ATTRIBUTE_DATA_TYPE (DATA_TYPE_CODE)
	 )
/ 
ALTER TABLE CUSTOM_ATTRIBUTE_DOC_VALUE ADD (CONSTRAINT FK_CUST_ATTR_DOC_VAL_CUST_ATTR FOREIGN KEY (
	CUSTOM_ATTRIBUTE_ID)
	 REFERENCES CUSTOM_ATTRIBUTE (ID)
	 )
/ 
ALTER TABLE CUSTOM_ATTRIBUTE_DOCUMENT ADD (CONSTRAINT FK_CUST_ATTR_DOC_DOC_TYPE FOREIGN KEY (
	DOCUMENT_TYPE_CODE)
	 REFERENCES FP_DOC_TYPE_T (FDOC_TYP_CD)
	 )
/ 
ALTER TABLE CUSTOM_ATTRIBUTE_DOCUMENT ADD (CONSTRAINT FK_CUST_ATTR_DOC_CUST_ATTR FOREIGN KEY (
	CUSTOM_ATTRIBUTE_ID)
	 REFERENCES CUSTOM_ATTRIBUTE (ID)
	 )
/ 
ALTER TABLE UNIT_ADMINISTRATOR ADD (CONSTRAINT FK1_UNIT_ADMINISTRATOR_KRA FOREIGN KEY (
	UNIT_NUMBER)
	 REFERENCES UNIT (UNIT_NUMBER)
	 )
/ 
ALTER TABLE UNIT_ADMINISTRATOR ADD (CONSTRAINT FK2_UNIT_ADMINISTRATOR_KRA FOREIGN KEY (
	UNIT_ADMINISTRATOR_TYPE_CODE)
	 REFERENCES UNIT_ADMINISTRATOR_TYPE (UNIT_ADMINISTRATOR_TYPE_CODE)
	 )
/ 
ALTER TABLE UNIT_ADMINISTRATOR ADD (CONSTRAINT FK3_UNIT_ADMINISTRATOR_KRA FOREIGN KEY (
	PERSON_ID)
	 REFERENCES PERSON (PERSON_ID)
	 )
/ 
ALTER TABLE ORGANIZATION_AUDIT ADD (CONSTRAINT FK_ORGANIZATION_AUDIT_KRA FOREIGN KEY (
	ORGANIZATION_ID)
	 REFERENCES ORGANIZATION (ORGANIZATION_ID)
	 ON DELETE CASCADE)
/ 
ALTER TABLE ORGANIZATION_IDC ADD (CONSTRAINT FK_ORGANIZATION_IDC_KRA FOREIGN KEY (
	ORGANIZATION_ID)
	 REFERENCES ORGANIZATION (ORGANIZATION_ID)
	 ON DELETE CASCADE)
/ 
ALTER TABLE ORGANIZATION_YNQ ADD (CONSTRAINT FK_ORGANIZATION_YNQ_KRA FOREIGN KEY (
	ORGANIZATION_ID)
	 REFERENCES ORGANIZATION (ORGANIZATION_ID)
	 )
/ 
ALTER TABLE ORGANIZATION_YNQ ADD (CONSTRAINT FK_ORGANIZATION_YNQ_ID_KRA FOREIGN KEY (
	QUESTION_ID)
	 REFERENCES YNQ (QUESTION_ID)
	 )
/ 
ALTER TABLE YNQ_EXPLANATION ADD (CONSTRAINT FK_YNQ_EXPLANATION_TYPE_KRA FOREIGN KEY (
	EXPLANATION_TYPE)
	 REFERENCES YNQ_EXPLANATION_TYPE (EXPLANATION_TYPE)
	 )
/ 
ALTER TABLE YNQ_EXPLANATION ADD (CONSTRAINT FK_YNQ_EXPLANATION_KRA FOREIGN KEY (
	QUESTION_ID)
	 REFERENCES YNQ (QUESTION_ID)
	 )
/ 


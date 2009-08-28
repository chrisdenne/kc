INSERT INTO KIM_NAMESPACES_T (ID, NAME, DESCRIPTION)
VALUES (1, 'KIM', 'KIM Namespace') ;

INSERT INTO KIM_NAMESPACES_T (ID, NAME, DESCRIPTION)
VALUES (2, 'KRA', 'KRA Namespace') ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (1, 'CREATE_PROPOSAL', 'Create Proposal Development Document', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (2, 'MODIFY_PROPOSAL', 'Modify Proposal Development Document', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (3, 'VIEW_PROPOSAL', 'View Proposal Development Document', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (4, 'MODIFY_NARRATIVE', 'Create/Modify Proposal Narrative', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (5, 'VIEW_NARRATIVE', 'View Proposal Narrative', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (6, 'MODIFY_BUDGET', 'Create/Modify Proposal Budget', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (7, 'VIEW_BUDGET', 'View Proposal Budget', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (8, 'MAINTAIN_PROPOSAL_ACCESS', 'Assign Users to Proposal Roles', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (9, 'ALTER_PROPOSAL_DATA', 'Change proposal master data once the proposal is locked', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (10, 'PRINT_PROPOSAL', 'Print proposal on a sponsor specific path', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (11, 'CERTIFY', 'Certify', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (12, 'SUBMIT_TO_SPONSOR', 'Submit a Proposal to Grants.gov', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (13, 'SUBMIT_PROPOSAL', 'Submit a Proposal for approval', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (14, 'ADD_PROPOSAL_VIEWER', 'Assign User to Proposal Viewer Role', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (15, 'CREATE_PROTOCOL', 'Create Protocol Document', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (16, 'MODIFY_PROTOCOL', 'Modify Protocol Document', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (17, 'VIEW_PROTOCOL', 'View Protocol Document', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (18, 'MAINTAIN_PROTOCOL_ACCESS', 'Assign Users to Protocol Roles', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (19, 'ADD_PROTOCOL_NOTES', 'Add Protocol Notes', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (20, 'CREATE_AMMENDMENT', 'Create a new ammendment for a protocol', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (21, 'CREATE_RENEWAL', 'Create a new renewal for a protocol', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (22, 'MAINTAIN_PROTOCOL_RELATED_PROJ', 'Maintain protocol links to awards and proposals', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (23, 'EDIT_PROTOCOL_BILLABLE', 'Edit Billable field', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (24, 'ADD_COMMITTEE', 'Add new committees in a unit', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (25, 'ADMINSTRATIVE_CORRECTION', 'Perform Administrative Corrections on Protocols', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (26, 'GENERATE_AGENDA', 'Generate Agenda', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (27, 'GENERATE_MINUTES', 'Generate Minutes', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (28, 'GENERATE_SCHEDULE', 'Generate Schedule', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (29, 'MAINTAIN_IRB_CORRESP_TEMPLATE', 'Maintain correspondence templates for committees in a unit', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (30, 'MAINTAIN_MEMBERSHIPS', 'Maintain membership details in committees in a unit', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (31, 'MAINTAIN_MINUTES', 'Add/modify/delete minute entries in any schedule for committees in a unit', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (32, 'MAINTAIN_PROTOCOL_SUBMISSIONS', 'Modify Protocol Submission details', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (33, 'MAINTAIN_PROTO_REVIEW_COMMENTS', 'Maintain Protocol Review Comments', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (34, 'MODIFY_COMMITTEE', 'Modify existing committees in a unit', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (35, 'MODIFY_SCHEDULE', 'Modify schedule details for committees in a unit', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (36, 'PERFORM_IRB_ACTIONS_ON_PROTO', 'Perform any IRB action on a protocol submitted to a committee', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (37, 'VIEW_RESTRICTED_NOTES', 'View Restricted Notes in Protocols', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (38, 'VIEW_AGENDA', 'View Agenda', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (39, 'VIEW_COMMITTEE', 'View all committees in a unit', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (40, 'VIEW_MEMBER_DETAILS', 'View membership details for a member in a committee', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (41, 'VIEW_MINUTES', 'View Minutes', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (42, 'VIEW_SCHEDULE', 'View schedule details of committees in a unit', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (43, 'VIEW_ANY_PROPOSAL', 'View Any Proposal', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (44, 'APPROVE_AWARD_BUDGET', 'Approve Award Budget', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (45, 'CREATE_AWARD_BUDGET', 'Create Award Budget', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (46, 'MAINTAIN_AWARD_BUDGET_ROUTING', 'Maintain Award Budget Routing', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (47, 'POST_AWARD_BUDGET', 'Post Award Budget', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (48, 'SUBMIT_ANY_AWARD_BUDGET', 'Submit Any Award Budget', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (49, 'CREATE_AWARD', 'Create Award', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (50, 'MAINTAIN_REPORTING_REQUIREMENTS', 'Maintain Reporting Requirements', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (51, 'MODIFY_AWARD', 'Modify Award', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (52, 'VIEW_AWARD', 'View Award', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (53, 'MAINTAIN_NOTEPAD_ENTRIES', 'Maintain Notepad Entries', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (54, 'MODIFY_AWARD_BUDGET', 'Modify Award Budget', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (55, 'SUBMIT_AWARD_BUDGET', 'Submit Award Budget', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (56, 'VIEW_AWARD_BUDGET', 'View Award Budget', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (57, 'MAINTAIN_AWARD_DOCUMENTS', 'Maintain Award Documents', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (58, 'VIEW_AWARD_DOCUMENTS', 'View Award Documents', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (59, 'VIEW_AWARDS_AT_UNIT', 'View Award At Unit', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (60, 'VIEW_AWARD_TEMPLATE', 'View Award Template', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (61, 'SUBMIT_PROTOCOL', 'Submit a Protocol to IRB for review', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (62, 'MODIFY_ANY_PROTOCOL', 'Modify Any Protocol Document', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (63, 'MODIFY_QUESTIONNAIRE', 'Modify Questionnaire', 2) ;

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (64, 'VIEW_QUESTIONNAIRE', 'View Questionnaire', 2) ; 

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (65, 'VIEW_QUESTION', 'View Question', 2) ; 

INSERT INTO KIM_PERMISSIONS_T (ID, NAME, DESCRIPTION, NAMESPACE_ID)
VALUES (66, 'MODIFY_QUESTION', 'Modify Question', 2) ; 

INSERT INTO KIM_ROLE_TYPE_T (ROLE_TYPE_CODE, DESCRIPTION)
VALUES ('P', 'Proposal') ;

INSERT INTO KIM_ROLE_TYPE_T (ROLE_TYPE_CODE, DESCRIPTION)
VALUES ('O', 'OSP') ;

INSERT INTO KIM_ROLE_TYPE_T (ROLE_TYPE_CODE, DESCRIPTION)
VALUES ('D', 'Department') ;

INSERT INTO KIM_ROLE_TYPE_T (ROLE_TYPE_CODE, DESCRIPTION)
VALUES ('R', 'Protocol') ;

INSERT INTO KIM_ROLE_TYPE_T (ROLE_TYPE_CODE, DESCRIPTION)
VALUES ('A', 'AWARD') ;

INSERT INTO KIM_ROLES_T (ID, NAME, DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG)
VALUES (1, 'Proposal Creator', 'Proposal Creator', 'D', 'N') ;

INSERT INTO KIM_ROLES_T (ID, NAME, DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG)
VALUES (2, 'Aggregator', 'Proposal Aggregator', 'P', 'N') ;

INSERT INTO KIM_ROLES_T (ID, NAME, DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG)
VALUES (3, 'Narrative Writer', 'Proposal Narrative Writer', 'P', 'N') ;

INSERT INTO KIM_ROLES_T (ID, NAME, DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG)
VALUES (4, 'Budget Creator', 'Proposal Budget Creator', 'P', 'N') ;

INSERT INTO KIM_ROLES_T (ID, NAME, DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG)
VALUES (5, 'Viewer', 'Proposal Viewer', 'P', 'N') ;

INSERT INTO KIM_ROLES_T (ID, NAME, DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG)
VALUES (6, 'unassigned', 'Unassigned - no permissions', 'P', 'N') ;

INSERT INTO KIM_ROLES_T (ID, NAME, DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG)
VALUES (7, 'OSP Administrator', 'OSP Administrator', 'O', 'Y') ;

INSERT INTO KIM_ROLES_T (ID, NAME, DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG)
VALUES (8, 'Proposal Submission', 'Proposal Submission', 'O', 'Y') ;

INSERT INTO KIM_ROLES_T (ID, NAME, DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG)
VALUES (9, 'Protocol Creator', 'Protocol Creator', 'D', 'Y') ;

INSERT INTO KIM_ROLES_T (ID, NAME, DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG)
VALUES (10, 'Protocol Aggregator', 'Protocol Aggregator', 'R', 'N') ;

INSERT INTO KIM_ROLES_T (ID, NAME, DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG)
VALUES (11, 'Protocol Viewer', 'Protocol Viewer', 'R', 'N') ;

INSERT INTO KIM_ROLES_T (ID, NAME, DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG)
VALUES (12, 'IRB Administrator', 'IRB Administrator', 'D', 'Y') ;

INSERT INTO KIM_ROLES_T (ID, NAME, DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG)
VALUES (13, 'IRB Reviewer', 'IRB Reviewer', 'D', 'Y') ;

INSERT INTO KIM_ROLES_T (ID, NAME, DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG)
VALUES (14, 'Protocol Unassigned', 'Protocol Unassigned - no permissions', 'R', 'N') ;

INSERT INTO KIM_ROLES_T (ID, NAME, DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG)
VALUES (15, 'Application Administrator', 'Application Administrator', 'A', 'Y') ;

INSERT INTO KIM_ROLES_T (ID, NAME, DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG)
VALUES (16, 'Award Budget Approver', 'Award Budget Approver', 'A', 'Y') ;

INSERT INTO KIM_ROLES_T (ID, NAME, DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG)
VALUES (17, 'Award Budget Admnistrator', 'Award Budget Admnistrator', 'A', 'Y') ;

INSERT INTO KIM_ROLES_T (ID, NAME, DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG)
VALUES (18, 'Award Modifier', 'Award Modifier', 'A', 'Y') ;

INSERT INTO KIM_ROLES_T (ID, NAME, DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG)
VALUES (20, 'Award Budget Aggregator', 'Award Budget Aggregator', 'A', 'Y') ;

INSERT INTO KIM_ROLES_T (ID, NAME, DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG)
VALUES (21, 'Award Budget Maintainer', 'Award Budget Maintainer', 'A', 'Y') ;

INSERT INTO KIM_ROLES_T (ID, NAME, DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG)
VALUES (22, 'Award Documents Maintainer', 'Award Documents Maintainer', 'A', 'Y') ;

INSERT INTO KIM_ROLES_T (ID, NAME, DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG)
VALUES (23, 'Award Budget Modifier', 'Award Budget Modifier', 'A', 'Y') ;

INSERT INTO KIM_ROLES_T (ID, NAME, DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG)
VALUES (24, 'Award Viewer', 'Award Viewer', 'A', 'Y') ;

INSERT INTO KIM_ROLES_T (ID, NAME, DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG)
VALUES (25, 'Award Budget Viewer', 'Award Budget Viewer', 'A', 'Y') ;

INSERT INTO KIM_ROLES_T (ID, NAME, DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG)
VALUES (26, 'Award Documents Viewer', 'Award Documents Viewer', 'A', 'Y') ;

INSERT INTO KIM_ROLES_T (ID, NAME, DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG)
VALUES (27, 'Departments Awards Viewer', 'Departments Awards Viewer', 'A', 'Y') ;

INSERT INTO KIM_ROLES_T (ID, NAME, DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG)
VALUES (28, 'Template Viewer', 'Template Viewer', 'A', 'Y') ;

INSERT INTO KIM_ROLES_T (ID, NAME, DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG)
VALUES (29, 'Award Unassigned', 'Award Unassigned', 'A', 'Y') ;

INSERT INTO KIM_ROLES_T (ID, NAME, DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG)
VALUES (30, 'approver', 'approver', 'P', 'N') ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (1, 1) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (2, 2) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (2, 3) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (2, 4) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (2, 5) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (2, 6) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (2, 7) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (2, 8) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (2, 10) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (2, 11) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (2, 13) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (2, 14) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (3, 2) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (3, 3) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (3, 4) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (3, 5) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (3, 7) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (3, 10) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (4, 2) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (4, 3) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (4, 5) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (4, 6) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (4, 7) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (4, 10) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (5, 3) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (5, 5) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (5, 7) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (5, 10) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (7, 3) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (7, 9) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (7, 5) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (7, 7) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (7, 14) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (8, 3) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (8, 5) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (8, 7) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (8, 9) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (8, 10) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (8, 12) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (9, 15) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (10, 16) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (10, 17) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (10, 18) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (10, 19) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (10, 20) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (10, 21) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (10, 22) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (10, 61) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (10, 62) ; 

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (11, 17) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (12, 23) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (12, 24) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (12, 25) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (12, 26) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (12, 27) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (12, 28) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (12, 29) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (12, 30) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (12, 31) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (12, 32) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (12, 33) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (12, 34) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (12, 35) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (12, 36) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (12, 37) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (12, 38) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (12, 39) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (12, 40) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (12, 41) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (12, 42) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (13, 38) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (13, 39) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (13, 40) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (13, 41) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (13, 42) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (15, 42) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (15, 43) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (15, 44) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (16, 42) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (16, 43) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (16, 44) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (17, 43) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (17, 44) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (17, 45) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (17, 46) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (17, 47) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (17, 48) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (18, 44) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (18, 49) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (18, 50) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (18, 51) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (18, 52) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (20, 54) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (20, 55) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (21, 54) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (21, 55) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (21, 56) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (22, 57) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (23, 54) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (24, 52) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (25, 56) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (26, 58) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (27, 59) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (28, 60) ; 
INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (12, 63) ;

insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(1,1);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(2,2);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(2,3);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(2,4);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(2,5);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(2,6);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(2,7);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(2,8);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(2,13);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(3,2);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(3,3);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(3,4);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(3,5);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(3,7);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(4,2);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(4,3);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(4,5);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(4,6);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(4,7);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(5,3);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(5,5);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(5,7);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(2,11);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(7,3);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(7,9);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(7,5);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(7,7);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(8,3);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(8,5);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(8,7);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(8,9);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(8,10);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(2,10);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(3,10);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(4,10);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(5,10);
insert into KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) values(8,12);

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (12, 63) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (13, 64) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (12, 66) ;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (13, 65) ;

INSERT INTO UNIT_ACL (ID, PERSON_ID, ROLE_ID, UNIT_NUMBER, SUBUNITS, ACTIVE_FLAG)
VALUES (42, '000000008', 13, '000001', 'N', 'Y') ;

-- for app not test
--INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
--VALUES (12, 2) ;
INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID, PERMISSION_ID)
VALUES (12, 16) ;

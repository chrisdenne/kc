delimiter /
TRUNCATE TABLE KRIM_ENTITY_CACHE_T
/
INSERT INTO KRIM_ENTITY_CACHE_T (ENTITY_ID,ENTITY_TYP_CD,FIRST_NM,LAST_NM,LAST_UPDT_TS,OBJ_ID,PRNCPL_ID,PRNCPL_NM,PRSN_NM)
  VALUES ('1100','PERSON','admin','admin',STR_TO_DATE( '20090915135958', '%Y%m%d%H%i%s' ),'27566A3C-3E4E-98C9-C742-297D4167D2F0','admin','admin','admin, admin')
/
delimiter ;

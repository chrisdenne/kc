CREATE OR REPLACE VIEW OSP$PROTO_AMEND_RENEW_MODULES AS SELECT
  PROTO_AMEND_RENEWAL_NUMBER,
  PROTOCOL_NUMBER,
  PROTOCOL_MODULE_CODE,
  UPDATE_TIMESTAMP,
  UPDATE_USER
FROM PROTO_AMEND_RENEW_MODULES;

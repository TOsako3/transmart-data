--
-- Type: FUNCTION; Owner: SEARCHAPP; Name: BIO_COMPOUND_UID
--
  CREATE OR REPLACE FUNCTION "SEARCHAPP"."BIO_COMPOUND_UID" 
( CAS_REGISTRY IN VARCHAR2,
  JNJ_NUMBER IN VARCHAR2,
  CNTO_NUMBER IN VARCHAR2
) RETURN VARCHAR2 AS
BEGIN
  RETURN nvl(CAS_REGISTRY || '|', '') || nvl(JNJ_NUMBER || '|', '') || nvl(CNTO_NUMBER, '');
END BIO_COMPOUND_UID;
 
 
 
 
 
 
 
 
 
/

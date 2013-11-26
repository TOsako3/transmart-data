--
-- Type: FUNCTION; Owner: BIOMART; Name: BIO_OBSERVATION_UID
--
  CREATE OR REPLACE FUNCTION "BIOMART"."BIO_OBSERVATION_UID" (
  OBS_CODE VARCHAR2
) RETURN VARCHAR2 AS
BEGIN
  -- $Id$
  -- Creates bio_observation_uid.

  RETURN 'OBS:' || nvl(OBS_CODE, 'ERROR');
END BIO_OBSERVATION_UID;
 
 
 
 
 
 
 
 
 
 
 
/
 
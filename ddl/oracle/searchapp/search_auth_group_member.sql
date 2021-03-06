--
-- Type: TABLE; Owner: SEARCHAPP; Name: SEARCH_AUTH_GROUP_MEMBER
--
 CREATE TABLE "SEARCHAPP"."SEARCH_AUTH_GROUP_MEMBER" 
  (	"AUTH_USER_ID" NUMBER(19,0), 
"AUTH_GROUP_ID" NUMBER(19,0)
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "BIOMART" ;
--
-- Type: REF_CONSTRAINT; Owner: SEARCHAPP; Name: SCH_USER_GP_M_GRP_FK
--
ALTER TABLE "SEARCHAPP"."SEARCH_AUTH_GROUP_MEMBER" ADD CONSTRAINT "SCH_USER_GP_M_GRP_FK" FOREIGN KEY ("AUTH_GROUP_ID")
 REFERENCES "SEARCHAPP"."SEARCH_AUTH_GROUP" ("ID") ENABLE;
--
-- Type: REF_CONSTRAINT; Owner: SEARCHAPP; Name: SCH_USER_GP_M_USR_FK
--
ALTER TABLE "SEARCHAPP"."SEARCH_AUTH_GROUP_MEMBER" ADD CONSTRAINT "SCH_USER_GP_M_USR_FK" FOREIGN KEY ("AUTH_USER_ID")
 REFERENCES "SEARCHAPP"."SEARCH_AUTH_PRINCIPAL" ("ID") ENABLE;

--
-- Type: SEQUENCE; Owner: I2B2DEMODATA; Name: SEQ_PATIENT_NUM
--
CREATE SEQUENCE  "I2B2DEMODATA"."SEQ_PATIENT_NUM"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1000384597 CACHE 20 NOORDER  NOCYCLE ;

--
-- Type: TABLE; Owner: I2B2DEMODATA; Name: PATIENT_DIMENSION
--
 CREATE TABLE "I2B2DEMODATA"."PATIENT_DIMENSION" 
  (	"PATIENT_NUM" NUMBER(38,0), 
"VITAL_STATUS_CD" VARCHAR2(50 BYTE), 
"BIRTH_DATE" DATE, 
"DEATH_DATE" DATE, 
"SEX_CD" VARCHAR2(50 BYTE), 
"AGE_IN_YEARS_NUM" NUMBER(38,0), 
"LANGUAGE_CD" VARCHAR2(50 BYTE), 
"RACE_CD" VARCHAR2(50 BYTE), 
"MARITAL_STATUS_CD" VARCHAR2(50 BYTE), 
"RELIGION_CD" VARCHAR2(50 BYTE), 
"ZIP_CD" VARCHAR2(50 BYTE), 
"STATECITYZIP_PATH" VARCHAR2(700 BYTE), 
"UPDATE_DATE" DATE, 
"DOWNLOAD_DATE" DATE, 
"IMPORT_DATE" DATE, 
"SOURCESYSTEM_CD" VARCHAR2(50 BYTE), 
"UPLOAD_ID" NUMBER(38,0), 
"PATIENT_BLOB" CLOB, 
"INCOME_CD" VARCHAR2(50 BYTE)
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "I2B2_DATA" 
LOB ("PATIENT_BLOB") STORE AS BASICFILE (
 TABLESPACE "I2B2_DATA" ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
 NOCACHE NOLOGGING ) ;

--
-- Type: INDEX; Owner: I2B2DEMODATA; Name: PD_IDX_ALLPATIENTDIM
--
CREATE INDEX "I2B2DEMODATA"."PD_IDX_ALLPATIENTDIM" ON "I2B2DEMODATA"."PATIENT_DIMENSION" ("PATIENT_NUM", "VITAL_STATUS_CD", "BIRTH_DATE", "DEATH_DATE", "SEX_CD", "AGE_IN_YEARS_NUM", "LANGUAGE_CD", "RACE_CD", "MARITAL_STATUS_CD", "RELIGION_CD", "ZIP_CD", "INCOME_CD")
TABLESPACE "I2B2_DATA" ;

--
-- Type: TRIGGER; Owner: I2B2DEMODATA; Name: TRIG_PATIENT_DIMENSION
--
  CREATE OR REPLACE TRIGGER "I2B2DEMODATA"."TRIG_PATIENT_DIMENSION" 
before insert on "PATIENT_DIMENSION"    
for each row 
begin     if inserting then       
if :NEW."PATIENT_NUM" is null then          
select SEQ_PATIENT_NUM.nextval into :NEW."PATIENT_NUM" from dual;       end if;    end if; end;




/
ALTER TRIGGER "I2B2DEMODATA"."TRIG_PATIENT_DIMENSION" ENABLE;
 

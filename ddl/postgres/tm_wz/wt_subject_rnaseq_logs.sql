--
-- Name: wt_subject_rnaseq_logs; Type: TABLE; Schema: tm_wz; Owner: -
--
CREATE TABLE tm_wz.wt_subject_rnaseq_logs
(
  region_id bigint,
  readcount bigint,
  assay_id bigint,
  patient_id bigint,
  --WL--sample_id bigint,
  --WL--subject_id character varying(100),
  trial_name character varying(200),
  --WL--timepoint character varying(200),
  log_readcount double precision,
  raw_readcount double precision
);

--
-- Name: wt_subject_rnaseq_logs_i1; Type: INDEX; Schema: tm_wz; Owner: -
--
CREATE INDEX wt_subject_rnaseq_logs_i1 ON wt_subject_rnaseq_logs USING btree (trial_name, region_id);

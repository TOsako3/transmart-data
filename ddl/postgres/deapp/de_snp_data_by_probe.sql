--
-- Name: de_snp_data_by_probe; Type: TABLE; Schema: deapp; Owner: -
--
CREATE TABLE de_snp_data_by_probe (
    snp_data_by_probe_id bigint NOT NULL,
    probe_id bigint,
    probe_name character varying(255),
    snp_id bigint,
    snp_name character varying(255),
    trial_name character varying(255),
    data_by_probe text
);

--
-- Name: sys_c0020601; Type: CONSTRAINT; Schema: deapp; Owner: -
--
ALTER TABLE ONLY de_snp_data_by_probe
    ADD CONSTRAINT sys_c0020601 PRIMARY KEY (snp_data_by_probe_id);

--
-- Name: tf_trg_snp_data_by_pprobe_id(); Type: FUNCTION; Schema: deapp; Owner: -
--
CREATE FUNCTION tf_trg_snp_data_by_pprobe_id() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
begin
      if coalesce(NEW.SNP_DATA_BY_PROBE_ID::text, '') = '' then
         select nextval('deapp.SEQ_DATA_ID') into NEW.SNP_DATA_BY_PROBE_ID ;
      end if;
RETURN NEW;
end;
$$;

--
-- Name: trg_snp_data_by_pprobe_id; Type: TRIGGER; Schema: deapp; Owner: -
--
CREATE TRIGGER trg_snp_data_by_pprobe_id BEFORE INSERT ON de_snp_data_by_probe FOR EACH ROW EXECUTE PROCEDURE tf_trg_snp_data_by_pprobe_id();


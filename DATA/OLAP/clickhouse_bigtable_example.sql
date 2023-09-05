--liquibase formatted sql
--changeset abik:2-table-dm_advertiser_hash

-- allrp.dm_advertiser_hash definition

CREATE TABLE SOME.dm_advertiser_hash
(
    `ord_id`               UUID,
    `advertiser_id`        String,
    `hash`                 Int64,
    `advertiser_type_code` String,
    `advertiser_inn`       String,
    `alternative_inn`      String,
    `epay_no`              String,
    `mobile_phone`         String,
    `advertiser_name`      String,
    `advertiser_coalesce_name` Nullable(String),
    `oksm_no`              String,
    `ors_bool`             Bool,
    `reg_no`               String,
    `rr_bool`              Bool,
    `rs_url`               String,
    `opf_name`             String,
    `org_full_name` Nullable(String),
    `org_short_name` Nullable(String),
    `fio` Nullable(String),
    `first_name` Nullable(String),
    `last_name` Nullable(String),
    `middle_name` Nullable(String),
    `ogrn` Nullable(String),
    `ogrnip` Nullable(String),
    `kpp` Nullable(String),
    `address` Nullable(String),
    `city` Nullable(String),
    `street` Nullable(String),
    `house` Nullable(String),
    `flat` Nullable(String),
    `position` Nullable(String),
    `innip` Nullable(String),
    `codeokved` Nullable(String),
    `nameokved` Nullable(String),
    `original_message_id` Nullable(String),
    `created_by_code`      String,
    `create_dttm`          DateTime,
    `reg_date`             Date,
    `end_date` Nullable(Date)
)
--     ENGINE = ReplicatedMergeTree('/clickhouse/tables/all-replicated/dm_advertiser_hash',
--              '{replica}')
ENGINE = MergeTree
PARTITION BY toYYYYMM(create_dttm)
ORDER BY hash
SETTINGS index_granularity = 8192;
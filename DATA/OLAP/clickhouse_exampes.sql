CREATE DATABASE IF NOT EXISTS lqbase;
--CREATE DATABASE IF NOT EXISTS lqbase_notification;

--CREATE DATABASE lqbase_notification;

DROP DATABASE IF EXISTS lqbase_notification;
DROP DATABASE IF EXISTS some_database;
DROP DATABASE IF EXISTS lqbase;

-- tutorial.simple definition

CREATE TABLE IF NOT EXISTS tutorial.simple
(
    `WatchID` UInt64,
    `JavaEnable` UInt8,
    `Title` String
)
ENGINE = MergeTree
ORDER BY WatchID
SETTINGS index_granularity = 8192;
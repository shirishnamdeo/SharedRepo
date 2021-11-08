DROP TABLE IF EXISTS bank_transaction;
CREATE EXTERNAL TABLE bank_transaction (
    txn_date      STRING,
    description   STRING,
    deposits      STRING,
    withdrawls    STRING,
    balance       STRING
)
COMMENT 'Bank Transaction Data'
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE
TBLPROPERTIES("skip.header.line.count"="1");

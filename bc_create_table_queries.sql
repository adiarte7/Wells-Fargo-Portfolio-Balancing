-- Create tables
DROP SCHEMA IF EXISTS wells_fargo ;
CREATE SCHEMA wells_fargo;
USE wells_fargo;

CREATE TABLE client_info (
  client_id INT(30) NOT NULL,
  client_ssn INT(30) NOT NULL,
  client_name VARCHAR(50) NOT NULL,
  client_phone VARCHAR(50) NOT NULL,
  client_email VARCHAR(50) NOT NULL,
  client_address VARCHAR(50) NOT NULL,
  client_age INT(30) NOT NULL,
  client_job VARCHAR(50) NOT NULL,
  client_risk_tolerance VARCHAR(50) NOT NULL,
  campaign_id INT(30), 
  channel_id INT(30),
  PRIMARY KEY (client_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE account (
  account_id INT(30) NOT NULL,
  client_id INT(30) NOT NULL,
  agent_id INT(30) NOT NULL,
  manager_id INT(30) NOT NULL,
  PRIMARY KEY (account_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE trade (
  datetime DATETIME,
  ticker VARCHAR(50),
  account_id INT(30) NOT NULL,
  trade_price DECIMAL(10,8) NOT NULL,
  quantity INT(30) NOT NULL,
  trade_id INT(30) NOT NULL,
  PRIMARY KEY (trade_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE ticker_price (
  index INT(50) NOT NULL,
  date DATE,
  adj_closing_price DECIMAL(10,2),
  ticker VARCHAR(50),
  PRIMARY KEY (index)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE ticker_type (
  ticker VARCHAR(50),
  security_class VARCHAR(50) NOT NULL,
  industry VARCHAR(50) NOT NULL,
  stock_exchange VARCHAR(50) NOT NULL,
  security_type VARCHAR(50) NOT NULL,
  SEC_blacklisted TINYINT,
  wf_blacklisted TINYINT,
  esg TINYINT,
  PRIMARY KEY (ticker)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert data into tables
-
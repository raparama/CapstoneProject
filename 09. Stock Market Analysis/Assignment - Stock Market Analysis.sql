# Create Schema Assignment
CREATE SCHEMA Assignment; 

# Use Schema Assignment to create tables and insert records
use Assignment;

# 1. Create a new table named suffix 1 containing the date, close price, 20 Day MA and 50 Day MA.

#1.1.1. Bajaj1 table creatation 
CREATE TABLE `bajaj1` ( 
  `Date` date DEFAULT NULL,            # Date column having data type as date and default is set to null
  `Close Price` double DEFAULT NULL,   # Close Price column having data type as double and default is set to null
  `20 Day MA` double DEFAULT NULL,     # 20 Day MA column having data type as double and default is set to null
  `50 Day MA` double DEFAULT NULL      # 50 Day MA column having data type as double and default is set to null
) 

# 1.1.2. Insert data into table Bajaj1 from table Bajaj  
# and deriving columns "20 Day MA" and "50 Day MA" by calculation running average using close price column
INSERT INTO bajaj1 (Date,`Close Price`,`20 Day MA`,`50 Day MA`)
SELECT STR_TO_DATE(Date,"%d-%M-%Y") as date, `Close Price`,
avg(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date,"%d-%M-%Y") ROWS BETWEEN 20 PRECEDING AND CURRENT ROW) as '20 Day MA',
avg(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date,"%d-%M-%Y") ROWS BETWEEN 50 PRECEDING AND CURRENT ROW) as '50 Day MA'
from bajaj
order by STR_TO_DATE(Date,"%d-%M-%Y");

# 1.2.1. eicher1 table creatation 
CREATE TABLE `eicher1` (
  `Date` date DEFAULT NULL,            # Date column having data type as date and default is set to null
  `Close Price` double DEFAULT NULL,   # Close Price column having data type as double and default is set to null
  `20 Day MA` double DEFAULT NULL,     # 20 Day MA column having data type as double and default is set to null
  `50 Day MA` double DEFAULT NULL      # 50 Day MA column having data type as double and default is set to null
) 

# 1.2.2. Insert data into table eicher1 from table eicher  
# and deriving columns "20 Day MA" and "50 Day MA" by calculation running average using close price column
INSERT INTO eicher1 (Date,`Close Price`,`20 Day MA`,`50 Day MA`)
SELECT STR_TO_DATE(Date,"%d-%M-%Y") as date, `Close Price`,
avg(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date,"%d-%M-%Y") ROWS BETWEEN 20 PRECEDING AND CURRENT ROW) as '20 Day MA',
avg(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date,"%d-%M-%Y") ROWS BETWEEN 50 PRECEDING AND CURRENT ROW) as '50 Day MA'
from eicher
order by STR_TO_DATE(Date,"%d-%M-%Y");

# 1.3.1. hero1 table creatation 
CREATE TABLE `hero1` (
  `Date` date DEFAULT NULL,            # Date column having data type as date and default is set to null
  `Close Price` double DEFAULT NULL,   # Close Price column having data type as double and default is set to null
  `20 Day MA` double DEFAULT NULL,     # 20 Day MA column having data type as double and default is set to null
  `50 Day MA` double DEFAULT NULL      # 50 Day MA column having data type as double and default is set to null
) 

# 1.3.2. Insert data into table hero1 from table hero  
# and deriving columns "20 Day MA" and "50 Day MA" by calculation running average using close price column
INSERT INTO hero1 (Date,`Close Price`,`20 Day MA`,`50 Day MA`)
SELECT STR_TO_DATE(Date,"%d-%M-%Y") as date, `Close Price`,
avg(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date,"%d-%M-%Y") ROWS BETWEEN 20 PRECEDING AND CURRENT ROW) as '20 Day MA',
avg(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date,"%d-%M-%Y") ROWS BETWEEN 50 PRECEDING AND CURRENT ROW) as '50 Day MA'
from hero
order by STR_TO_DATE(Date,"%d-%M-%Y");

# 1.4.1. infosys1 table creatation 
CREATE TABLE `infosys1` (
  `Date` date DEFAULT NULL,            # Date column having data type as date and default is set to null
  `Close Price` double DEFAULT NULL,   # Close Price column having data type as double and default is set to null
  `20 Day MA` double DEFAULT NULL,     # 20 Day MA column having data type as double and default is set to null
  `50 Day MA` double DEFAULT NULL      # 50 Day MA column having data type as double and default is set to null
) 

# 1.4.2. Insert data into table infosys1 from table infosys  
# and deriving columns "20 Day MA" and "50 Day MA" by calculation running average using close price column
INSERT INTO infosys1 (Date,`Close Price`,`20 Day MA`,`50 Day MA`)
SELECT STR_TO_DATE(Date,"%d-%M-%Y") as date, `Close Price`,
avg(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date,"%d-%M-%Y") ROWS BETWEEN 20 PRECEDING AND CURRENT ROW) as '20 Day MA',
avg(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date,"%d-%M-%Y") ROWS BETWEEN 50 PRECEDING AND CURRENT ROW) as '50 Day MA'
from infosys
order by STR_TO_DATE(Date,"%d-%M-%Y");

# 1.5.1. tcs1 table creatation 
CREATE TABLE `tcs1` (
  `Date` date DEFAULT NULL,            # Date column having data type as date and default is set to null
  `Close Price` double DEFAULT NULL,   # Close Price column having data type as double and default is set to null
  `20 Day MA` double DEFAULT NULL,     # 20 Day MA column having data type as double and default is set to null
  `50 Day MA` double DEFAULT NULL      # 50 Day MA column having data type as double and default is set to null
) 

# 1.5.2. Insert data into table tcs1 from table tcs  
# and deriving columns "20 Day MA" and "50 Day MA" by calculation running average using close price column
INSERT INTO tcs1 (Date,`Close Price`,`20 Day MA`,`50 Day MA`)
SELECT STR_TO_DATE(Date,"%d-%M-%Y") as date, `Close Price`,
avg(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date,"%d-%M-%Y") ROWS BETWEEN 20 PRECEDING AND CURRENT ROW) as '20 Day MA',
avg(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date,"%d-%M-%Y") ROWS BETWEEN 50 PRECEDING AND CURRENT ROW) as '50 Day MA'
from tcs
order by STR_TO_DATE(Date,"%d-%M-%Y");

# 1.6.1. tvs1 table creatation 
CREATE TABLE `tvs1` (
  `Date` date DEFAULT NULL,            # Date column having data type as date and default is set to null
  `Close Price` double DEFAULT NULL,   # Close Price column having data type as double and default is set to null
  `20 Day MA` double DEFAULT NULL,     # 20 Day MA column having data type as double and default is set to null
  `50 Day MA` double DEFAULT NULL      # 50 Day MA column having data type as double and default is set to null
) 

# 1.6.2. Insert data into table tvs1 from table tvs  
# and deriving columns "20 Day MA" and "50 Day MA" by calculation running average using close price column
INSERT INTO tvs1 (Date,`Close Price`,`20 Day MA`,`50 Day MA`)
SELECT STR_TO_DATE(Date,"%d-%M-%Y") as date, `Close Price`,
avg(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date,"%d-%M-%Y") ROWS BETWEEN 20 PRECEDING AND CURRENT ROW) as '20 Day MA',
avg(`Close Price`) OVER (ORDER BY STR_TO_DATE(Date,"%d-%M-%Y") ROWS BETWEEN 50 PRECEDING AND CURRENT ROW) as '50 Day MA'
from tvs
order by STR_TO_DATE(Date,"%d-%M-%Y");

# 2. Create a master table containing the date and close price of all the six stocks. 
# (Column header for the price is the name of the stock)

# 2.1 Master Table creation
CREATE TABLE `MASTER` (
	`Date` DATE DEFAULT NULL,      # Date column having data type as date and default is set to null
    `Bajaj` DOUBLE DEFAULT NULL,   # Bajaj column having data type as double and default is set to null
    `TCS` DOUBLE DEFAULT NULL,     # TCS column having data type as double and default is set to null
    `TVS` DOUBLE DEFAULT NULL,     # TVS column having data type as double and default is set to null
    `Infosys` DOUBLE DEFAULT NULL, # Infosys column having data type as double and default is set to null
    `Eicher` DOUBLE DEFAULT NULL,  # Eicher column having data type as double and default is set to null
    `Hero` DOUBLE DEFAULT NULL     # Hero column having data type as double and default is set to null
)

# 2.2 Insert data into Master Table
INSERT INTO MASTER (Date,Bajaj,TCS,TVS,Infosys,Eicher,Hero)
SELECT
	a.Date AS Date,
    bajaj1.`Close Price` AS Bajaj,
    TCS1.`Close Price` AS TCS,
    TVS1.`Close Price` AS TVS,
    Infosys1.`Close Price` AS Infosys,
    Eicher1.`Close Price` AS Eicher,
    Hero1.`Close Price` AS Hero
FROM
( 
SELECT Date FROM bajaj1 UNION SELECT Date FROM eicher1 UNION
SELECT Date FROM hero1 UNION SELECT Date FROM infosys1 UNION
SELECT Date FROM tcs1 UNION SELECT Date FROM tvs1
) a # Perform all stock table union table to pull unique list of date
LEFT JOIN bajaj1 ON a.date = bajaj1.date     # Perform Left outer join with unique list of date to place closing price on available date for Bajaj
LEFT JOIN TCS1 ON a.date = TCS1.date         # Perform Left outer join with unique list of date to place closing price on available date for TCS
LEFT JOIN TVS1 ON a.date = TVS1.date         # Perform Left outer join with unique list of date to place closing price on available date for TVS
LEFT JOIN Infosys1 ON a.date = Infosys1.date # Perform Left outer join with unique list of date to place closing price on available date for Infosys
LEFT JOIN Eicher1 ON a.date = Eicher1.date   # Perform Left outer join with unique list of date to place closing price on available date for Eicher
LEFT JOIN Hero1 ON a.date = Hero1.date       # Perform Left outer join with unique list of date to place closing price on available date for Hero
order by a.date;

# 3. Use the table created in Part(1) to generate buy and sell signal. Store this in another table named 'bajaj2'. 
# Perform this operation for all stocks.

# 3.1.1. bajaj2 table creatation 
CREATE TABLE `bajaj2` (
  `Date` date DEFAULT NULL,            # Date column having data type as date and default is set to null
  `Close Price` double DEFAULT NULL,   # Close Price column having data type as double and default is set to null
  `Signal` char(6) DEFAULT NULL        # Signal column having data type as char and default is set to null
) 


# 3.1.2 Insert data into bajaj2 table
INSERT INTO `bajaj2` (`Date`, `Close Price`,`Signal`)
select
# This Select statement join both Current (a)and Previous(b) date comparrison purpose
        a.currdate as "Date",
        a.CurrClosePrice as "Close Price",
        # Golden Cross - shorter-term moving average crosses above the longer-term moving average, it is a signal to BUY
        # Death Cross - when the shorter term moving average crosses below the longer term moving average, it is a signal to SELL
        # Hold other wise
        case
			when a.Curr20DayMA > a.Curr50DayMA  and (b.Prev20DayMA - b.Prev50DayMA) <= 0 then 'BUY'
			when a.Curr20DayMA < a.Curr50DayMA  and (b.Prev20DayMA - b.Prev50DayMA) >= 0 then 'SELL'
			ELSE 'HOLD'
        end as "Signal" 
from
(
# This table will be considered as Current date by introducing Row Number order by date
select
	ROW_NUMBER() OVER () as "id",
    date as currdate,
    `close price` as CurrClosePrice,
    `20 Day MA` as Curr20DayMA,
    `50 Day MA` as Curr50DayMA
from bajaj1
order by date
) a
inner join
(
# This table will be considered as Previous date by introducing Row Number +1 order by date
select
	ROW_NUMBER() OVER () as "id",
    date as prevdate,
    `close price` as PrevClosePrice,
    `20 Day MA` as Prev20DayMA,
    `50 Day MA` as Prev50DayMA 
from bajaj1
order by date
) b
on a.id = b.id + 1;

# 3.2.1. eicher2 table creatation 
CREATE TABLE `eicher2` (
  `Date` date DEFAULT NULL,            # Date column having data type as date and default is set to null
  `Close Price` double DEFAULT NULL,   # Close Price column having data type as double and default is set to null
  `Signal` char(6) DEFAULT NULL        # Signal column having data type as char and default is set to null
) 


# 3.2.2 Insert data into eicher2 table
INSERT INTO `eicher2` (`Date`, `Close Price`,`Signal`)
select
# This Select statement join both Current (a)and Previous(b) date comparrison purpose
        a.currdate as "Date",
        a.CurrClosePrice as "Close Price",
        # Golden Cross - shorter-term moving average crosses above the longer-term moving average, it is a signal to BUY
        # Death Cross - when the shorter term moving average crosses below the longer term moving average, it is a signal to SELL
        # Hold other wise
        case
			when a.Curr20DayMA > a.Curr50DayMA  and (b.Prev20DayMA - b.Prev50DayMA) <= 0 then 'BUY'
			when a.Curr20DayMA < a.Curr50DayMA  and (b.Prev20DayMA - b.Prev50DayMA) >= 0 then 'SELL'
			ELSE 'HOLD'
        end as "Signal" 
from
(
# This table will be considered as Current date by introducing Row Number order by date
select
	ROW_NUMBER() OVER () as "id",
    date as currdate,
    `close price` as CurrClosePrice,
    `20 Day MA` as Curr20DayMA,
    `50 Day MA` as Curr50DayMA
from eicher1
order by date
) a
inner join
(
# This table will be considered as Previous date by introducing Row Number +1 order by date
select
	ROW_NUMBER() OVER () as "id",
    date as prevdate,
    `close price` as PrevClosePrice,
    `20 Day MA` as Prev20DayMA,
    `50 Day MA` as Prev50DayMA 
from eicher1
order by date
) b
on a.id = b.id + 1;
	

# 3.3.1. hero2 table creatation 
CREATE TABLE `hero2` (
  `Date` date DEFAULT NULL,            # Date column having data type as date and default is set to null
  `Close Price` double DEFAULT NULL,   # Close Price column having data type as double and default is set to null
  `Signal` char(6) DEFAULT NULL        # Signal column having data type as char and default is set to null
) 


# 3.3.2 Insert data into eicher2 table
INSERT INTO `hero2` (`Date`, `Close Price`,`Signal`)
select
# This Select statement join both Current (a)and Previous(b) date comparrison purpose
        a.currdate as "Date",
        a.CurrClosePrice as "Close Price",
        # Golden Cross - shorter-term moving average crosses above the longer-term moving average, it is a signal to BUY
        # Death Cross - when the shorter term moving average crosses below the longer term moving average, it is a signal to SELL
        # Hold other wise
        case
			when a.Curr20DayMA > a.Curr50DayMA  and (b.Prev20DayMA - b.Prev50DayMA) <= 0 then 'BUY'
			when a.Curr20DayMA < a.Curr50DayMA  and (b.Prev20DayMA - b.Prev50DayMA) >= 0 then 'SELL'
			ELSE 'HOLD'
        end as "Signal" 
from
(
# This table will be considered as Current date by introducing Row Number order by date
select
	ROW_NUMBER() OVER () as "id",
    date as currdate,
    `close price` as CurrClosePrice,
    `20 Day MA` as Curr20DayMA,
    `50 Day MA` as Curr50DayMA
from hero1
order by date
) a
inner join
(
# This table will be considered as Previous date by introducing Row Number +1 order by date
select
	ROW_NUMBER() OVER () as "id",
    date as prevdate,
    `close price` as PrevClosePrice,
    `20 Day MA` as Prev20DayMA,
    `50 Day MA` as Prev50DayMA 
from hero1
order by date
) b
on a.id = b.id + 1;

# 3.4.1. Infosys2 table creatation 
CREATE TABLE `infosys2` (
  `Date` date DEFAULT NULL,            # Date column having data type as date and default is set to null
  `Close Price` double DEFAULT NULL,   # Close Price column having data type as double and default is set to null
  `Signal` char(6) DEFAULT NULL        # Signal column having data type as char and default is set to null
) 


# 3.4.2 Insert data into infosys2 table
INSERT INTO `infosys2` (`Date`, `Close Price`,`Signal`)
select
# This Select statement join both Current (a)and Previous(b) date comparrison purpose
        a.currdate as "Date",
        a.CurrClosePrice as "Close Price",
        # Golden Cross - shorter-term moving average crosses above the longer-term moving average, it is a signal to BUY
        # Death Cross - when the shorter term moving average crosses below the longer term moving average, it is a signal to SELL
        # Hold other wise
        case
			when a.Curr20DayMA > a.Curr50DayMA  and (b.Prev20DayMA - b.Prev50DayMA) <= 0 then 'BUY'
			when a.Curr20DayMA < a.Curr50DayMA  and (b.Prev20DayMA - b.Prev50DayMA) >= 0 then 'SELL'
			ELSE 'HOLD'
        end as "Signal" 
from
(
# This table will be considered as Current date by introducing Row Number order by date
select
	ROW_NUMBER() OVER () as "id",
    date as currdate,
    `close price` as CurrClosePrice,
    `20 Day MA` as Curr20DayMA,
    `50 Day MA` as Curr50DayMA
from infosys1
order by date
) a
inner join
(
# This table will be considered as Previous date by introducing Row Number +1 order by date
select
	ROW_NUMBER() OVER () as "id",
    date as prevdate,
    `close price` as PrevClosePrice,
    `20 Day MA` as Prev20DayMA,
    `50 Day MA` as Prev50DayMA 
from infosys1
order by date
) b
on a.id = b.id + 1;

# 3.5.1. tcs table creatation 
CREATE TABLE `tcs2` (
  `Date` date DEFAULT NULL,            # Date column having data type as date and default is set to null
  `Close Price` double DEFAULT NULL,   # Close Price column having data type as double and default is set to null
  `Signal` char(6) DEFAULT NULL        # Signal column having data type as char and default is set to null
) 


# 3.5.2 Insert data into tcs2 table
INSERT INTO `tcs2` (`Date`, `Close Price`,`Signal`)
select
# This Select statement join both Current (a)and Previous(b) date comparrison purpose
        a.currdate as "Date",
        a.CurrClosePrice as "Close Price",
        # Golden Cross - shorter-term moving average crosses above the longer-term moving average, it is a signal to BUY
        # Death Cross - when the shorter term moving average crosses below the longer term moving average, it is a signal to SELL
        # Hold other wise
        case
			when a.Curr20DayMA > a.Curr50DayMA  and (b.Prev20DayMA - b.Prev50DayMA) <= 0 then 'BUY'
			when a.Curr20DayMA < a.Curr50DayMA  and (b.Prev20DayMA - b.Prev50DayMA) >= 0 then 'SELL'
			ELSE 'HOLD'
        end as "Signal" 
from
(
# This table will be considered as Current date by introducing Row Number order by date
select
	ROW_NUMBER() OVER () as "id",
    date as currdate,
    `close price` as CurrClosePrice,
    `20 Day MA` as Curr20DayMA,
    `50 Day MA` as Curr50DayMA
from tcs1
order by date
) a
inner join
(
# This table will be considered as Previous date by introducing Row Number +1 order by date
select
	ROW_NUMBER() OVER () as "id",
    date as prevdate,
    `close price` as PrevClosePrice,
    `20 Day MA` as Prev20DayMA,
    `50 Day MA` as Prev50DayMA 
from tcs1
order by date
) b
on a.id = b.id + 1;

# 3.6.1. tvs table creatation 
CREATE TABLE `tvs2` (
  `Date` date DEFAULT NULL,            # Date column having data type as date and default is set to null
  `Close Price` double DEFAULT NULL,   # Close Price column having data type as double and default is set to null
  `Signal` char(6) DEFAULT NULL        # Signal column having data type as char and default is set to null
) 


# 3.6.2 Insert data into tcs2 table
INSERT INTO `tvs2` (`Date`, `Close Price`,`Signal`)
select
# This Select statement join both Current (a)and Previous(b) date comparrison purpose
        a.currdate as "Date",
        a.CurrClosePrice as "Close Price",
        # Golden Cross - shorter-term moving average crosses above the longer-term moving average, it is a signal to BUY
        # Death Cross - when the shorter term moving average crosses below the longer term moving average, it is a signal to SELL
        # Hold other wise
        case
			when a.Curr20DayMA > a.Curr50DayMA  and (b.Prev20DayMA - b.Prev50DayMA) <= 0 then 'BUY'
			when a.Curr20DayMA < a.Curr50DayMA  and (b.Prev20DayMA - b.Prev50DayMA) >= 0 then 'SELL'
			ELSE 'HOLD'
        end as "Signal" 
from
(
# This table will be considered as Current date by introducing Row Number order by date
select
	ROW_NUMBER() OVER () as "id",
    date as currdate,
    `close price` as CurrClosePrice,
    `20 Day MA` as Curr20DayMA,
    `50 Day MA` as Curr50DayMA
from tvs1
order by date
) a
inner join
(
# This table will be considered as Previous date by introducing Row Number +1 order by date
select
	ROW_NUMBER() OVER () as "id",
    date as prevdate,
    `close price` as PrevClosePrice,
    `20 Day MA` as Prev20DayMA,
    `50 Day MA` as Prev50DayMA 
from tvs1
order by date
) b
on a.id = b.id + 1;

# 4. Create a User defined function, that takes the date as input and returns the signal 
# for that particular day (Buy/Sell/Hold) for the Bajaj stock.

# 4.1. This function will used to return signal for Bajaj based on date as input
CREATE DEFINER=`root`@`localhost` FUNCTION `BajajSignal`(dt date) RETURNS char(6) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	
    declare sig char(6); # declare local varaiable sig
    SELECT `Signal` into sig from Assignment.bajaj2 where date = dt ; # This query will singal based on the date paased
    return (sig); # return signal output
    
END

# 4.2. UDF return Signal output for Bajaj based on date as input
select BajajSignal ('2015-01-02');
select BajajSignal ('2015-02-02');
select BajajSignal ('2015-05-18');

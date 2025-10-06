--create database Bank_loan_data
use Bank_loan_data

select * from loan_data

--1.	Total Loan Applications: 
select COUNT(id) as Total_Applications from loan_data

select COUNT(id) as MTD_Total_Applications from loan_data 
	where MONTH(issue_date) = 12

select COUNT(id) as PMTD_Total_Applications from loan_data 
	where MONTH(issue_date) = 11

--2.	Total Funded Amount:
select SUM(loan_amount) as Total_Funded_Amount from loan_data

select SUM(loan_amount) as MTD_Total_Funded_Amount from loan_data 
	where MONTH(issue_date) = 12

select SUM(loan_amount) as PMTD_Total_Funded_Amount from loan_data 
	where MONTH(issue_date) = 11

--3.	Total Amount Received:
select SUM(total_payment) as Total_Received_Amount from loan_data

select SUM(total_payment) as MTD_Total_Received_Amount from loan_data 
	where MONTH(issue_date) = 12

select SUM(total_payment) as PMTD_Total_Received_Amount from loan_data 
	where MONTH(issue_date) = 11

--4.	Average Interest Rate: 
select AVG(int_rate)*100 as Average_Interest_Rate from loan_data 

select AVG(int_rate)*100 as MTD_Average_Interest_Rate from loan_data 
	where MONTH(issue_date) = 12

select AVG(int_rate)*100 as PMTD_Average_Interest_Rate from loan_data 
	where MONTH(issue_date) = 11

--5.	Average Debt-to-Income Ratio (DTI): 
select AVG(dti)*100 as Average_DTI from loan_data 

select AVG(dti)*100 as MTD_Average_DTI from loan_data 
	where MONTH(issue_date) = 12

select AVG(dti)*100 as PMTD_Average_DTI from loan_data 
	where MONTH(issue_date) = 11


-- Good Loan

select COUNT(id) AS Total_good_loan_Applications
from loan_data 
	where loan_status = 'Fully Paid' or loan_status = 'Current'

select (COUNT(case when loan_status = 'Fully Paid' or loan_status = 'Current' then id end)*100)/COUNT(id) as Good_loan_Percent
from loan_data

select SUM(loan_amount) as Total_good_loan_funded_amount from loan_data 
	where loan_status = 'Fully Paid' or loan_status = 'Current'

select SUM(total_payment) as Total_amount_received_from_good_loan from loan_data 
	where loan_status = 'Fully Paid' or loan_status = 'Current'


-- Bad Loan

select COUNT(id) as Total_bad_loan_Applications
from loan_data 
where loan_status = 'Charged Off'

select (COUNT(case when loan_status = 'Charged Off' then id end)*100)/COUNT(id) as Bad_loan_Percent
from loan_data

select SUM(loan_amount) as Total_good_loan_funded_amount from loan_data 
	where loan_status = 'Charged Off'

select SUM(total_payment) as Total_amount_received_from_good_loan from loan_data 
	where loan_status = 'Charged Off'

-- Summary tables

select 
	loan_status, 
	COUNT(id) as No_of_Applications, 
	SUM(loan_amount) as Total_amount_Funded, 
	SUM(total_payment) as Total_amount_received, 
	AVG(int_rate)*100 as Average_interest_rate, 
	AVG(dti)*100 as Average_DTI 
from loan_data 
GROUP BY loan_status


--MTD

SELECT 
	loan_status as Loan_Status_MTD, 
	SUM(loan_amount) as Total_amount_Funded, 
	SUM(total_payment) as Total_amount_received 
FROM loan_data 
where MONTH(issue_date) = 12 
GROUP BY loan_status

--PMTD

SELECT 
	loan_status as Loan_Status_PMTD, 
	SUM(loan_amount) as Total_amount_Funded, 
	SUM(total_payment) as Total_amount_received 
FROM loan_data 
where MONTH(issue_date) = 11 
GROUP BY loan_status
--------------------------------------------------
use Bank_loan_data
select * from loan_data

-- Monthly Trend

select
	MONTH(issue_date) as Month_Number, 
	DATENAME(month,issue_date) as Month_Name, 
	COUNT(id) as Total_Application, 
	SUM(loan_amount) as Total_amount_Funded, 
	SUM(total_payment) as Total_amount_received 
from loan_data
group by MONTH(issue_date), DATENAME(month,issue_date)
order by MONTH(issue_date)

-- Regional Analysis

select
	top(20)
	address_state as State_Name, 
	COUNT(id) as Total_Application, 
	SUM(loan_amount) as Total_amount_Funded, 
	SUM(total_payment) as Total_amount_received 
from loan_data
group by address_state
order by SUM(loan_amount) desc

-- Term

select
	term as Term_Frequency, 
	COUNT(id) as Total_Application, 
	SUM(loan_amount) as Total_amount_Funded, 
	SUM(total_payment) as Total_amount_received 
from loan_data
group by term


-- Employeement Status

select
	emp_length as Employeement_Status, 
	COUNT(id) as Total_Application, 
	SUM(loan_amount) as Total_amount_Funded, 
	SUM(total_payment) as Total_amount_received 
from loan_data
group by emp_length
order by emp_length


-- Loan Purpose Breakdown

select
	purpose as Loan_Purpose, 
	COUNT(id) as Total_Application, 
	SUM(loan_amount) as Total_amount_Funded, 
	SUM(total_payment) as Total_amount_received 
from loan_data
group by purpose
order by SUM(loan_amount) desc


-- Home Ownership

select
	home_ownership as Home_Ownership, 
	COUNT(id) as Total_Application, 
	SUM(loan_amount) as Total_amount_Funded, 
	SUM(total_payment) as Total_amount_received 
from loan_data
group by home_ownership
order by SUM(loan_amount) desc



select * from loan_data

-- Filtering

select
	home_ownership as Home_Ownership, 
	grade as Grade, 
	COUNT(id) as Total_Application, 
	SUM(loan_amount) as Total_amount_Funded, 
	SUM(total_payment) as Total_amount_received 
from loan_data
where 
	grade in ('A','B')
	and 
	address_state = 'CA'
group by home_ownership, grade
order by grade, SUM(loan_amount) desc
# Bank Loan Analysis

## Project Overview

The Bank Loan Analysis project focuses on analyzing and visualizing lending data to assess the overall health and performance of a bank’s loan portfolio. The goal is to monitor key metrics such as loan applications, funded amounts, repayment patterns, and borrower profiles — enabling data-driven decisions and improved lending strategies.
This project is structured into three main dashboards — **Summary**, **Overview**, and **Details** — each serving a specific analytical purpose and providing a comprehensive understanding of the bank’s loan operations.

## Workflow

### 1.	Data Processing (SQL Server):
Performed initial data cleaning, transformation, and metric calculations using **Microsoft SQL Server**. Key performance indicators (KPIs) such as total loan applications, funded amount, received amount, average interest rate, and DTI ratio were computed directly in SQL for accuracy.
### 2.	Validation & Integration:
The calculated SQL results were cross-verified by connecting the database to both **Excel** and **Power BI**, ensuring consistency and reliability of analytical outputs across all platforms.
### 3.	Dashboard Development:
Created interactive dashboards in Power BI to visualize insights through **charts**, **maps**, and KPIs. The dashboards allow stakeholders to easily monitor trends, evaluate **good vs. bad loans**, and identify factors influencing loan performance.


![image-1](https://github.com/asbpintu/Bank-Loan-Analysis---Power-Bi-Excel-Dashboard-and-Tableau/blob/266959eca85a955f480eafbd483d4ffda0b1ff15/Images/workflow.png)


## Dashboards

### 1. Summary Dashboard
Provides an overall snapshot of lending performance with key KPIs:
  *   Total Loan Applications (MTD & MoM)
  *	  Total Funded Amount (MTD & MoM)
  *	  Total Amount Received (MTD & MoM)
  *	  Average Interest Rate and Debt-to-Income Ratio (DTI) (MTD & MoM)
  *   Also includes **Good Loan vs. Bad Loan** KPIs, helping evaluate portfolio quality based on loan status **(Fully Paid, Current, Charged Off)**.

#### **Power Bi**
![image-2](https://github.com/asbpintu/Bank-Loan-Analysis---Power-Bi-Excel-Dashboard-and-Tableau/blob/266959eca85a955f480eafbd483d4ffda0b1ff15/Images/Power%20Bi%20Summary.png)
#### **Excel**
![image-3](https://github.com/asbpintu/Bank-Loan-Analysis---Power-Bi-Excel-Dashboard-and-Tableau/blob/266959eca85a955f480eafbd483d4ffda0b1ff15/Images/Excel%20Summary.png)


### 2. Overview Dashboard
Visualizes loan trends and borrower distribution using multiple chart types:
  *	  **Line Chart:** Monthly trends of applications, funded, and received amounts
  *	  **Filled Map:** Regional loan analysis by state
  *	  **Donut Chart:** Loan term distribution
  *	  **Bar Charts:** Loan purpose and employee length analysis
  *	  **Tree Map:** Loan statistics by home ownership


#### **Power Bi**
![image-4](https://github.com/asbpintu/Bank-Loan-Analysis---Power-Bi-Excel-Dashboard-and-Tableau/blob/266959eca85a955f480eafbd483d4ffda0b1ff15/Images/Power%20Bi%20Overview.png)
#### **Excel**
![image-5](https://github.com/asbpintu/Bank-Loan-Analysis---Power-Bi-Excel-Dashboard-and-Tableau/blob/266959eca85a955f480eafbd483d4ffda0b1ff15/Images/Excel%20Overview.png)



### 3. Details Dashboard
Acts as a detailed data exploration view, allowing users to analyze borrower-level and loan-level details for deeper insights and validation of loan metrics.


#### **Power Bi**
![image-6](https://github.com/asbpintu/Bank-Loan-Analysis---Power-Bi-Excel-Dashboard-and-Tableau/blob/266959eca85a955f480eafbd483d4ffda0b1ff15/Images/Power%20Bi%20Details.png)
#### **Excel**
![image-7](https://github.com/asbpintu/Bank-Loan-Analysis---Power-Bi-Excel-Dashboard-and-Tableau/blob/266959eca85a955f480eafbd483d4ffda0b1ff15/Images/Excel%20Details.png)



## Tools & Technologies
  *	**Database:** Microsoft SQL Server
  *	**Visualization:** Power BI, Excel
  *	**Data Validation:** Excel, Power query
  *	**Languages:** SQL, DAX
  *	**Techniques:** Data Cleaning, KPI Calculation, Dashboard Design, Performance Validation


## Key Outcomes
*	Delivered a set of accurate, interactive dashboards that help track loan performance.
*	Validated Power BI results against SQL queries to ensure data consistency.
*	Enabled insights into borrower behavior, regional patterns, and loan health metrics.
*	Supported strategic decision-making through data visualization and analysis.

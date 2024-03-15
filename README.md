
# Sales Analysis Dashboard with Power BI  
## Overview  
This project aims to enhance sales reporting for a company, transitioning from static reports to dynamic visual dashboards using Power BI. The primary focus is on analyzing internet sales, understanding product performance, customer behavior, and tracking sales against budget. The project leverages data cleaning in Microsoft SQL Server and visualization capabilities in Power BI to provide actionable insights for sales managers and representatives.  

## Client Requirements  
"I hope you are doing well. We need to improve our internet sales reports and want to move from static reports to visual Dashboards. Essentially, we want to focus it on how much we have sold for what products, to which clients and how it has been over time. Seeing as each salesperson works on different products and customers it would be beneficial to be able to filter them also. We measure our members against budget so I added that in a spreadsheet so we can compare our values against performance. The budget is for 2024 and we usually look 2 years back in time when we do analysis of sales. Let me know if you need anything else!"  

## Business Demand Overview  
**Reporter**: Person with business request.  
**Value of change**: Visual Dashboards and improved sales reporting or follow-up for sales.  
**Necessary systems**: Power BI, CRM  
**relevant info**: Budgets have been delivered for 2024.  

## User Stories
| No | As a (role) | I want (request/demand) | So that I (user value) | Acceptance Criteria |  
|----|-------------|-------------------------|------------------------|---------------------|  
| 1 | Sales Manager | To get a dashboard overview of internet sales | Can follow better which customers and products sells the best. | A Power BI dashboard which updates data once a day. |  
| 2 | Sales Rep | A detailed overview of internet sales per customers | Can follow up my customers that buy more and who can we sell more to. | A Power BI dashboard which allows me to filter data for each customer. |  
| 3 |	Sales Rep | A detailed overview of internet sales per products | Can follow up my products that sell the most. | products that sell the most.	A Power BI dashboard which allows me to filter data for each product.|  
| 4 | Sales Manager | A dashboard overview of internet sales | Follow sales over time against budget. | A Power BI dashboard with graphs and KPIs comparing against budget. |  

## Dataset  
The dataset used for this project is the "AdventureWorks" sample databases provided by Microsoft SQL Server. The dataset includes tables for customers, products, sales, and budget.  
Dataset Link: https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver15&tabs=ssms  

## Data Cleaning
The data cleaning process was performed in Microsoft SQL Server, returned data was exported and saved as CSV files to be loaded in PowerBI. Following tables were generated:  

*DimCustomerTableCleaning  
*DimProductTableCleaning  
*DimSalesTableCleaning  
*FactInternetSalesCleaning  
*SalesBudget  

## Data Analysis and Visualization
### 1. Data Modeling in Power BI
The cleaned datasets were loaded into Power BI, and an Entity Relationship Diagram (ERD) was created to establish relationships among the tables.  

### 2. DAX Measures
The following DAX measures were added to calculate sales and budget-related metrics:  

**FactInternetSales Table**: SALES = SUM(FactInternetSales[SalesAmount])  
**FactBudget Table**: BUDGET AMOUNT = SUM(Fact_Budget[Budget])  
**SALES/BUDGET AMOUNT**: DIVIDE(SALES, BUDGET)  

### 3. Visualization
The necessary sales information, customer insights, and product performance were visualized using Power BI's robust visualization capabilities. 

## Conclusion
Through this project, we have successfully transformed static sales reports into dynamic visual dashboards, enabling stakeholders to gain actionable insights into internet sales performance. The project aligns with the client's requirements for improved reporting and provides valuable tools for sales managers and representatives to track sales against budget, analyze customer behavior, and monitor product performance.

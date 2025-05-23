# Financial-System

## Project Overview 

The project buils on a powerful financial dtabase system. It stimulates a banking application with the following components: 
  1. **Customers** and their identities
  2. **Accounts** e.g. savings/ personal linked to customers
  3. **Transactions** involving money flow in and out of accounts
  4. **Loans** issued to customers with interest and timelines

The goal is to enable complex data analysis using SQL to derive financial insights about customer behaviour, account activity, and loan management. 

## Schema Design 
The database conssits of four interrelated tables 

Customers 
Stores Customer identity and creation metadata 
CUSTOMERS TABLE 

Accounts 
EACH customer can own one or more accounts e.g. savings or Personal 
ACCOUNTS TABLE 

Transactions 
Logs money flow - either credit (money in) or debit (money out) 
TRANSACTIONS TABLE 

Loans 
Captures loan details including principal, interest rate, and terms 
LOANS TABLE 

Sample Data 
30 customers with names and emails 
30 accounts with diverse balances and types 
30 transactions including both credit and debit events 
30 loans with varied interest rates and terms 
The inserted sample data supports meaningful financial analysis across entities 


Q1 insight - Identifies multi-account holders - potential high-value clients 

Q2 Insight - Measures cash inflow into each account 

Q3 Insight - Flags potentially riskier or high-interest loans 

Q4 Insight - Reveals the most actively spending accounts 

Q5 insight - identifies inactive or dorman accounts 

Q6 inight - Calculates each customer's net worth across accounts 

Q7 insight - Potential leads for offering new loans 

Q8 insight - Monitors financial trends by month 

Q9 insight - flags financially vulnerable customers or over-spenders 

Q10 insight - Calculates total liability from loans based on interest 


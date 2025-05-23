-- Creating a financial system with tables: Customers, Accounts, Transactions, Loans

-- Customers table 
CREATE TABLE customers (
	id SERIAL PRIMARY KEY, 
	name VARCHAR(100), 
	email VARCHAR(100), 
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

--Accounts Table 
CREATE TABLE accounts (
	id SERIAL PRIMARY KEY, 
	customer_id INT REFERENCES customers(id), 
	account_type VARCHAR(50), 
	balance DECIMAL(15, 2) DEFAULT 0.00
);

--Transactions Table 
CREATE TABLE transactions (
	id SERIAL PRIMARY KEY, 
	account_id INT REFERENCES accounts(id), 
	amount DECIMAL(15, 2), 
	transaction_type VARCHAR(10), -- 'credit' or 'debit'
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Loans table 
CREATE TABLE loans(
	id SERIAL PRIMARY KEY, 
	customer_id INT REFERENCES customers(id), 
	amount DECIMAL(15, 2), 
	interest_rate DECIMAL(5, 2), 
	start_date DATE, 
	end_date DATE
);

-- INSERT SAMPLE DATA 
INSERT INTO customers (name, email) VALUES
('Alice Johnson', 'alice@example.com'),
('Bob Smith', 'bob@example.com'),
('Charlie Miller', 'charlie@example.com'),
('Diana Prince', 'diana@example.com'),
('Ethan Hunt', 'ethan@example.com'),
('Fiona Chen', 'fiona@example.com'),
('George Lee', 'george@example.com'),
('Helen Grant', 'helen@example.com'),
('Ian Wright', 'ian@example.com'),
('Jenny Lewis', 'jenny@example.com'),
('Karl Novak', 'karl@example.com'),
('Laura Kim', 'laura@example.com'),
('Mike Ross', 'mike@example.com'),
('Nina Patel', 'nina@example.com'),
('Oscar Diaz', 'oscar@example.com'),
('Pam Beesly', 'pam@example.com'),
('Quinn Baker', 'quinn@example.com'),
('Rachel Green', 'rachel@example.com'),
('Steve Rogers', 'steve@example.com'),
('Tina Cohen', 'tina@example.com'),
('Uma Walker', 'uma@example.com'),
('Victor Stone', 'victor@example.com'),
('Wendy Adams', 'wendy@example.com'),
('Xander Ford', 'xander@example.com'),
('Yara King', 'yara@example.com'),
('Zane Lowe', 'zane@example.com'),
('Amber Nash', 'amber@example.com'),
('Blake Bell', 'blake@example.com'),
('Carla Moon', 'carla@example.com'),
('David Ray', 'david@example.com');

INSERT INTO accounts (customer_id, account_type, balance) VALUES
(1, 'savings', 10000),
(1, 'checking', 2000),
(2, 'checking', 5000),
(3, 'savings', 12000),
(4, 'checking', 800),
(5, 'savings', 3000),
(6, 'savings', 9000),
(7, 'checking', 6000),
(8, 'savings', 700),
(9, 'checking', 1500),
(10, 'savings', 11000),
(11, 'checking', 4500),
(12, 'savings', 3200),
(13, 'checking', 0),
(14, 'savings', 200),
(15, 'checking', 1500),
(16, 'savings', 9500),
(17, 'checking', 700),
(18, 'savings', 4000),
(19, 'checking', 1000),
(20, 'savings', 8800),
(21, 'savings', 5600),
(22, 'checking', 3900),
(23, 'checking', 7200),
(24, 'savings', 1300),
(25, 'checking', 6300),
(26, 'savings', 4500),
(27, 'savings', 1200),
(28, 'checking', 2100),
(29, 'savings', 9800),
(30, 'checking', 1700);

INSERT INTO transactions (account_id, amount, transaction_type, created_at) VALUES
(1, 2000, 'credit', '2024-12-01'),
(1, 500, 'debit', '2024-12-10'),
(2, 1000, 'debit', '2025-01-10'),
(3, 5000, 'credit', '2025-02-01'),
(3, 2000, 'debit', '2025-02-15'),
(4, 400, 'debit', '2025-03-01'),
(5, 300, 'credit', '2025-03-10'),
(6, 1000, 'debit', '2025-04-01'),
(6, 200, 'credit', '2025-04-10'),
(7, 1200, 'credit', '2025-01-20'),
(7, 900, 'debit', '2025-02-20'),
(8, 100, 'credit', '2025-03-20'),
(9, 600, 'debit', '2025-02-10'),
(10, 3000, 'credit', '2025-01-05'),
(10, 500, 'debit', '2025-03-05'),
(11, 800, 'debit', '2025-04-05'),
(11, 400, 'credit', '2025-04-06'),
(12, 700, 'credit', '2025-05-01'),
(13, 0, 'credit', '2025-05-10'),
(14, 100, 'debit', '2025-05-11'),
(15, 500, 'credit', '2025-05-12'),
(16, 500, 'debit', '2025-05-13'),
(17, 1000, 'debit', '2025-05-14'),
(18, 500, 'credit', '2025-05-15'),
(19, 100, 'credit', '2025-05-16'),
(20, 200, 'debit', '2025-05-17'),
(21, 400, 'credit', '2025-05-18'),
(22, 600, 'debit', '2025-05-19'),
(23, 300, 'credit', '2025-05-20'),
(24, 700, 'debit', '2025-05-21');

INSERT INTO loans (customer_id, amount, interest_rate, start_date, end_date) VALUES
(1, 10000, 5.0, '2023-01-01', '2026-01-01'),
(2, 8000, 4.5, '2023-06-01', '2027-06-01'),
(3, 7000, 6.2, '2023-09-01', '2026-09-01'),
(4, 4000, 7.0, '2024-03-01', '2025-03-01'),
(5, 3000, 5.5, '2024-04-01', '2026-04-01'),
(6, 12000, 6.0, '2023-02-01', '2028-02-01'),
(7, 5000, 4.9, '2024-06-01', '2026-06-01'),
(8, 9000, 5.7, '2024-07-01', '2027-07-01'),
(9, 15000, 6.8, '2023-08-01', '2028-08-01'),
(10, 6000, 5.1, '2023-12-01', '2026-12-01'),
(11, 4500, 4.6, '2023-05-01', '2025-05-01'),
(12, 7200, 6.3, '2024-05-01', '2026-05-01'),
(13, 8100, 5.9, '2023-04-01', '2026-04-01'),
(14, 3800, 6.5, '2024-01-01', '2026-01-01'),
(15, 9200, 7.0, '2023-10-01', '2026-10-01'),
(16, 11000, 4.4, '2023-11-01', '2027-11-01'),
(17, 13000, 5.2, '2023-03-01', '2028-03-01'),
(18, 2500, 6.6, '2024-09-01', '2026-09-01'),
(19, 3500, 4.8, '2023-07-01', '2026-07-01'),
(20, 7700, 5.3, '2023-06-15', '2026-06-15'),
(21, 9800, 6.4, '2024-02-01', '2028-02-01'),
(22, 6100, 5.5, '2024-03-15', '2027-03-15'),
(23, 8900, 5.0, '2024-04-20', '2027-04-20'),
(24, 4100, 6.1, '2024-05-01', '2026-05-01'),
(25, 1500, 5.7, '2023-01-01', '2024-01-01'),
(26, 2300, 4.9, '2024-07-01', '2026-07-01'),
(27, 3100, 6.0, '2023-08-15', '2026-08-15'),
(28, 5900, 7.1, '2023-09-01', '2026-09-01'),
(29, 8700, 6.9, '2023-10-01', '2027-10-01'),
(30, 6700, 5.6, '2024-01-15', '2027-01-15');


-- Querying the data 


-- Q1. Find customers with more than one account 
SELECT customer_id, COUNT(*) AS num_accounts
FROM accounts 
GROUP BY customer_id 
HAVING COUNT(*) > 1; 

-- Q2.Get the total amount credited to each account 
SELECT account_id, SUM(amount) AS total_credited
FROM transactions 
WHERE transaction_type = 'credit'
GROUP BY account_id; 

-- Q3.Find customers who have taken loans with interest rate higher than average 
SELECT * 
FROM loans 
WHERE interest_rate > (
	SELECT AVG(interest_rate)
	FROM loans
);

--Q4.List top 3 accounts with the highest total debit transactions 
SELECT account_id, SUM(amount) AS total_debited 
FROM transactions 
WHERE transaction_type = 'debit'
GROUP BY account_id 
ORDER BY total_debited DESC 
LIMIT 3; 

-- Q5. Find accounts that have never made any transaction 
SELECT * 
FROM accounts 
WHERE id NOT IN (
	SELECT DISTINCT account_id 
	FROM transactions
);

--Q6. Get total balance per customer across all their accounts 
SELECT c.id, c.name, SUM(a.balance) AS total_balance 
FROM customers c 
JOIN accounts a 
ON c.id = a.customer_id 
GROUP BY c.id, c.name; 

-- Q7. List customers with no loans 
SELECT *
FROM customers 
WHERE id NOT IN ( 
	SELECT DISTINCT customer_id 
	FROM loans); 

-- Q8. Show monthly total transactions for each account (last 6 months)
SELECT account_id, DATE_TRUNC('month', created_at) AS month, 
SUM(amount) AS total_amounth
FROM transactions 
WHERE created_at >= CURRENT_DATE - INTERVAL '6 months'
GROUP BY account_id, month
ORDER BY month DESC; 

-- Q9. Find customers who spent more than they earned 
SELECT a.customer_id
FROM accounts a 
JOIN transactions t 
ON a.id = t.account_id
GROUP BY a.customer_id 
HAVING 
	SUM(CASE WHEN t.transaction_type = 'debit' THEN t.amount ELSE 0 END)>
	SUM(CASE WHEN t.transaction_type = 'credit' THEN t.amount ELSE 0 END);

-- Q10. Calculate th total interest to be paid by each customer
SELECT customer_id, SUM(amount * (interest_rate / 100)) AS total_interest
FROM loans 
GROUP BY customer_id;





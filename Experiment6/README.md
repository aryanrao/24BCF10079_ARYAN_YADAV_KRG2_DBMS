# EXPERIMENT 6  
## Title: Understanding and Implementing Cursors for Row-by-Row Data Processing  

---

## AIM
To understand the concept and working of cursors in PL/SQL for row-by-row data processing and to analyze how implicit cursors, explicit cursors, and cursor attributes are used to implement business logic on multiple rows in a database table.

---

## APPARATUS / SOFTWARE REQUIREMENTS

### Database Management System (DBMS):
- Oracle Database Express Edition  
- PostgreSQL  

### Database Client Tool:
- Oracle SQL Developer  
- pgAdmin  

---

## OBJECTIVE
- To implement implicit and explicit cursors in PL/SQL.  
- To process multiple rows individually using explicit cursors.  
- To use cursor attributes such as `%FOUND`, `%NOTFOUND`, `%ROWCOUNT`, and `%ISOPEN`.  
- To simulate enterprise-level business logic processing.  

---

## THEORY

A **Cursor** is a pointer to the result set of a query.

### 1. Implicit Cursor
- Automatically created by Oracle for DML statements (`INSERT`, `UPDATE`, `DELETE`, `SELECT INTO`).  
- Managed internally by Oracle.  

### 2. Explicit Cursor
- Declared and controlled manually by the programmer.  
- Used when query returns multiple rows.  

### Cursor Attributes
- `SQL%FOUND`  
- `SQL%NOTFOUND`  
- `SQL%ROWCOUNT`  
- `cursor_name%ISOPEN`  

---

## PROBLEM STATEMENT

Enterprise applications often retrieve multiple records that require row-by-row processing to apply business rules such as salary increments, bonus allocation, eligibility checks, etc.

---

# EXPERIMENT STEPS

## Step 1: Create Employee Table

<img width="1439" height="909" alt="image" src="https://github.com/aryanrao/24BCF10079_ARYAN_YADAV_KRG2_DBMS/blob/main/Experiment6/Screenshots/Screenshot%202026-03-11%20083216.png" />

## Step 2: Insert Sample Data

<img width="1439" height="909" alt="image" src="https://github.com/aryanrao/24BCF10079_ARYAN_YADAV_KRG2_DBMS/blob/main/Experiment6/Screenshots/Screenshot%202026-03-11%20083627.png" />

# PART A: Implicit Cursor Example

### Business Logic:
Increase salary by 10% for employees earning less than 30000.

<img width="1439" height="909" alt="image" src="https://github.com/aryanrao/24BCF10079_ARYAN_YADAV_KRG2_DBMS/blob/main/Experiment6/Screenshots/Screenshot%202026-03-11%20083745.png" />


---

# PART B: Explicit Cursor Example

### Business Logic:
Display employees with salary greater than 30000.

<img width="1439" height="909" alt="image" src="https://github.com/aryanrao/24BCF10079_ARYAN_YADAV_KRG2_DBMS/blob/main/Experiment6/Screenshots/Screenshot%202026-03-11%20083912.png" />

---

# PART C: Using Cursor Attributes

<img width="1439" height="909" alt="image" src="https://github.com/aryanrao/24BCF10079_ARYAN_YADAV_KRG2_DBMS/blob/main/Experiment6/Screenshots/Screenshot%202026-03-11%20083934.png" />

---

# RESULT

The PL/SQL programs successfully demonstrated:
- Use of implicit cursors for DML operations.
- Use of explicit cursors for multi-row processing.
- Application of cursor attributes to control program execution.

---

# CONCLUSION

Cursors play a critical role in enterprise-level database applications by enabling row-by-row processing. Explicit cursors provide fine-grained control, while implicit cursors simplify DML operations. Proper use of cursor attributes enhances control flow and reliability.

---

# LEARNING OUTCOMES

After completing this experiment, the learner can:

- Understand cursor architecture in PL/SQL.
- Differentiate between implicit and explicit cursors.
- Use `%FOUND`, `%NOTFOUND`, `%ROWCOUNT`, `%ISOPEN`.
- Develop enterprise-level PL/SQL logic similar to systems used in organizations like:
  - Oracle Corporation
  - Accenture
  - Scaler
  - D. E. Shaw & Co.

# Pewlett-Hackard-Retirement Analysis


## Project Overview

#### The purpose of this analysis is to prepare Pewlett Hackard, a company staffing thousands, for the large number of employees who will be retiring soon. This potential mass exodus, referred to as the "silver tsunami", will leave the company with many vacancies that will need to be filled. Specifically, the company needs to answer the following questions: Who will be retiring in the next few years, and how many positions will Pewlett Hackard need to fill? Additionally, are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?<p>&nbsp;</p>  

## Resources
Data Source: Departments.csv, Dept_emp.csv, Dept_manager.csv, Employees.csv, Salaries.csv, Titles.csv, Quick DBD-database diagrams

Programs: PostgreSQL-a relational database system, pgAdmin-platform for PostgreSQL<p>&nbsp;</p>

## Results

1. A table (Retirement Titles) was compiled with all employees that were within the retirement-age (01/01/1952-12/31/1955). This yielded a total of 133,776 employees.

![Retirement Titles](https://github.com/yadidevop/Pewlett-Hackard-Analysis/blob/main/Data/retirement_titles_PNG.png)<p>&nbsp;</p>

2. The previous table was filtered to exclude all the employees that were no longer with the company. This resulted (Unique Titles) in a total of 72,458 employees who are of retirement-age. Employees' full name and job titles were included. 

![Unique Titles](https://github.com/yadidevop/Pewlett-Hackard-Analysis/blob/main/Data/unique_titles_PNG.png)<p>&nbsp;</p>

3. A table (Retiring Titles) counting the number of employees by most recent job title who are within retirement age was created. This table shows that 7 different job titles will be affected.

![Retiring Titles](https://github.com/yadidevop/Pewlett-Hackard-Analysis/blob/main/Data/retiring_title_PNG.png)<p>&nbsp;</p>

4. A table (Mentorship Eligibility) was assembled to show a list of qualified employees who were retirement-ready and could mentor the next generation of Pewlett Hackard employees? The eligibility criteria were employees who were born between January 1, 1965, and December 31, 1965. There was a total of 1,549 employees who were qualified for the mentorship program. 

![Mentorship Eligibility](https://github.com/yadidevop/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibility_PNG.png)<p>&nbsp;</p> 



## Summary

Potentially, a total of 72,458 roles will need to be filled as the "silver tsunami" begins to make an impact. Based on the data from the mentorship eligibility table, there are not enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees. It is my recommendation that the eligibility criteria be expanded to more than just a birth date. I propose that length of employment and job title be taken into consideration to make a retirement-ready employee be eligible for mentoring. If the eligibility criteria are expanded there could be a much greater number of eligible employees to train the next generation.

# Pewlett-Hackard-Analysis

They call demographics the "hidden science". I don't know who "they" is, but needless to say it's an often overlooked field of study, one that is quite literally hiding in plain sight. A major demographic trend facing companies, like our case study 'Pewlett-Hackard', is wave of retirements coming from baby-boomer employees. Mirroring national demographics as a whole, there is a tremendous amount of workers born from roughly 1946 and 1964 who are leaving their posts, a trend aptly titled the 'silver tsunami'. 

This analysis reviews that phenomenon within one company in a number of ways:

<br />

* **The number of people retiring**
* **The departments they are retiring in**
* **Their titles**
* **How long they've been with the company**
<br />

### The following work has been done in SQL through pgAdmin. 
Source code available [here](https://github.com/carlosjennings1991/Pewlett-Hackard-Analysis/blob/main/Queries/Employee_Database_challenge.sql)

---
Deliverables 1: those retiring
Deliverables 2: their title (at retirement)
Deliverables 3: those eligible for the "mentorship program"
Deliverables 4: the unique number of those eligible for the mentorship program

## Results 1: Those Retiring

First and foremost, we need to find out that of all the employees in the company, who are those about to retire. Luckily for us, retirement at this company is simply a function of age, so we can filter by birthdate. So after creating a database in pgAdmin and importing the correct csv file, we run this code. 

<img src ="https://github.com/carlosjennings1991/Pewlett-Hackard-Analysis/blob/main/Photos/retirees_code.png" width="500" height="245">

The result of this code is that we find 41,380 employees who are ostensibly eligible for retirement, as shown below. 

<br />
<img src="https://github.com/carlosjennings1991/Pewlett-Hackard-Analysis/blob/main/Photos/amount_retiring.png">

However, we made a critical mistake. The above code assumes that everyone in the system is a *current* employee. We have to filter to make sure those people who were born & hired in the right time slot are still working at Pewlett-Hackard. The below code takes this variable into account and returns a correct number of employees eligible for retirement. 

<img src="https://github.com/carlosjennings1991/Pewlett-Hackard-Analysis/blob/main/Photos/correct_retiring_code.png" width="360" height="313">

As a result, we find the accurate number below. 

<img src="https://github.com/carlosjennings1991/Pewlett-Hackard-Analysis/blob/main/Photos/correct_retiring_amount.png">

## Results 2: Their Title (at retirement)

We also want to know what position they are retiring at, since their replacements will need to be changed. In order to find that info we can do the following. Considering these are mature workers with many years of experience, we can assume that they are retiring at high positions relative to the company workforce as a whole. 

First and foremost, lets see the departments where those employees are retiring from. The below code filters a couple tables to see the retirees by department. 

<img src="https://github.com/carlosjennings1991/Pewlett-Hackard-Analysis/blob/main/Photos/retirees_by_dept.png" width="400" height="305">

The above code gives us the below result:

<img src="https://github.com/carlosjennings1991/Pewlett-Hackard-Analysis/blob/main/Photos/retirees_by_dept_totals.png" width="450" height="291">

Now that we have a broad-level understanding of where the retirements are taking place, lets go a bit deeper and see the titles of the individual employees set to retire so we can better understand the training that needs to be given to their replacement. 

The following code does just that. Note that "select count" acts very similarly to a pivot table in Excel where we are simply rearranging previously existing data to quickly display something we want. 

<img src="https://github.com/carlosjennings1991/Pewlett-Hackard-Analysis/blob/main/Photos/retirement_totals_code.png" width="400" height="156">

And the above code yields the following totals: 

<br />

<img src="https://github.com/carlosjennings1991/Pewlett-Hackard-Analysis/blob/main/Photos/retirement_totals_final.png" width="300" height="263">

---

## Summary

Unsurprisingly, there is a lot of talent leaving the workforce, and that domain knowledge definitely needs to be replaced. For our circumstances, we'd need to look at the cadre of employees of similar talent level, but who still have some time at the company (10 years to be exact). These employees not only would fill in the immediate gap of the departing employees but also train the even younger employees and *'future-proof'* the company. 

The below code creates the desired filter. 

<img src="https://github.com/carlosjennings1991/Pewlett-Hackard-Analysis/blob/main/Photos/mentorship_code.png" width="500" height="374">

We can now take a cursory glance at those eligible for the mentorship program. 

<img src="https://github.com/carlosjennings1991/Pewlett-Hackard-Analysis/blob/main/Photos/mentorship_table.png">

Now by running this code ("SELECT COUNT(emp_no) FROM mentorship_eligibility;") in the query editor we find that there are only 1,549 current employees who fit the criteria for the mentorship program. 

Obviously, this number is much lower than number of retiring workers. Secondly, we want to see which departments the potential mentors are currently working in (the code below does that), as we need to proportionally compensate the number of outgoing workers with incoming mentors. 

<img src="https://github.com/carlosjennings1991/Pewlett-Hackard-Analysis/blob/main/Photos/mentorship_departments_code.png" width="450" height="182">

This produces the following table showing us that department breakdown. 

<img src="https://github.com/carlosjennings1991/Pewlett-Hackard-Analysis/blob/main/Photos/mentorship_departments_table.png" width="400" height="394">

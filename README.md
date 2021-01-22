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

## Results 2: Their Title (at retirement)

So, turns out we ran into a little problem in the above code. When we run it, some people show up multiple times. Upon closer inspection, we see that when someone was promoted from "Engineer" to "Senior Engineer" they are in the sytem two times, for each position respectively. 

# Pewlett-Hackard-Analysis

## Project Overview
For this project we worked with the Pewlett Hackard, a large company boasting several thousand employees and that it's been around for a long time. As baby boomers begin to retire at a rapid rate Pewlett Haggard is looking toward the future in two ways. Firts, it's offering a retirement package for those who meet certain criteria. Second, it's starting to think about which positions will need to be filled in the near future. The number of upcoming retirements will leave thousands of job openings.

The present analysis brings information regarding the following questions: who will be retiring in the next few years, and how many positions will Pewlett Hackard need to fill? This analysis will help future-proof by generating a list of all employees eligible for the retirement package. 
 
To the initial analysis of the information, we have added two additional assignments: determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program.

 ## Resources
 - Data source: departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv
 - Software: PostgreSQL, pgAdmin 
 
 ## Results
 Regarding the information we obtained by manipulating the company's database and generating a set of tables that provided information about the upcoming "silver tsunami", we can clonclude the following:
 
 
 
 <img width="271" alt="retiring_titles" src="https://user-images.githubusercontent.com/107893200/185568886-e1657abf-8b1f-4689-ae09-d8ab1fc3fbbc.png">
 
 

 - We are estimating that the company will lose a total of 72,458 employees in various areas due to retirement. Mainly the ranks that will see the most departures are Senior Engineer, with 25,916 people, and Senior Staff with 24,926 people retiring. This is followed by the ranks of Engineer with 9,285 people, Staff with 7,636, Technique Leader with 3,603, and Assistant Engineer with 1,090. Lastly, the rank with the fewest retirements is Manager with only 2 people. 
- We can also conclude that the company allowed its employees to grow and be promoted. There are people who were even promoted twice, achieving a Senior position in the company. We were able to obtain this information due to the fact that in the database the name of some of the employees was repeated up to three times, and their rank changed after a certain period of time in the company. 
- On the other hand, from the database review we were able to identify that 1,549 employees are viable for the mentorship program. This will allow the company to train the company's new candidates and at the same time recognize and utilize the skills and knowledge of its retiring employees.
- By reviewing the table more closely and sorting the information according to the position of each candidate for the metorship program, it is possible to identify that more of those who are in a Senior Staff position will collaborate with the program, with 569 candidates. The positions with the lowest number of candidates participating in the program are Assistant Engineer, with 78 people, and Technique Leader with 77 people. However, in general, few people are contemplated in the mentorship program compared to the number of people retiring. There are no candidates in the position of Manager to mentor new employees.

<img width="285" alt="mentorship_titles_count" src="https://user-images.githubusercontent.com/107893200/185568728-18bc8e6d-9294-4964-9196-7eb7392fae25.png">

## Additional analysis

To provide a more complete and complex analysis we conducted further reviews of the information, and that will allow us to comprehend the "silver tsunami" from other points of view.

### Retirements per departments

Although the table of retirements per title gives us the possibility to identify to which ranks the retiring people belong, it does not give us precise information on which departments will be affected by these losses. This is due to the fact that the titles do not refer to a particular department of the company and in each of the departments it is possible to find these titles as shown in the table below.

<img width="477" alt="titles-per-department1" src="https://user-images.githubusercontent.com/107893200/185568603-4326b839-bb10-4582-b394-de93380e5bc5.png"><img width="476" alt="titles-per-department2" src="https://user-images.githubusercontent.com/107893200/185568657-6706b0bd-7c7f-4203-bd20-98c8be60cd59.png">
 

For this reason, we generated a table containing the information regarding retirements according to the company's departments.

<img width="365" alt="retirement_by_dep" src="https://user-images.githubusercontent.com/107893200/185568530-5c3fd0d2-7ba3-4195-94e6-1d57f39678d1.png">

As we can see in the table, the department that will have the most retirements is Development with 18,789 people retiring, followed by Production with 14,417 people. With only two thousand four hundred people less is the Sales department with 12,013 people. The department that will have less losses is Marketing with 3,518 people.

### Gender-related retirements
In addition to the analysis of retirements by department, we also counted retirements according to the gender of the employees.

<img width="249" alt="retirement_by_gender" src="https://user-images.githubusercontent.com/107893200/185568440-3e5119dd-112e-4135-8b30-2a544fa59bb2.png">

As we can see, there is a higher number of male employees who are retiring, with a total of 43,428 employees. On the other hand, 29,030 women are retiring. This could indicate that in the past, more men than women were hired, and that the company could use the silver tsunami as an opportunity to incentivize its gender equity policies.

 ## Summary 
 
 - How many roles will need to be filled as the "silver tsunami" begins to make an impact?
 
From this initial analysis we can estimate that the company will have to fill 72,458 roles in its various areas. Of the ranks that will see the most retirements is Senior Egineer, and the department with the most retirements will be Development. We were also able to identify that at least among the group of retirees, the company has more male than female employees. With the onset of the "silver tsunami", Pewlett Hackard could incentivize the hiring of more women, and thus not only modernize its company but also increase the number of female employees.
 
 - Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
 
 The company does not have enough retirement-ready employees to participate in the mentoring program for new hires. There are even ranks such as Manager that do not have a single person suitable to participate in the program. In addition, the number of employees retiring far exceeds the number of employees trained to support the mentoring process. While the retirements per title table shows that there are 25,916 employees in the title of Senior Engineer who will retire, there are only 169 candidates suitable to support mentoring in this same title.The company could train more of its employees to support the "silver tsunami"  process even if they are not retiring. However, the mentorship program is a great approach that can prepare the company for the renewal process it will undergo, as well as recognize all that its retiring employees have contributed to the company."

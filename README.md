

# Carlos Roman Data Analyst Portfolio

## About Me

As a data analyst, I hope to bring clarity and ease of understanding to complicated problems. I enjoy the challenge of finding patterns that are hidden within the obvious and answering the perpetual question of; “why?”

Previously, I have five years experience working in education and mental health and hope to utilize my teaching skills to familiarize people with the insights locked behind data. My interests include sports-talent acquisition, sports-performance, human behavior, and internet safety. 

Thank you for taking a look at my portfolio, and I hope to continue my data analyst development for the future. 


# **[Project 1: Women's Euro 2022 Player Usage Rate](https://github.com/carlosroman9/2022-Women-s-Euro-Usage-Rate)**

**Technology/Tools Used**: Python (url_lib, SQL_Lite, JSON_parsing), SQL (SQL_Lite Database, Microsoft SQL Server), Power-BI

**Data Source**: [Stats Bomb Open Data](https://github.com/statsbomb/open-data)**

Description: Over the last two years women’s football has exploded in popularity starting with FC Barcelona Femini’s record breaking match attendance of 91,648 people. Recently, the  BBC reported that the organization, Women Sport Trust (WST) discovered that the average viewer watched, “8 hours and 44 minutes of women’s sport in 2022,” while only “3 hours and 47 minutes were watched in 2021.” WST also found that a group of people only watched women’s sport and not men’s. The BBC cites “8.4 million people watched the FA Women’s Super League only did not tune in to the Premier League.” The increase in viewership of women’s football suggests an increase in popularity of the sport and leads one to consider the implications of women’s football reaching mainstream success. However, I believe that one barrier of entry for many people to engage in the sport is knowledge of the players. Who are the players to watch? Who is the “Lebron James” of women’s football?


Goal: 
My goal with this project was to give an average viewer of women’s soccer a deeper understanding of player performance through the metric of “usage rate.” Usage rate has been traditionally used in Basketball to assess player performance. It provides insight into  how much of the ball is used by a particular player. Usage may include a player’s shots, dribbles, key passes, and possessions lost. The player’s “uses” are then divided by the entire team’s “uses” (the total amount of all the players on the team’s uses) to determine the usage rate. Though many sports fans may simply look at baskets/goals, conversion rate, and assists to determine who the star offensive players are, those stats alone may not illustrate the true magnificence of a player’s performance. For example, two players may share an identical shot conversion rate of 75%. Further examination reveals that Player A completed 3 out of 4 shots, while Player B completed 75 out of 100 shots. All of a sudden the two players seem vastly different. Furthermore, this difference would be reflected in their usage rates, as Player B would have a higher usage rate than Player A because they had a higher “use” of the ball (100 total shots vs 4 total shots). I was inspired to pursue this project because of my interest in human performance and personnel recruitment. I also became interested in this type of analysis because of Brentford FC, a London based soccer club playing in England’s highest soccer division; the Premier League. Until two seasons ago, they were playing second in a second division league, but after embracing a data driven approach to player recruitment they achieved promotion and have stayed in Premier League since. I also took inspiration from a youtube channel called, Tifo Football, where they did their own version of usage rate analysis for their male players. 

Results:
Most players in the tournament fell in the middle of the scatter plot, however, there were some stand out players in both ends of the positive rate and usage rate spectrums. Karolina Vilhjalmsdottir was the player with the highest usage rate at almost 25%; this signifies that this player was constantly trying to create offensive opportunities with the ball (dribbling against players, shooting, creating score chances, etc). On the other hand, Jill Scott was a player who did not have many offensive plays with the ball and showed a lack of ball possession and a more defensive play style. In terms of positive rate, Millie Bright stands out at about an 80% positive rate while having less than 5% usage rate. This suggests that while Bright did not possess much of the ball, the times that she did ended up scoring chances for her team or contributed to goals herself. Alternatively, Ria Oling had above 15% usage rate of the ball, but had about a 10% positive rate, indicating that while she possessed the ball significantly, her uses of the ball were not positive (lost dribbles, and was dispossessed of the ball). 

Overall, analyzing usage rate and positive rate amongst players presents a clearer image of the player’s individual and team effectiveness beyond simply gazing at goals and assists. It presents a holistic view of a player's contributions to their team. 

![image](https://github.com/carlosroman9/2022-Women-s-Euro-Usage-Rate/blob/main/WEuro2022%20Usage%20Rate.jpg?raw=true)



# **[Project 2: Youth Mental Health Usage in California](https://github.com/carlosroman9/California_Youth_Mental_Health_Service_Usage)**

**Technology**: Excel (Power Query), Power BI

**Data Source**: data.ca.gov (Children and Mental Health Services Usage) https://data.ca.gov/dataset/mhs-dashboard-children-and-youth-demographic-datasets-and-report-tool/resource/ef40bfa1-f810-4dcb-8015-c410d84b245c

**Description**: In July 2022, the Biden-Harris administration released a statement regarding a solution to the “youth mental health crisis” in which they announced two actions to strengthen school based mental health services and address the crisis. They included:

“1. Awarding the first of nearly $300 million the President secured through the FY2022 bipartisan omnibus agreement to expand access to mental health services in schools. 

2. Encouraging Governors to Invest More in School-Based Mental Health Services.” (whitehouse.gov). 

As a former mental health educator who has worked with high school youth, this topic is important to me because I have witnessed first hand what this mental health crisis looks like and how the demand for mental health services in schools is overwhelmingly higher than what is currently being offered. I chose a dataset from data.ca.gov based on youth mental health service usage from 2018 to 2021.. The data comes from medi-cal service records and spans all of the counties in California, as well as providing data on race, fiscal year, and the type of services provided. The dataset also 

Goal: 
My goal with this dashboard is to bring forth a visualization of recent youth usage of mental health services in California and identify which population is using the most mental health services, as well breaking down service usage by county. I also wanted to identify the total amount of money spent on mental health services and the total number of youth who have benefitted from the services.


Results: 
California spent a total of 7.92 billion dollars in mental health services between 2018 and 2021. Also within that time frame, 2.19 million youth used mental health services. Hispanic, White, and Black youth used the most mental health services. Los Angeles, Santa Clara, Alemeda, San Bernardino, and San Diego spend the most on mental health services, while Los Angeles, San Bernardino, San Diego, Orange, and Riverside accounted for the most beneficiaries coming from those counties. The number of beneficiaries seemed to decrease after 2019, which would account for COVID lockdown; though, further research would be needed to add more context for the drop in beneficiaries. The consistently high number of Hispanic youth as mental health service beneficiaries would also warrant further study and analysis with a greater sample size to see if the same patterns are seen in Hispanic youth across other states. Given that the Biden-Harris administration have launched their initiative to increase funding and availability of mental health services in schools after the time-span of this data, it would be prudent to conduct another survey and analysis to see the impact of the changes stated in the initiative. In my professional experience, one of the main concerns of students is their privacy of using mental health services and not wanting to involve their parents in the process. The Biden-Harris school mental health initiative potentially addresses this issue by increasing the availability of the mental health services in school, and I would predict that the numbers of youth using mental health services would increase given the ease of accessibility. 

![image](https://github.com/carlosroman9/California_Youth_Mental_Health_Service_Usage/blob/main/Youth_Mental%20Health%20Usage_2021.jpg?raw=true)

White House Fact Sheet Link: https://www.whitehouse.gov/briefing-room/statements-releases/2022/07/29/fact-sheet-biden-harris-administration-announces-two-new-actions-to-address-youth-mental-health-crisis/


# **[Project 3: Data Wrangling, Analysis, and AB Testing UC Davis Coursera Course Case Study](https://github.com/carlosroman9/Data_WRangling_And_AB_Test)**

A project serving as a case study for AB testing analysis. The goal of the project was to see if there were increases in product views after a change in product landing pages and if there were increases in product sales after the  inclusion of a follow up email. For both scenarios, the outcomes were measured within 30 days of the test implementation. After establishing both tests, the results were checked for statistical significance with a 95% confidence interval calculation. 
 
* Simulated the process of creating an AB Test using SQL.
* Used CASE, CAST, JOINS, and subqueries to clean tables and create binary metrics. 

**Data Source:**

The data was provided by Coursera.

# **[Project 4: Wellness Center Usage Analysis](https://github.com/carlosroman9/Wellness_Center_Usage)**

One of my tasks while working as a Wellness Outreach Worker was to analyze our school’s wellness center usage. My task was to calculate the total number of students using the wellness center per day, per week, per month, and the total for the semester. I was also asked to break down check-ins by grade level, ethnicity of the student, and reason for visiting the wellness center. The data used in this project is synthetic. 

* Used this analysis to plan future mental health events for students (ex. planning de-stress activities before and during finals week due to an increase in student usage of the wellness center during those weeks)
* Shared analysis with PTSA officers and school administrators to advocate for increased financial support, increased therapeutic staff hiring, and clearance to create proposed mental health events

**Technologies Used:**
Excel/Google Sheets, R Studio

** Data Source:**

This data was formatted as if it were collected from a google form used by students to sign into the wellness center. The data is synthetic. 

![image](https://user-images.githubusercontent.com/32028989/210279451-3d1b3687-cd1b-4d55-b014-1e9edfc039c6.png)
![image](https://user-images.githubusercontent.com/32028989/210279460-73a7684e-ba49-4f4e-80e3-4bbeb8d98466.png)




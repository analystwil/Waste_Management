## Waste_Management - Philadelphia Streets Department

![image](https://user-images.githubusercontent.com/77358388/125873223-43eda908-6a28-4be1-bafd-4490116a61cf.png)


Team Members:
- Mangala, Francis
- Morakis, Chloe
- Wilson, Ashley
- Bradshaw, Ryan

## Outline:

- Business Problem and Questions
- Data Sources 
- Model
- Database & Dashboard we selected 
- Validate the problem

## Business Problem and Questions
Big Belly is transferring the current contract to the City of Philadelphia and we want to provide data to the city on how they could possibly be more efficent with trash pickups in the city.

- Does Big Belly currently have a schedule for container pickup?
- How many containers are in the city?
- What time of day are the containers full?
- How can we reduce overflowing containers in which cause an uptake in rodents and an eye soar in the community?


## Validate the problem

- A lot of Philadelphians hope to see improvements within the Streets Department. About 80 percent of people said the streets need to be cleaner.

![image](https://user-images.githubusercontent.com/77358388/125873505-5007604a-a5de-4a3e-b15f-2bd15b3e9f64.png)


## Data Sources
- [Big Belly Trash Bin Usage](https://metadata.phila.gov/#home/datasetdetails/5543866e20583086178c4f1e/representationdetails/55438ab49b989a05172d0d55/)
- [Big Belly Waste Baskets (Trash Bins)](https://metadata.phila.gov/#home/datasetdetails/555f8139f15fcb6c6ed4414f/representationdetails/556de53bcf0e0dca19464e91/ )

## Legend

GREEN/YELLOW/RED System

- GREEN is fairly empty (about 30 gallons of trash)
- YELLOW is full (about 90 Gallons)  
- RED is the highest (about 150 gallons)

## Database and Processing

SQL pgAdmin was used to clean up the data. 

We accessed the data by using two CSV and creating tables for each file in pgAdmin. We then merged the files by creating a new table.

We have 99,632 observations
-	The only change we had to make in the CSV was to rename one of the columns

We have 9 features: 

![image](https://user-images.githubusercontent.com/77358388/125873713-5b06ce58-2ef0-4793-8106-ccfce66f8fcd.png)

ERD Chart

![image](https://user-images.githubusercontent.com/77358388/125873739-3a1a80f3-d288-4677-a87b-2a59d198ff5a.png)


SQL pgAdmin

![image](https://user-images.githubusercontent.com/77358388/125873545-a981687c-7532-4e25-93ba-bd9a60f1956c.png)

![image](https://user-images.githubusercontent.com/77358388/125873842-98e598fc-e5ed-47a6-94a3-26eaedc73691.png)


Database below is the final database after we merged both CSV files (Waste and Waste Bins)

![image](https://user-images.githubusercontent.com/77358388/125873810-79f12133-d5c2-4e47-8de4-eb966f17d1f4.png)

We worked with data from the month of January. We filtered the table in Postgres to retrieve this data.

![image](https://user-images.githubusercontent.com/77358388/126092420-92c19bc4-33aa-45e8-8bf4-99b1aba44554.png)



## Analyis - PYTHON - MATPLOTLIB 

Below is the waste_data_df created containing the Jan data.

![image](https://user-images.githubusercontent.com/77358388/126092455-502a1314-2e11-47c8-9c65-ada50a9187a5.png)


## Model

Random Forest - Classification Problem

Supervised learning algorithm 

Split into training and test sets

The model is predicting the pickups for the last 11 days of the month of January based off of the groups we created in our analysis. Big Belly is transferring the contract over to the City of Philadelphia and to save time and resources we have gathered the containers should be only picked up when they are overflowing or near full. Model results below:

![image](https://user-images.githubusercontent.com/77358388/127417366-bde0af5e-101e-4143-8ec2-2df3250796ba.png)

Legend
- No Go (Fairly Empty) = 0
- Go (Full - Overflowing Waste) = 1

- No Go total 1,143 Containers
- Go total 1,357 Containers

The City of Philadelphia will now only pickup the containers indicated as Go. Picking up the bins that are full and overflowing will save the City time and resources along with decreasing waste in the city.


## Dashboard
- [Waste Management Dashboard](https://public.tableau.com/app/profile/ryan.bradshaw/viz/GroupProject_PhillyWaste/PhiladelphiaTrashAnalysis)

Shows all of the Jan Waste data. The darker squares indicate more waste in the particular location. 

![image](https://user-images.githubusercontent.com/77358388/126094585-576ac0bf-de1a-4d54-8a20-ef691e327d12.png)

The number 9 displayed in the screenshot shows the container reached the limit of GREEN/YELLOW/RED. 

![Jan_Trash Map](https://user-images.githubusercontent.com/79024998/127567770-87c2e9d2-42dd-4f31-aefa-d64bcfdc7909.PNG)

Map of Big Belly trash bins through out Philadelphia

![Jan_Recycle Map](https://user-images.githubusercontent.com/79024998/127567970-83064ec4-65d3-4ba9-9975-3426d1610a9b.PNG)

Map of Big Belly recycle bins through out Philadelphia.

![Jan_Trash lvls](https://user-images.githubusercontent.com/79024998/127568377-2bd0abd4-1033-439c-b7d8-d8a919eff327.PNG)

Bar Graph showing January trash levels

![Jan_Trash Level by Time](https://user-images.githubusercontent.com/79024998/127568252-ef4fd7cc-dcdf-4f61-886a-eaaa2601c1ba.PNG)

Chart illustrates trash levels by time of day

## Communication Protocols
- Weekly meeting – Wednesday’s 8:30-9:30p
- Agenda for weekly meeting
- Slack
- Zoom

## The WHY
To reduce waste pileup and save resources for the City of Philadelphia.

## Next Steps

For the ML model we would create fictional data set to predict the trash levels for every hour. We can also create a graph and see the predictions based off date and time. We would present this data to the City of Philadelphia and allow them to come up with an action plan for the waste pickup. 

In Tableau we would want to deploy Random Forest - Classification Problem model in Python directly into tableau using the TabPy library.


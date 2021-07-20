## Waste_Management - Philadelphia Streets Department

![image](https://user-images.githubusercontent.com/77358388/125873223-43eda908-6a28-4be1-bafd-4490116a61cf.png)


Team Members:
- Mangala, Francis
- Weber, Yuval
- Morakis, Chloe
- Wilson, Ashley
- Roberts, Truman
- Bradshaw, Ryan

## Outline:

- Business Problem and Questions
- Data Sources 
- Model
- Database & Dashboard we selected 
- Validate the problem

## Business Problem and Questions

- Making a case to the City of Philadelphia to keep trying the Big Belly trash cans and leveraging the data the waste baskets are collecting
- Does Big Belly currently have a schedule for container pickup?
- Once the container is full how long does it take Big Belly to empty container?
- What factors contribute to where the containers are placed?
- Business Problem - Containers are overflowing in which will cause an uptake in rodents and an eye soar in the community.

## Validate the problem

- A lot of Philadelphians hope to see improvements within the Streets Department. About 80 percent of people said the streets need to be cleaner.

![image](https://user-images.githubusercontent.com/77358388/125873505-5007604a-a5de-4a3e-b15f-2bd15b3e9f64.png)


## Data Sources
- [Big Belly Trash Bin Usage](https://metadata.phila.gov/#home/datasetdetails/5543866e20583086178c4f1e/representationdetails/55438ab49b989a05172d0d55/)
- [Big Belly Waste Baskets (Trash Bins)](https://metadata.phila.gov/#home/datasetdetails/555f8139f15fcb6c6ed4414f/representationdetails/556de53bcf0e0dca19464e91/ )


## Database and Processing

SQL pgAdmin

We will access the data by using two CSV and creating tables for each file in pgAdmin. We then merged the files by creating a new table.

We have 99,632 observations
-	The only change we had to make in the CSV was to rename one of the columns

We have 9 features: 

1. Objectid
- 
2. serialnum	
- The serial number of the BigBelly on the street. Each BigBelly has a unique SN	
3. description 
- Intersection where the BigBelly is located	
4. Recycler
- When yes the bigbelly has an attached recycler. When No, it is trash only.	
5. lat	
- Latitude of BigBelly location	
6. lng	
- Longitude of BigBelly location	
7. streamtype	
- The type of material the BigBelly holds. Typically in Philly, they are all Trash, but other customers have Single Stream, Bottles/Cans, Paper, etc.	
8. timestamp_ 
- The Date/Time of the collection	
9. level_
- The fullness of the bin when it was collected at the timestamp. We use a GREEN/YELLOW/RED system. GREEN is fairly empty (about 30 gallons of trash), YELLOW is full (about 90 Gallons) and RED is the highest (about 150 gallons).	

![image](https://user-images.githubusercontent.com/77358388/125873545-a981687c-7532-4e25-93ba-bd9a60f1956c.png)

![image](https://user-images.githubusercontent.com/77358388/125873842-98e598fc-e5ed-47a6-94a3-26eaedc73691.png)

![image](https://user-images.githubusercontent.com/77358388/125873713-5b06ce58-2ef0-4793-8106-ccfce66f8fcd.png)

![image](https://user-images.githubusercontent.com/77358388/125873739-3a1a80f3-d288-4677-a87b-2a59d198ff5a.png)


Database below is the final database after we merged both CSV files (Waste and Waste Bins)

![image](https://user-images.githubusercontent.com/77358388/125873810-79f12133-d5c2-4e47-8de4-eb966f17d1f4.png)

We will only be working with data from the month of January. I filtered the table in Postgres to retrieve this data.

![image](https://user-images.githubusercontent.com/77358388/126092420-92c19bc4-33aa-45e8-8bf4-99b1aba44554.png)



## PYTHON - MATPLOTLIB 

Below is the waste_data_df created containing the Jan data.

![image](https://user-images.githubusercontent.com/77358388/126092455-502a1314-2e11-47c8-9c65-ada50a9187a5.png)

We will create heatmaps or a line graph to analyze the data further.

## Model
We are still narrowing down the Machine Learning model that will be used for this analysis, below are some models that we are deciding from.

Classification
- Will assist in making a recommendation. RBM – unsupervised learning, monitor a system, building a binary recommendation system, or working with a specific set of data
- Monitor population to gauge frequency of trash pickup Arima – time series model, categorizes moving averages and auto-regression
- Predict how much garbage is going to be generated, could be accurate for the next 4-5 years
- Moving average – if it hits a certain point, this would be the impact of trash Linear Regression

## Dashboard
- [Waste Management Dashboard](https://public.tableau.com/app/profile/analystwil/viz/WasteManagementProject_16266622989210/AllJanWaste?publish=yes)
- [Waste Management Dashboard 2](https://public.tableau.com/app/profile/ryan.bradshaw/viz/PhiladelphiaTrash/JanuaryLevels?publish=yes)

![image](https://user-images.githubusercontent.com/77358388/126094365-27ea0731-9aff-4f7d-a561-02b8108df582.png)

Shows all of the Jan Waste data. The darker squares indicate more waste in the particular location. 

![image](https://user-images.githubusercontent.com/77358388/126094585-576ac0bf-de1a-4d54-8a20-ef691e327d12.png)

The number 9 displayed in the screenshot shows the container reached the limit of GREEN/YELLOW/RED. 

![image](https://user-images.githubusercontent.com/79024998/126253347-aaf12470-26bf-4c46-9988-44c0210b5a5d.PNG)

Map of Big Belly trash bins through out Philadelphia

![image](https://user-images.githubusercontent.com/79024998/126253415-e3860cf7-185d-447e-8dec-3539dc9e68ba.PNG)

Bar Graph showing January trash levels



## Legend

GREEN/YELLOW/RED system

GREEN is fairly empty (about 30 gallons of trash)
YELLOW is full (about 90 Gallons)  
RED is the highest (about 150 gallons)

## Communication Protocols
- Weekly meeting – Wednesday’s 8:30-9:30p
- Agenda for weekly meeting
- Slack
- Zoom

## The WHY
- Enviromental impact

## Next Steps 

Create a heatmap in Tableau showing the locations of the trash pickup based on weight
Finalize the Machine Learning Model


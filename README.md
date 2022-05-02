# MechaCar Statistical Analysis

## Overview
AutosRUs’ manufacturing team requested their production data to be analyzed to help provide insights into the troubles causing the newest prototype, the MechaCar, from progressing. 

**Analysis Entails:**
* Multiple linear regression analysis performed to identify which variables in the dataset predict the miles per gallon (mpg) of MechaCar prototype
* Summary statistics collected on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* T-tests ran to determine if the manufacturing lots are statistically different from the mean population
* Statistical study designed to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 


### Resources Utilized to Complete Analysis
* **Data Sources:** 
[MechaCar_mpg.csv](https://github.com/cmmgw/MechaCar_Statistical_Analysis/blob/main/R_Analysis/MechaCar_mpg.csv), 
[Suspension_Coil.csv](https://github.com/cmmgw/MechaCar_Statistical_Analysis/blob/main/R_Analysis/Suspension_Coil.csv)
* **Languages:** R
* **Tools:** MS Excel, RStudio, tidyverse, dpylr, ggplot2


## Linear Regression to Predict MPG
The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, ground clearance and AWD, were collected for each vehicle and are all considered the independent variables in the dataset. The dependent variable is mpg. Utilizing R, a linear model was designed that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file.

![Deliverable_1_Linear_Regression](https://github.com/cmmgw/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable_1_Linear_Regression.JPG)


#### Results:
* The variables that provide a non-random amount of variance to the mpg values in the dataset are vehicle length and ground clearance.
* The slope of the linear model is not considered to be zero, as some of the independent variables were statistically significant. The three asterisks denote a highly significant p-value for vehicle length and ground clearance, and both have a Pr(>t) of about 0. 
* The linear model predicts mpg of MechaCar prototypes effectively 71% of the time, as the R-squared value is 0.7149. 


## Summary Statistics on Suspension Coils
In the MechaCar Suspension_Coil.csv dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.

#### PSI Metrics for all Manufacturing Lots
A summary statistics table was created to show the suspension coil’s PSI continuous variable across all manufacturing lots. 

![Deliverable_2_Total_Summary](https://github.com/cmmgw/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable_2_Total_Summary.JPG)

#### PSI Metrics for Each Lot
A summary statistics table was created to show the following PSI metrics for each lot: mean, median, variance, and standard deviation.

![Deliverable_2_Lot_Summary](https://github.com/cmmgw/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable_2_Lot_Summary.JPG)

#### Results:
* The variance of the PSI for all manufacturing lots is 62.29356, which does not exceed the 100 pounds per square inch limit.
* The variance for Lot 1 and Lot 2 meets the design specifications as their respective variance, falls within range. However, Lot 3 does not meet the design specifications as the variance is 170.2861224 and therefore exceeds the 100 pounds per square inch limit. As such, suspension coils from Lot 1 and Lot 2 should be used. 


## T-Tests on Suspension Coils
T-tests were performed to determine if the PSI across all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch. Confidence intervals or p-values can be utilized to determine whether results are statistically significant. Given that the confidence interval is 95%, the significance level is 0.05%.  A confidence interval outlines the upper and lower limit for the mean. 

![Deliverable_3_T_Tests](https://github.com/cmmgw/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable_3_T_Tests.JPG)

#### Results:
* Across all manufacturing lots, the PSI is not statistically different from the population mean of 1,500 pounds per square inch, as the p value of 0.06028 is higher than 0.05, which indicates strong evidence for maintaining the null hypothesis.
* The PSI for manufacturing Lots 1 and 2 are not statistically different, as the respective p-values of 1 and 0.06072 are higher than 0.05. The PSI for Lot 3 is statistically different, as the p-value of 0.04168 is below 0.05, which indicates strong evidence for rejecting the null hypothesis.


## Study Design: MechaCar vs Competition
For further analysis, a statistical study can be designed to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers. 

#### Metrics
* Fuel efficiency: city mpg and highway mpg
* Vehicle type: convertible, coupe, crossover, diesel engine, hybrid, luxury, minivan, van, pickup truck, sedan, sports car, SUV, wagon

#### Hypothesis
* Null Hypothesis: MechaCars’ vehicles perform equally as well as those from other manufacturers, when comparing fuel efficiency across vehicle type
* Alternative Hypothesis: MechaCars’ vehicles does not perform equally as well as those from other manufacturers, when comparing fuel efficiency across vehicle type

#### Statistical Test
* ANOVA will validate the hypothesis and determine whether the differences are statistically significant
* Boxplot will visualize the variability of the samples and the central tendency

#### Data Needed
The sample size per vehicle type must be greater than 50, so the overall sample size for all vehicles across the dataset must be greater than 650. Vehicle fuel economy calculations for city mpg and highway mpg are needed when determining fuel efficiency. 


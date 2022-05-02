# MechaCar Statistical Analysis

## Overview
AutosRUs’ manufacturing team requested their production data to be analyzed to help provide insights into the troubles causing the newest prototype, the MechaCar, from progressing. 

**Analysis Entails:**
* Multiple linear regression analysis performed to identify which variables in the dataset predict the miles per gallon (mpg) of MechaCar prototype
* Summary statistics collected on the pounds per square inch (PSI) of the suspension coils 
* T-tests ran to determine if the manufacturing lots are statistically different from the mean 
* Statistical study designed to compare vehicle performance of the MechaCar vehicles against other vehicles. 


### Resources Utilized to Complete Analysis
* **Data Sources:** 
[MechaCar_mpg.csv] (https://github.com/RabidZippers/MechaCar_Statistical_Analysis/blob/main/MechaCar_Statistical_Analysis/MechaCar_mpg.csv)
[Suspension_Coil.csv] (https://github.com/RabidZippers/MechaCar_Statistical_Analysis/blob/main/MechaCar_Statistical_Analysis/MechaCar_mpg.csv)
* **Languages:** R
* **Tools:** MS Excel, RStudio, tidyverse, dpylr, ggplot2


## Linear Regression to Predict MPG
The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using several design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, ground clearance and AWD, were collected for each vehicle. All are considered the independent variables in the dataset. The dependent variable is mpg. Utilizing R, a linear model was designed to predict the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file.

![1_Linear_Regression] (https://github.com/RabidZippers/MechaCar_Statistical_Analysis/blob/main/MechaCar_Statistical_Analysis/Resources/1_Linear_Regression.png)


#### Results:
* The variables that provide a non-random amount of variance to the mpg values are vehicle length and ground clearance.
* The linear model predicts mpg of MechaCar prototypes effectively 71% of the time, as the R-squared value is 0.7149. 


## Summary Statistics on Suspension Coils
In the MechaCar Suspension_Coil.csv dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent. The design specifications for the MechaCar suspension coils show that the variance of the suspension coils must not exceed 100 pounds per square inch.

#### PSI Metrics for all Manufacturing Lots
A summary statistics table was created to show the suspension coil’s PSI continuous variable across all manufacturing lots. 

![2_Total_Summary] (https://github.com/RabidZippers/MechaCar_Statistical_Analysis/blob/main/MechaCar_Statistical_Analysis/Resources/3_Total_summary.png)
#### PSI Metrics for Each Lot
A summary statistics table was created to show the following PSI metrics for each lot: mean, median, variance, and standard deviation.

![2_Lot_Summary](https://github.com/RabidZippers/MechaCar_Statistical_Analysis/blob/main/MechaCar_Statistical_Analysis/Resources/2_Lot_summary.png)

#### Results:
* The variance of the PSI for all manufacturing lots is 62.29356, this does not exceed the 100 pounds per square inch limit.
* The variance for Lot 1 and Lot 2 meets the design specifications. However, Lot 3 does not meet the design specifications as the variance is 170.2861224 and therefore exceeds the 100 pounds per square inch. Showing the suspension coils from Lot 1 and Lot 2 should be used. 


## T-Tests on Suspension Coils
T-tests were performed to determine if the PSI across all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch. Confidence intervals or p-values can be utilized to determine whether results are statistically significant. Given that the confidence interval is 95%, the significance level is 0.05%.  A confidence interval outlines the upper and lower limit for the mean. 

![T_Tests Lot 1](https://github.com/RabidZippers/MechaCar_Statistical_Analysis/blob/main/MechaCar_Statistical_Analysis/Resources/4_T-test_and_Lot1_tes.png)
![T_Tests Lot 2 and 3](https://github.com/RabidZippers/MechaCar_Statistical_Analysis/blob/main/MechaCar_Statistical_Analysis/Resources/5_Lot2_and_Lot3_T-test.png)

#### Results:
* Within the manufacturing lots, the PSI is not statistically different from the population mean of 1,500 pounds per square inc. The p value of 0.06028 is higher than 0.05, which shows strong evidence for keeping the null hypothesis.
* The PSI for Lots 1 and 2 are not statistically different, the p-values of 1 and 0.06072 are higher than 0.05. The PSI for Lot 3 is different, with a p-value of 0.04168 which is below 0.05, therefore is strong evidence for rejecting the null hypothesis.

#### Hypothesis
* Null Hypothesis: MechaCars’ vehicles perform equally as well as those of other manufacturers vehicles, when comparing fuel efficiency across vehicle type
* Alternative Hypothesis: MechaCars’ vehicles do not perform equally as well as those of other manufacturers vehicles, when comparing fuel efficiency across vehicle type

#### Statistical Test
* ANOVA will validate the hypothesis to determine whether the differences are largely significant
* Boxplot will visualize the samples and the central tendency

#### Data Needed
The sample size per vehicle type must be greater than 50. Vehicle fuel economy calculations for city mpg and highway mpg are needed when determining fuel efficiency. 


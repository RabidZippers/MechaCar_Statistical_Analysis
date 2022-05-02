# Use library() function to load the dplyr package
?library
library(dplyr)

#Import and read in the MechaCar_mpg.csv
MechaCar_mpg_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Perform linear regression using the lm() function and pass in all 6 variables
?lm
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg_df)

#Use summary function todetermine the p-value and the r-squared value for the linear regression model.
?summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg_df))

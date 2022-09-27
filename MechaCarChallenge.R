library(dplyr)
library(tidyverse)

# Import MechaCar_mpg.CSV
mpg_data <- read.csv(file="MechaCar_mpg.csv", check.names = F)

# Generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg_data)

# Generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg_data))

# Import Suspension_Coil.csv
suspension_data <- read.csv(file="Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

# Calculate mean, median, variance, and standard deviation of the PSI column.
Mean = mean(suspension_data$PSI)
Median = median(suspension_data$PSI)
Variance = var(suspension_data$PSI)
SD = sd(suspension_data$PSI)

# Create total_summary_df
total_summary_df <- data.frame(Mean,Median,Variance,SD)

# Create lot_summary_df
lot_summary_df <- suspension_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups='keep')

# T-test for all manufacturing lots
t.test((suspension_data$PSI), mu=1500)

# T-test for each of the manufacturing lots
t.test(subset(suspension_data,Manufacturing_Lot == 'Lot1')$PSI,mu = 1500)
t.test(subset(suspension_data,Manufacturing_Lot == 'Lot2')$PSI,mu = 1500)
t.test(subset(suspension_data,Manufacturing_Lot == 'Lot3')$PSI,mu = 1500)
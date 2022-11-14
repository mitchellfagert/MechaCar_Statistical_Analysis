# MechaCar_Statistical_Analysis

## Overview of the Project
The purpose of this project was to utilize R programming language and Rstudio GUI to aid a fictitious company called AutosRU in performing statistical tests on their datasets for a prototype vehicle called "MechaCar". In essense, the prototype was suffering from production troubles and needed data analytics to help the manufacturing team uncover insights about what may need improvements. The statistical tests included a variety of hypothesis testing procedures on the company-specific datasets. Below, there are three sets of analyses described in detail followed by an additional statistical study design to compare performance of the MechaCar vehicles against similar vehicles from other manufacturers.

## Linear Regression to Predict MPG

Results of the lingear regression model tests are as follows:

<img width="472" alt="Linear_regression_results" src="https://user-images.githubusercontent.com/107579508/192560288-95a314b8-02b1-4b1f-9ada-97caa7b8b9b2.png">

These results provide insight to the following questions:

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

   The two variables/coefficients that provide non-random amount of variance are **vehicle_length** & **ground_clearance**. Thus, vehicle length & ground clearance have a significant impact on Miles Per Gallon test results for the protoype MechaCars.

2. Is the slope of the linear model considered to be zero? Why or why not?

   No, we have identified a negative linear correlation among certain variables such as **vehicle length** & **ground clearance**. As the length of the vechile increases the miles per gallon test results decrease. Similar to the vehicle length variable, as ground clearance increases miles per gallon test results decrease.

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

   Yes, this linear model effectively predicts mpg of MechaCar prototypes. The r-squard value is **.71**, this metric represents a high probability that the likelihood of future data points will fit this linear model.

## Summary Statistics on Suspension Coils

![total_summary_df](https://user-images.githubusercontent.com/107579508/192614642-24b9a209-3fcb-400f-8dce-8533b2d24e8c.png)

![lot_summary_df](https://user-images.githubusercontent.com/107579508/192614662-4bee82d2-8dae-42d5-98cf-9ee091e0ca06.png)

* The first figure shown above illustrates the Total Summary of suspension coil data. At **62.29356**, the MechaCar suspension coils meet their design specifications by not exceeding 100 pounds per square inch. However, it is important to note when further analysis was completed (see second table) and coil data was grouped by lots, **Lot 3** is well over the acceptable threshold. There could be an outlier that is skewing the data but further investigation is required to identify the large variance.

## T-Tests on Suspension Coils

![t_test_all_lots](https://user-images.githubusercontent.com/107579508/192619078-3602689d-6f61-4c78-9cf4-c5e4691f975e.png)

Above is the results of a one sample t-test performed for the suspension coils across all manufacturing lots. Our p-value = **0.06208** which tells us that there is no statistical difference between our obvserved mean and the presumed mean.

![t_tesl_lot1](https://user-images.githubusercontent.com/107579508/192619117-b0f391ce-0f9b-421a-bc83-d2e6257a2383.png)

Above is the results of one sample t-test for the suspension coils from lot 1. Our p-value = **1** which tells us that there is no statistical difference between our obvserved sample mean and the presumed mean.

![t_tesl_lot2](https://user-images.githubusercontent.com/107579508/192619126-cda645b1-eb7a-4d58-8786-24c1fb1a554f.png)

Above is the results of one sample t-test for the suspension coils from lot 2. Our p-value = **0.6072** which tells us that there is no statistical difference between our obvserved sample mean and the presumed mean.

![t_tesl_lot3](https://user-images.githubusercontent.com/107579508/192619131-a8856066-1460-4b4c-9564-7e660d8226ec.png)

Above is the results of one sample t-test for the suspension coils from lot 2. Our p-value = **0.04168** which tells us that there *is* a statistical difference between our obvserved sample mean and the presumed mean. (0.04168 < 0.05) Further inquiries need to be held to identify the cause.

## Study Design: MechaCar vs Competition

The car market is saturated with competitors who are all fighting for market share. Understanding how the MechaCar will differentiate itself from the compeitition is imperative so that developers can focus on the right metrics influence consumers decisions. Given the economic macro-economic pressures of decade high inflation, most consumers sensitive to features that save them the most money later down the road.

### Metrics to Test

It is going to be important that the developers focus on the city & highway fuel efficiecney in comparison to its competitors in order to appeal the ever changing demands of the consumer car market.

### Potential statistical test & hypothesis suggestion

A two-sample t-test would be beneficial because it would test whether the means of two samples are statistcally different. 

Null: There is no statistical difference between MechaCar prototype's mean city/highway miles per gallon (mpg) and Competitor A's mean mpg.

Alternative: There is a statistical difference between MechaCar prototype's mean city/highway miles per gallon (mpg) and Competitor A's mean mpg.

Data would need to be gathered that showed the MechaCar's city/highway fuel efficiency. In addition, a prominent competitor in the market would need to be identified and a data set would need to be obtained that held similar data in orde to complete this analysis.

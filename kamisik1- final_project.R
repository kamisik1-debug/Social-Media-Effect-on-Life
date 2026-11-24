#kamisik1-final_project.R

#STA 145 Final Project: Upload your Data into R

# Step 6: load the tidyverse
library(tidyverse)
library(readr)
# Step 7: load data.csv from the working directory 
 data <- read_delim("data.csv")
 
# Step 8: run the three checks
 dim(data)
 names(data)
 summary(data)
 
 # descriptive statistics for table 1
 # for a quantitative variable: social media time 
 summary(data$count_average_spent)
 sd(data$count_average_spent)
 
 # For a qualitative variable: media effect on life 
 table(data$media_effect_life)
 
 #linear regression
 lm <- lm(count_average_spent ~ as.factor(media_effect_life), data = data)
 summary(lm)
 
# box plot
 boxplot(data$count_average_spent ~ data$media_effect_life)

 
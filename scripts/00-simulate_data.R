#### Preamble ####
# Purpose: Simulates example data for study 1 
# Author: Hailey Jang
# Date: 13 February 2024 
# Contact: Hailey.Jang@mail.utoronto.ca
# License: MIT
# Pre-requisites: No
# Any other information needed? NO


#### Workspace setup ####
```{r}
library(tidyverse)
```


#### Simulate data ####
```{r}
set.seed(123)

# Number of participants
num_participants <- 293

# Simulate free will scores
freewill <- rnorm(num_participants, mean = 50, sd = 10)

# Simulate job satisfaction at time 1
job_satisfaction_time1 <- rnorm(num_participants, mean = 70, sd = 15)

# Simulate job satisfaction at time 2
job_satisfaction_time2 <- rnorm(num_participants, mean = 75, sd = 12)

# Create a data frame
df <- data.frame(
  freewill = freewill,
  JS = job_satisfaction_time1,
  W2JS = job_satisfaction_time2
)

write.csv(df, "FW_satisfaction_Study_1_data_simulated.csv", row.names = FALSE)
```

# Pull it all together here, break out tasks to other files
source("get.R")
source("munge.R")
source("analyze.R")
library(dplyr)

train <- load_training_data()

#get number of observations
observation_train <- nrow(train)

#get the summary
first_pass_summary(train)

filled_missing_values_train <- fill_missing_values(train)


# Pull it all together here, break out tasks to other files
source("get.R")
source("munge.R")
source("analyze.R")
list.of.packages <- c('dplyr', 'randomForest', 'plotly', 'webshot', 'corrplot')
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) {
  install.packages(new.packages)
}
for(package in list.of.packages){
  library(package, character.only = TRUE)
}

train <- load_training_data()

#get number of observations
observation_train <- nrow(train)

#get the summary
first_pass_summary(train)

filled_missing_values_train <- fill_missing_values(train) #calling the NA filling function in munge.R
make_all_hist(filled_missing_values_train) #see histograms folder

# Pull it all together here, break out tasks to other files
source("get.R")
source("munge.R")
source("analyze.R")


#load the necessary packages
list.of.packages <- c('dplyr', 'randomForest', 'plotly', 'webshot', 'corrplot')
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) {
  install.packages(new.packages)
}
for(package in list.of.packages){
  library(package, character.only = TRUE)
}

#this will load the trianing data in get.R file
train <- load_training_data()

#get number of observations
observation_train <- nrow(train)

#provide summary statistics for the training data in analyze.R file
first_pass_summary(train)

#fill in missing values for the trianing data in munge.R
train <- fill_missing_values(train)

train <- normalize_data(train)

sapply(train, class)


make_all_hist(train) #see histograms folder

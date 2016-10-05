# Pull it all together here, break out tasks to other files
source("get.R")
source("munge.R")
source("analyze.R")
source("tree.R")


#load the necessary packages
list.of.packages <- c('dplyr', 'randomForest', 'plotly', 'webshot', 'corrplot', 'party', 'dummy', 'dummies')
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) {
  install.packages(new.packages)
}
for(package in list.of.packages){
  library(package, character.only = TRUE)
}

#this will load the trianing data in get.R file
raw_train <- load_training_data()

#get number of observations
observation_train <- nrow(raw_train)

#provide summary statistics for the training data in analyze.R file
first_pass_summary(raw_train)

#fill in missing values for the trianing data in munge.R
train_filled <- fill_missing_values(raw_train)

#make histograms in analyze.R
make_all_hist(train_filled)

#rescale and create dummies in munge.R
train_norm <- normalize_data(train_filled)

#create dummies
train_dummy <- dummy.data.frame(train_norm)

#make the tree for feature selection
fs.tree <- ctree(SalePrice ~ ., train_dummy, controls = ctree_control(maxdepth = 3))
plot(fs.tree, type = "simple")

#pca
pca_data <- train_dummy %>%
  select(-SalePrice) # don't need to do pca on the target var
pca_run <- prcomp(pca_data, center = T, scale. = F, tol = .1)
plot(pca_run, type = "l")
summary(pca_run)
View(pca_run$rotation)



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

#training and test split
set.seed(123)
smp_size <- floor(0.8 * nrow(train_dummy))
train_ind <- sample(seq_len(nrow(train_dummy)), size = smp_size)
train <- train_dummy[train_ind, ]
test <- train_dummy[-train_ind, ]

train$Exterior2ndOther = NULL
train$ExterCondPo = NULL
train$HeatingFloor = NULL
train$MiscFeatureGar2 = NULL

test$Exterior2ndOther = NULL
test$ExterCondPo = NULL
test$HeatingFloor = NULL
test$MiscFeatureGar2 = NULL

#decision tree
library(rpart)
library(tree)
target_test = data.frame(test$SalePrice)
model.tree <- rpart(SalePrice ~ . , data=train)
pred.train.tree <- data.frame(predict(model.tree, test))
cor(pred.train.tree$predict.model.tree..test., target_test$test.SalePrice)
plot(pred.train.tree$predict.model.tree..test., target_test$test.SalePrice,
     main = 'Predicted vs Actual SalePrice', ylab = 'SalePrice',
     xlab = 'Predicted SalePrice', sub = 'Correlation = .84')
sqrt( sum( (pred.train.tree$predict.model.tree..test. - target_test$test.SalePrice)^2 , na.rm = TRUE ) / nrow(test) )


#boosted trees
library(gbm)
library(caret)
gbm.model = gbm(SalePrice ~.,
                data = train,
                n.trees=10000,
                distribution = 'gaussian',
                cv.folds = 5,
                shrinkage=0.01)

gbm.perf(gbm.model)
pred.train.gbm <- data.frame(predict(gbm.model, test))
cor(pred.train.gbm[,1], target_test$test.SalePrice)
plot(pred.train.gbm[,1] , target_test$test.SalePrice,
     main = 'Predicted vs Actual SalePrice', ylab = 'SalePrice',
     xlab = 'Predicted SalePrice', sub = 'Correlation = .94')
sqrt( sum( (pred.train.gbm[,1] - target_test$test.SalePrice)^2 , na.rm = TRUE ) / nrow(test) )


#random forest
library(randomForest)
colnames(train) = make.names(colnames(train), unique = FALSE, allow_ = TRUE)
colnames(test) = make.names(colnames(test), unique = FALSE, allow_ = TRUE)
rf <- randomForest(SalePrice ~ . , data=train, ntree=500)
pred.rf <- data.frame(predict(rf, test))
cor(pred.rf[,1], target_test$test.SalePrice)
plot(pred.rf [,1] , target_test$test.SalePrice,
     main = 'Predicted vs Actual SalePrice', ylab = 'SalePrice',
     xlab = 'Predicted SalePrice', sub = 'Correlation = .92')
sqrt( sum( (pred.rf [,1] - target_test$test.SalePrice)^2 , na.rm = TRUE ) / nrow(test) )



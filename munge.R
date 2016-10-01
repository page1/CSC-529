# Do most mutation & cleaning of data here


fill_missing_values <- function(data) {
  
  na_factor_fixer <- function(factor_data, na_value){
    factor_data <- as.character(factor_data)
    factor_data[is.na(factor_data)] <- na_value
    as.factor(factor_data)
  }

  #missing values
  #LotFrontage 259 NAs however we can assume all houses have some street access
  #and therefore we will simply replace the missing values with the median
  summary(data$LotFrontage)
  data$LotFrontage[is.na(data$LotFrontage)] <- median(data$LotFrontage, na.rm = T)
  summary(data$LotFrontage)
  
  #Alley 1369 NAs this means that the house didn't have an ally and thus will be coded
  #as absent
  summary(data$Alley)
  data$Alley <- na_factor_fixer(data$Alley, 'no_alley')
  summary(data$Alley)
  
  #MasVnrType 8 NAs
  summary(data$MasVnrType)
  data$MasVnrType <- na_factor_fixer(data$MasVnrType, "None")
  summary(data$MasVnrType)
  
  #MasVnrArea 8 NAs
  summary(data$MasVnrArea)
  data$MasVnrArea[is.na(data$MasVnrArea)] <- 0
  
  #BsmtQual 37 NAs
  summary(data$BsmtQual)
  #BsmtCond 37 NAs
  summary(data$BsmtCond)
  #BsmtExposure 38 NAs
  summary(data$BsmtExposure)
  #BsmtFinType1 37 NAs
  summary(data$BsmtFinType1)
  #BsmtFinType2 38 NAs
  summary(data$BsmtFinType2)
  
  data <- data %>%
    mutate(BsmtQual = na_factor_fixer(BsmtQual, "no_basement"),
           BsmtCond = na_factor_fixer(BsmtCond, "no_basement"),
           BsmtExposure = na_factor_fixer(BsmtExposure, "no_basement"),
           BsmtFinType1 = na_factor_fixer(BsmtFinType1, "no_basement"),
           BsmtFinType2 = na_factor_fixer(BsmtFinType2, "no_basement"))
  
  summary(data$BsmtQual)
  summary(data$BsmtCond)
  summary(data$BsmtExposure)
  summary(data$BsmtFinType1)
  summary(data$BsmtFinType2)
  
  #Electrical 1 NAs
  summary(data$Electrical)
  #FireplaceQu 690 NAs
  summary(data$FireplaceQu)
  #GarageType 81 NAs
  summary(data$GarageType)
  #GarageYrBlt 81 NAs
  summary(data$GarageYrBlt)
  #GarageFinish 81 NAs
  summary(data$GarageFinish)
  #GarageQual 81 NAs
  summary(data$GarageQual)
  #GarageCond 81 NAs
  summary(data$GarageCond)
  #PoolQC 1453 NAs
  summary(data$PoolQC)
  #Fence 1179 NAs
  summary(data$Fence)
  #MiscFeature 1406 NAs
  summary(data$MiscFeature)
  
  data <- data %>%
    mutate(Electrical = na_factor_fixer(Electrical, "no_electrical"),
           FireplaceQu = na_factor_fixer(FireplaceQu, "no_fireplace"),
           GarageType = na_factor_fixer(GarageType, "no_garage"),
           GarageYrBlt = ifelse(is.na(GarageYrBlt), median(GarageYrBlt, na.rm = T), GarageYrBlt),
           GarageFinish = na_factor_fixer(GarageFinish, "no_garage"),
           GarageQual = na_factor_fixer(GarageQual, "no_garage"),
           GarageCond = na_factor_fixer(GarageCond, "no_garage"),
           PoolQC = na_factor_fixer(PoolQC, "no_pool"),
           Fence = na_factor_fixer(Fence, "no_fence"),
           MiscFeature = na_factor_fixer(MiscFeature, "no_misc"))
 
  if(any(!complete.cases(data))){
    stop("there are still cases with NA's !")
  }
  return(data)
}

normalize_data <- function(x){
 norm_val <- (x-min(x))/(max(x)-min(x))
}
filled_missing_values_train$LotArea <- normalize_data(filled_missing_values_train$LotArea)
#we need to call the above line on every variable to normalize

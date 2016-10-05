#this will add the na as a factor
na_factor_fixer <- function(factor_data, na_value){
  factor_data <- as.character(factor_data)
  factor_data[is.na(factor_data)] <- na_value
  as.factor(factor_data)
}


#fill in the missing values
fill_missing_values <- function(data) {
  
  data$LotFrontage[is.na(data$LotFrontage)] <- median(data$LotFrontage, na.rm = T)
  data$Alley <- na_factor_fixer(data$Alley, 'no_alley')
  data$MasVnrType <- na_factor_fixer(data$MasVnrType, "None")
  data$MasVnrArea[is.na(data$MasVnrArea)] <- 0
  
  data <- data %>%
    mutate(BsmtQual = na_factor_fixer(BsmtQual, "no_basement"),
           BsmtCond = na_factor_fixer(BsmtCond, "no_basement"),
           BsmtExposure = na_factor_fixer(BsmtExposure, "no_basement"),
           BsmtFinType1 = na_factor_fixer(BsmtFinType1, "no_basement"),
           BsmtFinType2 = na_factor_fixer(BsmtFinType2, "no_basement"))
  
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
 
  data$Id = NULL
  
  if(any(!complete.cases(data))){
    stop("there are still cases with NA's !")
  }
  return(data)
}


#this will convert numeric attributes to 0-1 scale, create dummies for factors
#and the log sale price and then convert all attributes to numeric
normalize_data <- function(data){
  zero_one <- function(x){
    if(is.numeric(x)){
      return((x - min(x)) / (max(x) - min(x)))
    }
    return(x)
  }
  
  data <- data %>%
    mutate_each(funs(zero_one), -SalePrice, -YearBuilt, -YearRemodAdd, -BsmtFullBath, -BsmtHalfBath, -FullBath, -HalfBath, -BedroomAbvGr, -KitchenAbvGr, -TotRmsAbvGrd, -Fireplaces, -GarageYrBlt, -YrSold) %>%
    mutate(SalePrice = log(SalePrice))
  
  return(data)
}

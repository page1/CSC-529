tree_feature_selection <- function(data){
  
  library(party)
  set.seed(1234)
  tree <- ctree(data$SalePrice ~ .,data = data, controls = ctree_control(maxdepth = 10))
  plot(tree)
  return(tree)
  
}
tree_feature_selection <- function(data){
  
  library(party) # TODO: don't import in function calls, very inefficient
  set.seed(1234) # TODO: isn't ctree deterministic? regardless, probably limited need to set seed
  tree <- ctree(data$SalePrice ~ .,data = data, controls = ctree_control(maxdepth = 10))
  plot(tree)
  return(tree)
  
}
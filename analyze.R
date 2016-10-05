# Do analysis here

first_pass_summary <- function(data) {
  summary(data)
}

make_all_hist <- function(data) {
  folder <- "histograms"
  dir.create(folder, showWarnings = FALSE)
  plots <- lapply(colnames(data), function(col) {
    print(paste("Histogram for", col))
    if(is.factor(data[[col]])){
      p <- qplot(data[[col]],
                 geom="bar",  
                 main = paste("Barplot for", col), 
                 xlab = col, 
                 fill=I("blue"))
    } else {
      p <- qplot(data[[col]],
                 geom="histogram",  
                 main = paste("Histogram for", col), 
                 xlab = col, 
                 fill=I("blue"))
    }
    file_name <- paste0(folder, "/", col, ".png")
    ggsave(file_name, plot = p)
  })
}

pollutantmean <- function(directory, pollutant, id = 1:332){
  
  list_of_files <- list.files(path = "specdata/", pattern = ".csv", all.files = TRUE, full.names = TRUE)
  
  empty_df <- numeric()
  
  for (i in id) {
    df <- read.csv(list_of_files[i])
    empty_df <- c(empty_df, df[[pollutant]])
  }
  
  mean(empty_df, na.rm = TRUE)
}
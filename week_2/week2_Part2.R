# Write a function that reads a directory full of files
# and reports the number of completely observed cases in each data
# file. The function should return a data frame where the first
# column is the name of the file and the second column is the
# number of complete cases.

# complete("specdata", 1)

complete <- function(directory, id = 1:332){
  
  list_of_files <- list.files(path = "specdata/", pattern = ".csv", all.files = TRUE, full.names = TRUE)
  
  clean <- numeric()
  
  for (i in id) {
    df <- read.csv(list_of_files[i])
    #empty_df <- c(empty_df, df[[pollutant]])
    
    bad <- is.na(df[i])
    clean <- data.frame(df[!bad])
    
    # bad2 <- is.na(hw1_data$Solar.R)
    # Solar_clean <- data.frame(hw1_data$Solar.R[!bad2])
    
  }
  clean
  #mean(empty_df, na.rm = TRUE)
}
# obtain list of sensor files in specdata directory

# dir() OR list.files() ashiglah. 2 uulang ni turshij uzeye

# List the Files in a Directory/Folder

print("Ehleed default-r ni bichij uzlee")

#dir(path = "specdata/", pattern = NULL, all.files = FALSE, full.names = FALSE, recursive = FALSE, ignore.case = FALSE, include.dirs =  FALSE, no.. = FALSE)
#File neriig buten gargahiin tuld "pattern"-g .csv gj todotgoh, full.names =TRUE geh yum bn
#Tiimees deerhiig commentlood ...

dir(path = "specdata/", pattern = ".csv", full.names = TRUE)

list_of_files <- list.files(path = "specdata/", pattern = ".csv", all.files = TRUE, full.names = TRUE)

list_of_files

id <- 10

# create empty data frame

empty_df <- data.frame()

# subset list of sensor files ? Yg ymar heregtei??

# loop through files in subset list and
#    * read the csv file
#    * bind to "collector" data frame

for (i in id) {
  df <- read.csv(list_of_files[i])
  empty_df <- c(empty_df,df$sulfate)
}

# calculate mean and return to parent environment

mean(empty_df, na.rm = TRUE)
1
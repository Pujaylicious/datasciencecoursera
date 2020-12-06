getwd()
read.csv("quiz1_data/hw1_data.csv")

print("Question 18")

#You need to construct a logical vector in R to match
#the question's requirements.
#Then use that logical vector to subset the data frame.

#Extract the subset of rows of the data frame where
#Ozone values are above 31 and Temp values are above 90.
#What is the mean of Solar.R in this subset?

#   x[x > "a"]

hw1_data$Ozone
hw1_data["Wind"]
hw1_data[["Temp"]]

hw1_data[c("Ozone", "Solar.R", "Wind")]
#print(hw1_data[c("Ozone", "Solar.R", "Wind")])
q18_prep<-data.frame(hw1_data[c("Ozone", "Solar.R", "Wind")])
print(q18_prep)

#complete.cases(q18_prep)
#good <- complete.cases(q18_prep)
#q18_prep[good, ]

bad1 <- is.na.data.frame(hw1_data$Ozone)
#hw1_data$Ozone[!bad1]
#data.frame(hw1_data$Ozone[!bad1])
Ozone_clean <- data.frame(hw1_data$Ozone[!bad1])

bad2 <- is.na(hw1_data$Solar.R)
Solar_clean <- data.frame(hw1_data$Solar.R[!bad2])

bad3 <- is.na(hw1_data$Temp)
Temp_clean <- data.frame(hw1_data$Temp[!bad3])

good <- complete.cases(hw1_data)
hw1_data[good, ]

which( clean$Ozone>31 & clean$Temp >90)
clean[40:41, ]
clean[79:86, ]
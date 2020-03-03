#test 
#Load in the data
getwd()
setwd("/Users/stephenkane/downloads")
Road <- read.csv(file="uk-road-safety-accidents-and-vehicles/Accident_Information.csv", header = TRUE, sep =",")

#Sample Road Safety
set.seed(404)
road.index <- sample(1:nrow(Road),ceiling(0.05*nrow(Road)))
road.train <- Road[road.index,]
road.test <- Road[-road.index,]

#Remove raw dataset
rm(Road)

#export sample data
write.csv(file = "Road_Train.csv", road.train, row.names = FALSE)

Vehicle <- read.csv(file="uk-road-safety-accidents-and-vehicles/Vehicle_Information.csv", header = TRUE, sep =",")

# Getting and Cleaning Data Course Project - Activities

# Download https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# Unzip and set diretório UCI HAR Dataset > 

setwd("C:/Coursera/UCI HAR Dataset")
library(reshape2)

# read data into data frames
# directory train
dataX_train  <- read.table("train/X_train.txt", header = FALSE)
dataY_train  <- read.table("train/y_train.txt", header = FALSE)
datasubject_train  <- read.table("train/subject_train.txt", header = FALSE)

#directory test
dataX_test  <- read.table("test/X_test.txt", header = FALSE)
dataY_test  <- read.table("test/y_test.txt", header = FALSE)
datasubject_test  <- read.table("test/subject_test.txt", header = FALSE)


#Read vairables
data_features <- read.table("features.txt",header = FALSE)

#Read activity labels
data_activity_labels <- read.table("activity_labels.txt",header = FALSE)


#STEP 1: Merges the training and the test sets to create one data set.
data_X <- rbind(dataX_train, dataX_test)
data_Y <- rbind(dataY_train, dataY_test)
datasubject <- rbind(datasubject_train, datasubject_test)

#set names to variables
names(data_X)<- data_features$V2
names(data_Y)<- c("activity")
names(datasubject)<-c("subject")

#merge
data_merge <- cbind(datasubject, data_Y,data_X)


#STEP 2:Extracts only the measurements on the mean and standard deviation for each measurement. 

variables_mean_or_sdv<- data_features$V2[grep("mean\\(\\)|std\\(\\)", data_features$V2)]
variables<-c("subject", "activity", as.character(variables_mean_or_sdv))

# only variables related to mean and standard deviation
data<-subset(data_merge,select=variables)

#STEP 3:Uses descriptive activity names to name the activities in the data set and STEP 4:Appropriately labels the data set with descriptive variable names. 
data$activity <- factor(data$activity, labels=c("Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying"))

#STEP 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## aggregate and average of each variable for each activity and each subject.
melted <- melt(data, id=c("subject","activity"))
tidy <- dcast(melted, subject+activity ~ variable, mean)

#print data
tidy

#or 
aggregate<- aggregate(. ~subject + activity, data, mean)
order <- aggregate[order(aggregate$subject, aggregate$activity),]

#print data
order


# write the tidy or order data set to a file
write.csv(tidy, "tidy.csv", row.names=FALSE)
write.csv(order, "order.csv", row.names=FALSE)


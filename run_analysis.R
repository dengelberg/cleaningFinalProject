#dengelberg
#1/4/2017
#uploading necessary libraries

library(dplyr)
library(plyr)

#read data tables

activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)
features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
Y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt", header = FALSE)
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
Y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt", header = FALSE)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)

#binding test and train
#using features to name columns

observations <- rbind(X_test, X_train)
labels <- rbind(Y_test, Y_train)
subjects <- rbind(subject_test, subject_train)
names(observations) <- features$V2


#Extracting mean and standard deviation

meanStd <- grep("mean\\(\\)$|std\\(\\)$", names(observations))
msData <- observations[,meanStd]

#labels activities
#labels Activity and Suject variables
#binds labels to subject and data

labels$V1 <- factor(labels$V1, levels = activityLabels$V1, labels = activityLabels$V2)
labels <- rename(labels, c("V1"="Activities"))
subjects <- rename(subjects, c("V1"="Subjects"))
completeData <- cbind(labels, subjects, msData)

#further simplifying variable names
#creates and prints table summarizing the means of the variables broken down by acivity and person

names(testComplete) <- sub("\\(\\)", "", names(testComplete))
activitySubjectMeans <- group_by(testComplete, Activities, Subjects)
activitySubjectMeans <- summarise_each(activitySubjectMeans,funs(mean))
write.table(activitySubjectMeans, file = "./activitySubjectMeans.txt", row.names = FALSE)





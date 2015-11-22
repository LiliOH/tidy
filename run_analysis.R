# Data was retrieved and unpacked locally using the following commands:

#   url <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#   download.file(url, destfile="data.zip", method="curl")
#   unzip("data.zip")
#   setwd("UCI HAR Dataset")

# The script performs the following operations:

# 1. Merges the training and the test sets to create one data set.
# Although it is not specifically mentioned I chose to put togheter besides the training and test sets 
# (X_train.txt and X_test.txt) also the columns for the subjects and activity.

library(dplyr)
#test set
SubjectTest<-read.table("./test/subject_test.txt")
colnames(SubjectTest)<-"subject"

yTest<-read.table("./test/y_test.txt")
colnames(yTest)<-"activity"

xTest<-read.table("./test/X_test.txt")
colnames(xTest)<-(read.table("features.txt")[,2])

Test<-cbind(SubjectTest, yTest, xTest)

#training test
SubjectTrain<-read.table("./train/subject_train.txt")
colnames(SubjectTrain)<-"subject"

yTrain<-read.table("./train/y_train.txt")
colnames(yTrain)<-"activity"

xTrain<-read.table("./train/X_train.txt")
colnames(xTrain)<-(read.table("features.txt")[,2])

Train<-cbind(SubjectTrain, yTrain, xTrain)

dataset<-rbind(Train, Test)

#2.Extracts only the measurements on the mean and standard deviation for each measurement.
# only the measurements that have both mean() and std() are considered, therefore the meanFreq() and angles 
# between means are not included

library(dplyr)
dataset2<-dataset[,] #this operation is necessary to get different names for duplicate column names
mean.and.std<-select(dataset2, 1,2,contains("mean()"), contains("std"))

# 3. Uses descriptive activity names to name the activities in the data set
# the expresion "descriptive activity names" might be very interpretable. Since the activity in the data set
# appears as numeric values I chose to replace them with thei descriptive names from activity_labels.txt file.
# to be mention, a name has already been assigned to tha activity colum in the step 1, 

mean.and.std$activity[which(mean.and.std$activity==1)]<- "WALKING"
mean.and.std$activity[which(mean.and.std$activity==2)]<- "WALKING_UPSTAIRS"
mean.and.std$activity[which(mean.and.std$activity==3)]<- "WALKING_DOWNSTAIRS"
mean.and.std$activity[which(mean.and.std$activity==4)]<- "SITTING"
mean.and.std$activity[which(mean.and.std$activity==5)]<- "STANDING"
mean.and.std$activity[which(mean.and.std$activity==6)]<- "LAYING"

# 4. Appropriately labels the data set with descriptive variable names. 
# All the variables have names, starting from step 1. I think the naming convention is fully described in the 
# "features_info.txt"  file supplied with the test data. This file is also referred to by my codebook. So for this step
# I chose to tidy the labels up by applying some rules presented in the week 4 lecture - "Editing text variables" (removing "()" and "-").

new.names <-make.names(sub("\\(\\)", "", names(mean.and.std),))
colnames(mean.and.std)<- new.names

# 5. From the data set in step 4, creates a second, independent tidy data set with the average
#    of each variable for each activity and each subject.

library(tidyr)

new.dataset<-gather(mean.and.std, measurement, value, -c(subject, activity))
tidy.data <- summarize(group_by(new.dataset, subject, activity, measurement), mean=mean(value))

write.table(tidy.data, "tidy.txt", row.names=FALSE)
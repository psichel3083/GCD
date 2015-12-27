# Install packages and load libraries
install.packages("plyr")
library(plyr)
install.packages("dplyr")
library(dplyr)
library(data.table)


# Create a temp folder and download the .zip file
temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", 
              temp)
unzip(temp, list = TRUE)

# Read the needed data files
features <- read.table(unzip(temp, "UCI HAR Dataset/features.txt"))
names(features) <- c('ID', 'activity')

subject_test <- read.table(unzip(temp, "UCI HAR Dataset/test/subject_test.txt"))
X_test <- read.table(unzip(temp, "UCI HAR Dataset/test/X_test.txt"))
Y_test <- read.table(unzip(temp, "UCI HAR Dataset/test/y_test.txt"))
subject_train <- read.table(unzip(temp, "UCI HAR Dataset/train/subject_train.txt"))
X_train <- read.table(unzip(temp, "UCI HAR Dataset/train/X_train.txt"))
Y_train <- read.table(unzip(temp, "UCI HAR Dataset/train/y_train.txt"))

unlink(temp)

# Label columns
colnames(X_test) <- t(features[2])
colnames(X_train) <-t(features[2])


# 1. Merge X and Y sets of training and test data to create one new data set
X_test$activity <- Y_test[, 1]
X_test$ID <- subject_test[, 1]
X_train$activity <- Y_train[, 1]
X_train$ID <- subject_train[, 1]

TTmerge <- rbind(X_test, X_train)
#duplicated(colnames(TTmerge))
#TTmerge <- TTmerge[, !duplicated(colnames(TTmerge))]

# 2. Extract only the mean and standard deviation for each measurement
extract <- grep("-mean\\(\\)|-std\\(\\)", features$activity) 
Ext <- TTmerge[, extract]

# 3. Use descriptive activity names to name the activities in the data set





# 4. Appropriately label the data set with descriptive variable names 





# 5. From the data set in step 4, creates a second, independent tidy data set
#    with the average of each variable for each activity and each subject

Test.dt <- data.table(Ext)
#This takes the mean of every column broken down by participants and activities
#TidyTest <- Test.dt[, lapply(.SD, mean)]
write.table(Test.dt, file = "TidyTest.txt", row.names = FALSE)




# Create a temp folder
# Download the .zip file
temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", 
              temp)
unzip(temp, list = TRUE)

# Read the needed data files
features <- read.table(unzip(temp, "UCI HAR Dataset/features.txt"))
names(features) <- c('whoknows', 'whocares')

subject_test <- read.table(unzip(temp, "UCI HAR Dataset/test/subject_test.txt"))
X_test <- read.table(unzip(temp, "UCI HAR Dataset/test/X_test.txt"))
Y_test <- read.table(unzip(temp, "UCI HAR Dataset/test/y_test.txt"))
subject_train <- read.table(unzip(temp, "UCI HAR Dataset/train/subject_train.txt"))
X_train <- read.table(unzip(temp, "UCI HAR Dataset/train/X_train.txt"))
Y_train <- read.table(unzip(temp, "UCI HAR Dataset/train/y_train.txt"))

unlink(temp)


# Install packages and load libraries
install.packages("plyr")
library(plyr)
install.packages("dplyr")
library(dplyr)
library(data.table)


# 1. Merge the training and test sets to create one data set

subject_merge <- rbind(subject_test, subject_train)
X_merge <- rbind(X_test, X_train)
Y_merge <- rbind(Y_test, Y_train)

# 2. Extract only the mean and standard deviation for each measurement 




# 3. Use descriptive activity names to name the activities in the data set





# 4. Appropriately label the data set with descriptive variable names 





# 5. From the data set in step 4, creates a second, independent tidy data set
#    with the average of each variable for each activity and each subject





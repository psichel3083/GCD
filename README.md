# GCD
Getting and Cleaning Data - course project


The assignment is to create an R script called run_analysis.R that does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average
   of each variable for each activity and each subject.
==============================================================================================

Using R-Studio, preparation for working with the data includes:  √ done
   a. Installing libraries and packages
   b. Creating a temporary folder and downloading the .zip file of data
     (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
   c. These .txt files are then read as tables:
         UCI HAR Dataset/features.txt
         UCI HAR Dataset/test/subject_test.txt
         UCI HAR Dataset/test/X_test.txt
         UCI HAR Dataset/test/y_test.txt
         UCI HAR Dataset/train/subject_train.txt
         UCI HAR Dataset/train/X_train.txt
         UCI HAR Dataset/train/y_train.txt
         
The X and Y, test and train data are merged. √ done

Using 'grep' only the mean and standard deviation columns are retained.  √ done

These descriptive activity names are to be applied (incomplete):
   WALKING
   WALKING_UPSTAIRS
   WALKING_DOWNSTAIRS
   SITTING
   STANDING
   LAYING

The data set is to be labeled with descriptive variable names. (incomplete)

Finally, an independent tidy data set with the average of each variable for each activity and each subject
is generated as a .txt file.  (I generated a final .txt file, but it is not completely tidy)
         

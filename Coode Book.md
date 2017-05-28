#Code Book
# Generated at 2017-07-10 referring to code run_analysis.R

This code book will describe the variables and data used in this project. Too the transformations and results.
	
There are 30 volunteers evaluated in 6 different activities while using a smartphone.
	
	
create data dir c:/Coursera

Downloading zip file: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Extracting zip file to c:/Coursera  

The following files were used from the UCI HAR Dataset folder
	
features.txt: Names of the 561 features.
activity_labels.txt: Names and IDs for each of the 6 activities.

In c:/Coursera/UCI HAR Dataset/train the following files were used
* X_train.txt: 7352 observations of the 561 features.
* y_train.txt: A vector of 7352 integers, referents the ID of the activity related to each of the observations in y_train.txt.
* subject_train.txt: A vector of 7352 integers, referents the ID of the volunteer related to each of the observations in subject_train.txt.
	
In c:/Coursera/UCI HAR Dataset/test the following files were used
* X_test.txt: 2947 observations of the 561 features.
* y_test.txt: A vector of 2947 integers, referents the ID of the activity related to each of the observations in Y_test.txt.
* subject_test.txt: A vector of 2947 integers, referents the ID of the volunteer related to each of the observations in subject_test.txt.
	
Only variables referents measurements on the mean and standard deviation (files X_train.tx and X_test.txt)
Then there was a merge of training and test files
The activity column was converted from a integer to a factor, using labels describing the activities (activity_labels.txt).
A tidy data set was created containing the mean of each feature for each subject and each activity
Form generated output files (tidy.csv and order.csv).  Both  with data tidy.

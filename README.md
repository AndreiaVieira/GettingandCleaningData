# GettingandCleaningData

The activity for Getting and Cleaning Data was to read in the "Human Activity Recognition Using Smartphones" data set.
Here are the steps that must be performed before running the R script:
Steps
1.	Download the zip file from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2.	Unzip the file in C:/Coursera
3.	setwd("C:/Coursera/UCI HAR Dataset")
4.	Install library (reshape2) - package will be used in STEP 5
5.	Filies used The directory UCI HAR/train -
o	X_train.txt
o	y_train.txt
o	subject_train.txt
6.	Filies used The directory UCI HAR/test -
o	X_test.txt
o	y_test.txt
o	subject_test.txt
7.	Filies used The directory UCI HAR/test
o	features.txt
o	activity_labels
8.	The output of the R script is a tidy or order data set (tidy.csv or order.csv). Both files tidy.
Run the R script (run_analysis.R). Note that it requires the reshape2 package.
More information in CodeBook.md

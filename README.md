## GettingandCleaningData

The activity for Getting and Cleaning Data was to read in the "Human Activity Recognition Using Smartphones" data set.
Here are the steps that must be performed before running the R script:

* Steps
1.	Download the zip file from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2.	Unzip the file in C:/Coursera
3.	setwd("C:/Coursera/UCI HAR Dataset")
4.	Install library reshape2 - package will be used in STEP 5
5.	Read filies in the directory UCI HAR Dataset/train 
o	X_train.txt
o	y_train.txt
o	subject_train.txt
6.	Read filies in the directory UCI HAR Dataset/test 
o	X_test.txt
o	y_test.txt
o	subject_test.txt
7.	Read Filies in directory UCI HAR Dataset/
o	features.txt
o	activity_labels
8. Merge train and test dataset
9. Associate the name of variables (activity_labels.txt)
10. Organize the data and calculate the mean
11.	The output of the R script is a tidy data set (tidy.csv or order.csv). 
12. Save the R script (run_analysis.R) and run. 
13. Create CodeBook.md.

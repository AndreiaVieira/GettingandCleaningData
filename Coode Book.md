#Code Book
	
	This code book will describe the data used in this project and yhe results.
	
	There are 30 volunteers evaluated in 6 different activities while using a smartphone.
	
	Files used
	
	•	features.txt: Names of the 561 features.
	•	activity_labels.txt: Names and IDs for each of the 6 activities.
	
	•	X_train.txt: 7352 observations of the 561 features, for 21 of the 30 volunteers.
	•	y_train.txt: A vector of 7352 integers, denoting the ID of the activity related to each of the observations in X_train.txt.
	•	subject_train.txt: A vector of 7352 integers, denoting the ID of the volunteer related to each of the observations in X_train.txt.
	
	•	X_test.txt: 2947 observations of the 561 features, for 9 of the 30 volunteers.
	•	y_test.txt: A vector of 2947 integers, denoting the ID of the activity related to each of the observations in X_test.txt.
	•	subject_test.txt: A vector of 2947 integers, denoting the ID of the volunteer related to each of the observations in X_test.txt.
	
	
	Only variables referents measurements on the mean and standard deviation.
	There was a collection (merge) of training and test files
	The activity column was converted from a integer to a factor, using labels describing the activities.
	A tidy data set was created containing the mean of each feature for each subject and each activity.

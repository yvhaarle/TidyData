# TidyData
Getting and Cleaning Data course project

# Contents of this repo
This repo contains a this readme file (README.md), a R script (run_analysis.R) and a code book (CodeBook.md) describing all the variables that can be found in the output of run_analysis.R. 

# What this repo is intended to do
The R-script run_analysis.R downloads and unzips cell phone data on human activity. More info on the origins of the data set can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Afterwards a tidy data set is created as follows, the script:
* merges the training and the test sets to create one data set.
* extracts only the measurements on the mean and standard deviation for each measurement. 
* uses descriptive activity names to name the activities in the data set
* appropriately labels the data set with descriptive variable names. 
* creates a second, independent tidy data set with the average of each variable for each activity and each subject.
* outputs the new tidy data set
* writes the new data frame to an ASCII file called tidydata.txt  

 
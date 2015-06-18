## Script to read in the smartphone data and make a tidy data set out of it 
library("dplyr")


run_analysis <- function() {
  # download and read in the zip file
  url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  temp <- tempfile()
  download.file(url,temp,method="curl")
  unzip(temp, exdir = "./")
  unlink(temp)
  
  # Create data table will have columns:
  # Subject Activity [mean and std features]
  
  # 1/ Create the subject vector from the test and train set and merge them 
  subject_test <- as.numeric(readLines("./UCI HAR Dataset/test/subject_test.txt"))
  subject_train <- as.numeric(readLines("./UCI HAR Dataset/train/subject_train.txt"))
  subject <- c(subject_test,subject_train)
  
  
  # 2/ do the same for Activity - but use the descriptive name instead of the number
  # 2a read in the activity legend
  activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt",stringsAsFactors = FALSE)
  
  # 2b read in test and training activity data and replace number with the activity string
  activity_test <- as.numeric(readLines("./UCI HAR Dataset/test/y_test.txt"))
  activity_train <- as.numeric(readLines("./UCI HAR Dataset/train/y_train.txt"))
  activity_num <- c(activity_test,activity_train)
  activity <- NULL
  for (i in activity_num) {
    activity <- c(activity,activity_labels[[i,2]]) 
  }
  
  
  #3 select, label and read in the features
  #3a read in the features list
  features_labels <- read.table("./UCI HAR Dataset/features.txt",stringsAsFactors = FALSE)
  #3b select only mean and std measurements
  feature_mean_idx <- grep("mean",features_labels$V2) 
  feature_std_idx <- grep("std",features_labels$V2) 
  feature_select_idx <- sort(c(feature_mean_idx,feature_std_idx))
  feature_select_names <- features_labels$V2[feature_select_idx]
  #3c  read in test and mtrain data 
  features_data_test <- read.table("./UCI HAR Dataset/test/X_test.txt",col.names=features_labels$V2,check.names = FALSE)
  features_data_train <- read.table("./UCI HAR Dataset/train/X_train.txt",col.names=features_labels$V2,check.names = FALSE)
  features_data <- rbind(features_data_test, features_data_train)
  features_data_select <- features_data[feature_select_idx]
  
  #4 Merge it all together into one data frame with nice column names
  part1 <- data.frame(subject,activity)
  final_frame <- cbind(part1,features_data_select)
 
  
  # 5 create the new data frame with dplyr 
  # add activity_number to the data frame
  tempframe <- mutate(final_frame,activityNUM = activity_num)
  # define variable/column (subject-1)*6+activity#
  tempframe <- mutate(tempframe,activitysubjgrp = (subject-1)*6+activityNUM)
  
  # summarize to mean for all variables in that group for each subject and activity. 
  outputframe <- tempframe %>% group_by(activitysubjgrp) %>% summarise_each(funs(mean))
  
  # Put in the correct activity name (summarizing messed the string up)
  newactivity = NULL
  for (i in outputframe$activityNUM) {
    newactivity <- c(newactivity,activity_labels[[i,2]]) 
  }
  outputframe <- mutate(outputframe,activity = newactivity)
  outputframe <- select(outputframe,-c(activitysubjgrp,activityNUM))
  
  # writes the data table to a file and output the requested data table
  write.table(outputframe,"tidydata.txt",row.name=FALSE)
  outputframe
  
       
}
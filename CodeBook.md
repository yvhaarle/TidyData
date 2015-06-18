# Codebook

This file contains a table with all the variables, their units and a description that are listed in the output of run_analysis.R

Important notes:
* All variables are unitless. The variables starting with "t" or "f" have been normalised into a range between -1 and 1.    
* All variables (except "subject" and "activity")  are averages taken for the "activity" and the "subject" listed in the same row (see also README.md)  
* See also features_info.txt in the unzipped data set after running run_analysis.R script

Variable name | description
--------------|------------
subject | Label (number) of the subject that performed the activity [1-30]    
activity | String describing the activity performed (self explanatory)
tBodyAcc-mean()-X | Mean of body accelerometer signals in the X direction: 50 Hz time domain accelerometer signals that were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. This signal was split into body (used here) and gravity acceleration signals using another low pass Butterworth filter.  
tBodyAcc-mean()-Y | Mean of body accelerometer signals in the Y direction: 50 Hz time domain accelerometer signals that were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. This signal was split into body (used here) and gravity acceleration signals using another low pass Butterworth filter.
tBodyAcc-mean()-Z | Mean of body accelerometer signals in the Z direction: 50 Hz time domain accelerometer signals that were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. This signal was split into body (used here) and gravity acceleration signals using another low pass Butterworth filter.
tBodyAcc-std()-X | Standard deviation of body accelerometer signals in the X direction: 50 Hz time domain accelerometer signals that were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. This signal was split into body (used here) and gravity acceleration signals using another low pass Butterworth filter.
tBodyAcc-std()-Y | Standard deviation of body accelerometer signals in the Y direction: 50 Hz time domain accelerometer signals that were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. This signal was split into body (used here) and gravity acceleration signals using another low pass Butterworth filter.
tBodyAcc-std()-Z | Standard deviation of body accelerometer signals in the Z direction: 50 Hz time domain accelerometer signals that were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. This signal was split into body (used here) and gravity acceleration signals using another low pass Butterworth filter.  
tGravityAcc-mean()-X | The gravity acceleration split of acceleration signals descibed in tBodyAcc-mean()-X. 
tGravityAcc-mean()-Y | The gravity acceleration split of acceleration signals descibed in tBodyAcc-mean()-Y. 
tGravityAcc-mean()-Z | The gravity acceleration split of acceleration signals descibed in tBodyAcc-mean()-Z.
tGravityAcc-std()-X | The gravity acceleration split of acceleration signals descibed in tBodyAcc-std()-X.
tGravityAcc-std()-Y | The gravity acceleration split of acceleration signals descibed in tBodyAcc-std()-Y.
tGravityAcc-std()-Z | The gravity acceleration split of acceleration signals descibed in tBodyAcc-std()-Z.
tBodyAccJerk-mean()-X | tBodyAcc-mean()-X derived in time
tBodyAccJerk-mean()-Y | tBodyAcc-mean()-Y derived in time
tBodyAccJerk-mean()-Z | tBodyAcc-mean()-Z derived in time
tBodyAccJerk-std()-X | tBodyAcc-std()-X derived in time
tBodyAccJerk-std()-Y | tBodyAcc-std()-Y derived in time
tBodyAccJerk-std()-Z | tBodyAcc-std()-Z derived in time
tBodyGyro-mean()-X | Mean of body gyroscope signals in the X direction: 50 Hz time domain gyroscope signals that were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
tBodyGyro-mean()-Y |Mean of body gyroscope signals in the Y direction: 50 Hz time domain gyroscope signals that were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
tBodyGyro-mean()-Z |Mean of body gyroscope signals in the Z direction: 50 Hz time domain gyroscope signals that were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
tBodyGyro-std()-X |Standard deviation of body gyroscope signals in the X direction: 50 Hz time domain gyroscope signals that were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
tBodyGyro-std()-Y |Standard deviation of body gyroscope signals in the Y direction: 50 Hz time domain gyroscope signals that were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
tBodyGyro-std()-Z |Standard deviation of body gyroscope signals in the Z direction: 50 Hz time domain gyroscope signals that were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
tBodyGyroJerk-mean()-X | tBodyGyro-mean()-X derived in time
tBodyGyroJerk-mean()-Y | tBodyGyro-mean()-Y derived in time
tBodyGyroJerk-mean()-Z | tBodyGyro-mean()-Z derived in time
tBodyGyroJerk-std()-X | tBodyGyro-std()-X derived in time
tBodyGyroJerk-std()-Y | tBodyGyro-std()-Y derived in time
tBodyGyroJerk-std()-Z | tBodyGyro-std()-Z derived in time
tBodyAccMag-mean() | Mean of magnitude of vector (tBodyAcc-mean()-X, tBodyAcc-mean()-Y, tBodyAcc-mean()-Z) 
tBodyAccMag-std() | Standard deviation of magnitude of vector (tBodyAcc-std()-X, tBodyAcc-std()-Y, tBodyAcc-std()-Z)
tGravityAccMag-mean() | Mean of magnitude of vector (tGravityAcc-mean()-X, tGravityAcc-mean()-Y, tGravityAcc-mean()-Z) 
tGravityAccMag-std() | Standard deviation of magnitude of vector (tGravityAcc-std()-X, tGravityAcc-std()-Y, tGravityAcc-std()-Z) 
tBodyAccJerkMag-mean() |Mean of magnitude of vector (tBodyAccJerk-mean()-X, tBodyAccJerk-mean()-Y, tBodyAccJerk-mean()-Z)
tBodyAccJerkMag-std() |Standard deviation of magnitude of vector (tBodyAccJerk-std()-X, tBodyAccJerk-std()-Y, tBodyAccJerk-std()-Z)
tBodyGyroMag-mean() |Mean of magnitude of vector (tBodyGyro-mean()-X, tBodyGyro-mean()-Y, tBodyGyro-mean()-Z)
tBodyGyroMag-std() |Standard deviation of magnitude of vector (tBodyGyro-std()-X, tBodyGyro-std()-Y, tBodyGyro-std()-Z)
tBodyGyroJerkMag-mean() |Mean of magnitude of vector (tBodyGyroJerk-mean()-X, tBodyGyroJerk-mean()-Y, tBodyGyroJerk-mean()-Z)
tBodyGyroJerkMag-std() |Standard deviation of magnitude of vector (tBodyGyroJerk-std()-X, tBodyGyroJerk-std()-Y, tBodyGyroJerk-std()-Z)
fBodyAcc-mean()-X |Fast Fourier Transform of tBodyAcc-mean()-X 
fBodyAcc-mean()-Y |Fast Fourier Transform of tBodyAcc-mean()-Y 
fBodyAcc-mean()-Z |Fast Fourier Transform of tBodyAcc-mean()-Z 
fBodyAcc-std()-X |Fast Fourier Transform of tBodyAcc-std()-X 
fBodyAcc-std()-Y |Fast Fourier Transform of tBodyAcc-std()-Y 
fBodyAcc-std()-Z |Fast Fourier Transform of tBodyAcc-std()-Z 
fBodyAcc-meanFreq()-X |Fast Fourier Transform of weighted average of the frequency components of tBodyAcc-mean-X
fBodyAcc-meanFreq()-Y |Fast Fourier Transform of weighted average of the frequency components of tBodyAcc-mean()-Y
fBodyAcc-meanFreq()-Z |Fast Fourier Transform of weighted average of the frequency components of tBodyAcc-mean()-Z 
fBodyAccJerk-mean()-X |Fast Fourier Transform of tBodyAccJerk-mean()-X 
fBodyAccJerk-mean()-Y |Fast Fourier Transform of tBodyAccJerk-mean()-Y 
fBodyAccJerk-mean()-Z |Fast Fourier Transform of tBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X |Fast Fourier Transform of tBodyAccJerk-std()-X
fBodyAccJerk-std()-Y |Fast Fourier Transform of tBodyAccJerk-std()-Y 
fBodyAccJerk-std()-Z |Fast Fourier Transform of tBodyAccJerk-std()-Z
fBodyAccJerk-meanFreq()-X |Fast Fourier Transform of weighted average of the frequency components of tBodyAccJerk-mean()-X
fBodyAccJerk-meanFreq()-Y |Fast Fourier Transform of weighted average of the frequency components of tBodyAccJerk-mean()-Y 
fBodyAccJerk-meanFreq()-Z |Fast Fourier Transform of weighted average of the frequency components of  tBodyAccJerk-mean()-Z
fBodyGyro-mean()-X |Fast Fourier Transform of tBodyGyro-mean()-X
fBodyGyro-mean()-Y |Fast Fourier Transform of tBodyGyro-mean()-Y 
fBodyGyro-mean()-Z |Fast Fourier Transform of tBodyGyro-mean()-Z 
fBodyGyro-std()-X |Fast Fourier Transform of tBodyGyro-std()-X 
fBodyGyro-std()-Y |Fast Fourier Transform of tBodyGyro-std()-Y 
fBodyGyro-std()-Z |Fast Fourier Transform of tBodyGyro-std()-Z
fBodyGyro-meanFreq()-X |Fast Fourier Transform of weighted average of the frequency components of tBodyGyro-mean()-X
fBodyGyro-meanFreq()-Y |Fast Fourier Transform of weighted average of the frequency components of tBodyGyro-mean()-Y 
fBodyGyro-meanFreq()-Z |Fast Fourier Transform of weighted average of the frequency components of tBodyGyro-mean()-Z 
fBodyAccMag-mean() |Fast Fourier Transform of tBodyAccMag-mean()  
fBodyAccMag-std() |Fast Fourier Transform of tBodyAccMag-std() 
fBodyAccMag-meanFreq() |Fast Fourier Transform of weighted average of the frequency components of tBodyAccMag-mean() 
fBodyBodyAccJerkMag-mean() |Fast Fourier Transform of tBodyBodyAccJerkMag-mean() 
fBodyBodyAccJerkMag-std() |Fast Fourier Transform of tBodyBodyAccJerkMag-std()  
fBodyBodyAccJerkMag-meanFreq() |Fast Fourier Transform of weighted average of the frequency components of tBodyBodyAccJerkMag-mean()
fBodyBodyGyroMag-mean() |Fast Fourier Transform of tBodyBodyGyroMag-mean()  
fBodyBodyGyroMag-std() |Fast Fourier Transform of tBodyBodyGyroMag-std()   
fBodyBodyGyroMag-meanFreq() |Fast Fourier Transform of weighted average of the frequency components of tBodyBodyGyroMag-mean()  
fBodyBodyGyroJerkMag-mean() |Fast Fourier Transform of tBodyBodyGyroJerkMag-mean() 
fBodyBodyGyroJerkMag-std() |Fast Fourier Transform of tBodyBodyGyroJerkMag-std() 
fBodyBodyGyroJerkMag-meanFreq() |Fast Fourier Transform of weighted average of the frequency components of tBodyBodyGyroJerkMag-mean()



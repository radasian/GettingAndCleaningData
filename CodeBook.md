# Code book for Getting and Cleaning Data - Programming assignment #

## Author: Radasian  

Date: Sunday, January 18, 2015  

##

The original data, plus a description of its composition, may be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones   

Notes:

1) All variables are the calculated mean, of measurements or derived values, grouped by Subject and Activity, of the values in the original data set denoted mean or standard deviation.

2) All variables (those not marked as Dimension below) are normalized to lie between -1 and 1, and thus have no units of measure.



**Subject** [Integer] - Dimension 
  Code for person whose movement was measured as part of the study.

**Activity** [String] - 
  Type of activity being performed when measurements were taken  
     WALKING  
     WALKING_UPSTAIRS  
     WALKING_DOWNSTAIRS  
     SITTING  
     STANDING  
     LAYING  

**MeanOfTimeBodyAccelMeanX** [real]  
  The mean of the estimated mean of time-domain body acceleration measurements in the X axis 

**MeanOfTimeBodyAccelMeanY** [real]   
  The mean of the estimated mean of time-domain body acceleration measurements in the Y axis 

**MeanOfTimeBodyAccelMeanZ** [real]  
  The mean of the estimated mean of time-domain body acceleration measurements in the Z axis 

**MeanOfTimeBodyAccelStDX** [real]  
  The mean of the estimated standard deviation of time-domain body acceleration measurements in the X axis 

**MeanOfTimeBodyAccelStDY** [real]   
  The mean of the estimated standard deviation of time-domain body acceleration measurements in the Y axis 

**MeanOfTimeBodyAccelStDZ** [real]   
  The mean of the estimated standard deviation of time-domain body acceleration measurements in the Z axis 

**MeanOfTimeGravityAccelMeanX** [real]   
  The mean of the estimated mean of time-domain gravity acceleration measurements in the X axis 

**MeanOfTimeGravityAccelMeanY** [real]   
  The mean of the estimated mean of time-domain gravity acceleration measurements in the Y axis 

**MeanOfTimeGravityAccelMeanZ** [real]   
  The mean of the estimated mean of time-domain gravity acceleration measurements in the Z axis 

**MeanOfTimeGravityAccelStDX** [real]   
  The mean of the estimated standard deviation of time-domain gravity acceleration measurements in the X axis 

**MeanOfTimeGravityAccelStDY** [real]   
  The mean of the estimated standard deviation of time-domain gravity acceleration measurements in the Y axis 

**MeanOfTimeGravityAccelStDZ** [real]   
  The mean of the estimated standard deviation of time-domain gravity acceleration measurements in the Z axis 

**MeanOfTimeBodyAccelJerkMeanX** [real]   
  The mean of the estimated mean of time-domain derived body linear acceleration Jerk signal in the X axis 
  
**MeanOfTimeBodyAccelJerkMeanY** [real]   
  The mean of the estimated mean of time-domain derived body linear acceleration Jerk signal in the Y axis 

**MeanOfTimeBodyAccelJerkMeanZ** [real]   
  The mean of the estimated mean of time-domain derived body linear acceleration Jerk signal in the Z axis 

**MeanOfTimeBodyAccelJerkStDX** [real]   
  The mean of the estimated standard deviation of time-domain derived body linear acceleration Jerk signal in the X axis 

**MeanOfTimeBodyAccelJerkStDY** [real]   
  The mean of the estimated standard deviation of time-domain derived body linear acceleration Jerk signal in the Y axis 

**MeanOfTimeBodyAccelJerkStDZ** [real]   
  The mean of the estimated standard deviation of time-domain derived body linear acceleration Jerk signal in the Z axis 

**MeanOfTimeBodyGyroMeanX** [real]   
  The mean of the estimated mean of time-domain derived body angular velocity in the X axis 

**MeanOfTimeBodyGyroMeanY** [real]   
  The mean of the estimated mean of time-domain derived body angular velocity in the Y axis 

**MeanOfTimeBodyGyroMeanZ** [real]   
  The mean of the estimated mean of time-domain derived body angular velocity in the Z axis 

**MeanOfTimeBodyGyroStDX** [real]   
  The mean of the estimated standard deviation of time-domain derived body angular velocity in the X axis 

**MeanOfTimeBodyGyroStDY** [real]   
  The mean of the estimated standard deviation of time-domain derived body angular velocity in the Y axis 

**MeanOfTimeBodyGyroStDZ** [real]   
  The mean of the estimated standard deviation of time-domain derived body angular velocity in the Z axis 

**MeanOfTimeBodyGyroJerkMeanX** [real]   
  The mean of the estimated mean of time-domain derived body angular velocity Jerk signal in the X axis 

**MeanOfTimeBodyGyroJerkMeanY** [real]   
  The mean of the estimated mean of time-domain derived body angular velocity Jerk signal in the Y axis 

**MeanOfTimeBodyGyroJerkMeanZ** [real]   
  The mean of the estimated mean of time-domain derived body angular velocity Jerk signal in the X axis 

**MeanOfTimeBodyGyroJerkStDX** [real]   
  The mean of the estimated standard deviation of time-domain derived body angular velocity Jerk signal in the X axis 

**MeanOfTimeBodyGyroJerkStDY** [real]   
  The mean of the estimated standard deviation of time-domain derived body angular velocity Jerk signal in the X axis 
 
**MeanOfTimeBodyGyroJerkStDZ** [real]   
  The mean of the estimated standard deviation of time-domain derived body angular velocity Jerk signal in the X axis 

**MeanOfTimeBodyAccelMagnitudeMean** [real]   
  The mean of the estimated mean of time-domain body acceleration magnitude 

**MeanOfTimeBodyAccelMagnitudeStD** [real]   
  The mean of the estimated standard deviation of time-domain body acceleration magnitude

**MeanOfTimeGravityAccelMagnitudeMean** [real]   
  The mean of the estimated mean of time-domain gravity acceleration magnitude 

**MeanOfTimeGravityAccelMagnitudeStD** [real]   
  The mean of the estimated standard deviation of time-domain gravity acceleration magnitude 

**MeanOfTimeBodyAccelJerkMagnitudeMean** [real]   
  The mean of the estimated mean of time-domain body acceleration Jerk signal magnitude 

**MeanOfTimeBodyAccelJerkMagnitudeStD** [real]   
  The mean of the estimated standard deviation of time-domain body acceleration Jerk signal magnitude 
  
**MeanOfTimeBodyGyroMagnitudeMean** [real]   
  The mean of the estimated mean of time-domain angular velocity magnitude
  
**MeanOfTimeBodyGyroMagnitudeStD** [real]   
  The mean of the estimated standard deviation of time-domain angular velocity magnitude

**MeanOfTimeBodyGyroJerkMagnitudeMean** [real]   
  The mean of the estimated mean of time-domain angular velocity Jerk signal magnitude 

**MeanOfTimeBodyGyroJerkMagnitudeStD** [real]   
  The mean of the estimated standard deviation of time-domain angular velocity Jerk signal magnitude 

**MeanOfFreqBodyAccelMeanX** [real]   
  The mean of the estimated mean of frequency-domain body Acceleration in the X axis

**MeanOfFreqBodyAccelMeanY** [real]   
  The mean of the estimated mean of frequency-domain body Acceleration in the Y axis

**MeanOfFreqBodyAccelMeanZ** [real]   
  The mean of the estimated mean of frequency-domain body Acceleration in the Z axis

**MeanOfFreqBodyAccelStDX** [real]   
  The mean of the estimated standard deviation of frequency-domain body Acceleration in the X axis

**MeanOfFreqBodyAccelStDY** [real]   
  The mean of the estimated standard deviation of frequency-domain body Acceleration in the Y axis

**MeanOfFreqBodyAccelStDZ** [real]   
  The mean of the estimated standard deviation of frequency-domain body Acceleration in the Z axis

**MeanOfFreqBodyAccelMeanFreqX** [real]   
  The mean of the estimated mean frequency of frequency-domain body acceleration in the X axis

**MeanOfFreqBodyAccelMeanFreqY** [real]   
  The mean of the estimated mean frequency of frequency-domain body acceleration in the Y axis

**MeanOfFreqBodyAccelMeanFreqZ** [real]   
  The mean of the estimated mean frequency of frequency-domain body acceleration in the Z axis

**MeanOfFreqBodyAccelJerkMeanX** [real]   
  The mean of the estimated mean of frequency-domain body acceleration Jerk signal magnitude in the X axis

**MeanOfFreqBodyAccelJerkMeanY** [real]   
  The mean of the estimated mean of frequency-domain body acceleration Jerk signal magnitude in the Y axis

**MeanOfFreqBodyAccelJerkMeanZ** [real]   
  The mean of the estimated mean of frequency-domain body acceleration Jerk signal magnitude in the Z axis

**MeanOfFreqBodyAccelJerkStDX** [real]   
  The mean of the estimated standard deviation of frequency-domain body acceleration Jerk signal magnitude in the X axis

**MeanOfFreqBodyAccelJerkStDY** [real]   
  The mean of the estimated standard deviation of frequency-domain body acceleration Jerk signal magnitude in the Y axis

**MeanOfFreqBodyAccelJerkStDZ** [real]   
  The mean of the estimated standard deviation of frequency-domain body acceleration Jerk signal magnitude in the Z axis

**MeanOfFreqBodyAccelJerkMeanFreqX** [real]   
  The mean of the estimated mean frequency of frequency-domain body acceleration Jerk signal magnitude in the X axis

**MeanOfFreqBodyAccelJerkMeanFreqY** [real]   
  The mean of the estimated mean frequency of frequency-domain body acceleration Jerk signal magnitude in the Y axis

**MeanOfFreqBodyAccelJerkMeanFreqZ** [real]   
  The mean of the estimated mean frequency of frequency-domain body acceleration Jerk signal magnitude in the Z axis

**MeanOfFreqBodyGyroMeanX** [real]   
  The mean of the estimated mean of frequency-domain body angular velocity in the X axis

**MeanOfFreqBodyGyroMeanY** [real]   
  The mean of the estimated mean of frequency-domain body angular velocity in the Y axis

**MeanOfFreqBodyGyroMeanZ** [real]   
  The mean of the estimated mean of frequency-domain body angular velocity in the Z axis

**MeanOfFreqBodyGyroStDX** [real]   
  The mean of the estimated standard deviation of frequency-domain body angular velocity in the X axis

**MeanOfFreqBodyGyroStDY** [real]   
  The mean of the estimated standard deviation of frequency-domain body angular velocity in the Y axis

**MeanOfFreqBodyGyroStDZ** [real]   
  The mean of the estimated standard deviation of frequency-domain body angular velocity in the Z axis

**MeanOfFreqBodyGyroMeanFreqX** [real]   
  The mean of the estimated mean frequency of frequency-domain body angular velocity in the X axis

**MeanOfFreqBodyGyroMeanFreqY** [real]   
  The mean of the estimated mean frequency of frequency-domain body angular velocity in the Y axis

**MeanOfFreqBodyGyroMeanFreqZ** [real]   
  The mean of the estimated mean frequency of frequency-domain body angular velocity in the Z axis

**MeanOfFreqBodyAccelMagnitudeMean** [real]   
  The mean of the estimated mean of frequency-domain body acceleration magnitude 
  
**MeanOfFreqBodyAccelMagnitudeStD** [real]   
  The mean of the estimated standard deviation of frequency-domain body acceleration magnitude 

**MeanOfFreqBodyAccelMagnitudeMeanFreq** [real]   
  The mean of the estimated mean frequency of frequency-domain body acceleration magnitude 

**MeanOfFreqBodyAccelJerkMagnitudeMean** [real]   
  The mean of the estimated mean of frequency-domain body acceleration Jerk signal magnitude 

**MeanOfFreqBodyAccelJerkMagnitudeStD** [real]   
  The mean of the estimated standard deviation of frequency-domain body acceleration Jerk signal magnitude 

**MeanOfFreqBodyAccelJerkMagnitudeMeanFreq** [real]   
  The mean of the estimated mean frequency of frequency-domain body acceleration Jerk signal magnitude 

**MeanOfFreqBodyGyroMagnitudeMean** [real]   
  The mean of the estimated mean of frequency-domain body angular velocity magnitude 

**MeanOfFreqBodyGyroMagnitudeStD** [real]   
  The mean of the estimated standard deviation of frequency-domain body angular velocity magnitude 
 
**MeanOfFreqBodyGyroMagnitudeMeanFreq** [real]   
  The mean of the estimated mean frequency of frequency-domain body angular velocity magnitude 

**MeanOfFreqBodyGyroJerkMagnitudeMean** [real]   
  The mean of the estimated mean of frequency-domain body angular velocity Jerk signal magnitude 

**MeanOfFreqBodyGyroJerkMagnitudeStD** [real]   
  The mean of the estimated standard deviation of frequency-domain body angular velocity Jerk signal magnitude 
  
**MeanOfFreqBodyGyroJerkMagnitudeMeanFreq** [real]  
  The mean of the estimated mean frequency of frequency-domain body angular velocity Jerk signal magnitude 

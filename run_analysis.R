# load Plyr for group_by and summarise_each functions
library(plyr)
library(dplyr)

# The following line may be modified to point to your working directory
# and uncommented, should you wish to automate more easily.
#setwd("C:/coursera/Getting and Cleaning Data")

# If you wish to download the data file from the internet and
# unzip it, you can uncomment the next line (note you would need
# to modify the setwd in that file to point to your working directory)
#source("DownloadAndUnzip.R")

# Read the names of all the variables from the downloaded, unZipped file. These will be 
# added as column names to the data sets
df_colnames<- read.table('./UCI HAR Dataset/features.txt',header=FALSE,sep="",col.names=c("activity_id","activity"))
# Convert to a vector, as the names() function requires this
vec_colnames <- as.vector(df_colnames[,2])

# Read the names of all the activities from the downloaded, unZipped file. These will be 
# added as a column in the data sets
df_activitynames<- read.table('./UCI HAR Dataset/activity_labels.txt',header=FALSE,sep="",col.names=c("activity_id","activity"))

# Read the test and train data sets from the downloaded, unZipped files
testset <- read.table('./UCI HAR Dataset/test/X_test.txt',header=FALSE,sep="")
trainset <- read.table('./UCI HAR Dataset/train/X_train.txt',header=FALSE,sep="")
# Combine the two data sets into one
fullset <- rbind(testset,trainset)
# Free up some memory by removing interim objects
rm(testset)
rm(trainset)

# Read the test and train activities data sets from the downloaded, unZipped files
testactivities <- read.table('./UCI HAR Dataset/test/y_test.txt',header=FALSE,sep="")
trainactivities <- read.table('./UCI HAR Dataset/train/y_train.txt',header=FALSE,sep="")
# Combine the two data sets into one
fullactivities <- rbind(testactivities,trainactivities)
# Free up some memory by removing interim objects
rm(testactivities)
rm(trainactivities)

# Match the activity ID from the merged activities dataset with the activity id found
# in the activity_labels file to obtain the name of each activity, then create a single column
# data table which holds the activity name for each row in the merged data set. We will add this
# column to the data set subsequently
fullactivitynames <- as.data.frame(df_activitynames$activity[match(fullactivities$V1,df_activitynames$activity_id)])

# Read the subject for each test from the downloaded, unzipped data files
testsubject <- read.table('./UCI HAR Dataset/test/subject_test.txt',header=FALSE,sep="")
trainsubject <- read.table('./UCI HAR Dataset/train/subject_train.txt',header=FALSE,sep="")
# Combine the two data sets into one
fullsubject <- rbind(testsubject,trainsubject)
# Free up some memory by removing interim objects
rm(testsubject)
rm(trainsubject)

# Name each measurement column 
names(fullset)           <- vec_colnames
# Name the two non-measurement columns (dimension columns)
names(fullsubject)       <- 'Subject'
names(fullactivitynames) <- 'Activity'

# Combine the Subject, Activity and measurement data into one big dataframe
fullset <- cbind(fullactivitynames,fullsubject,fullset)

# Take a subset comprising the subject and activity columns plus 
# any column containing the word "mean" or "std"
trimset <- fullset[,grep('mean|std|Subject|Activity',names(fullset))]

# Free up some memory
rm(fullset)

# Rename the measurement columns so they are more intuitively named
names(trimset) <- sub('Mag','Magnitude',names(trimset))
names(trimset) <- sub('Acc','Accel',names(trimset))
names(trimset) <- sub('tB','TimeB',names(trimset))
names(trimset) <- sub('tG','TimeG',names(trimset))
names(trimset) <- sub('fB','FreqB',names(trimset))
names(trimset) <- sub('fG','FreqG',names(trimset))
names(trimset) <- sub('mean','Mean',names(trimset))
names(trimset) <- sub('std','StD',names(trimset))
names(trimset) <- sub('BodyBody','Body',names(trimset))
names(trimset) <- sub('()','',names(trimset),fixed=TRUE)
names(trimset) <- gsub('-','',names(trimset),fixed=TRUE)

# Group the measurements by Subject and Activity in preparation for the 
# subsequent summarization
trimgrouped <- group_by(trimset,Subject,Activity)

# Build a data set which holds the mean of all measurements grouped by
# Subject and Activity
meansummary <- summarise_each(trimgrouped,funs(mean))

# Create a function which will rename any string passed to it (which
# does not contain the words "Subject or Activity) so it has 
# MeanOf prepended to it
makeMean <- function(x) {
  if (grepl("Subject|Activity",x)) {
    y <- x
  } else {
    y <- paste0('MeanOf',x)
  }
  return (y)
}

# Rename all the measurement columns using the above function
names(meansummary) <- lapply(names(meansummary),makeMean)

# Write out the table to a file named meansummary.txt in the 
# working directory for uploading to the assignement page
write.table(meansummary,file="meansummary.txt", row.name=FALSE)

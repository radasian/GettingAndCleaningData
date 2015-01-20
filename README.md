# README file for Getting and Cleaning Data - Programming assignment #

## Author: Radasian
Date: Sunday, January 18, 2015
##  

## Summary
The code in file *run_analysis.R* is used to tidy a data set which in its original form is spread across a number of files, is split into test and train data subsets, has numeric identifiers for its dimensions (Subject and Activity) and cryptic names for the 
measurement variables.  

The code in file *DownloadAndUnzip.R* can be run prior to running run_analysis.R should you wish to obtain the data from the internet source and extract it to a folder.

*CodeBook.md* contains a brief description of the variables output by the script.

High-level steps used are:

1. Read in the names of the Activites (e.g. **Walking** or **Sitting**) and measurement variables (e.g. **tGravityAcc-max()-X** or **tBodyAccJerkMag-arCoeff()1**) from file.

2. Read in the **test** and **train** data sets from file, then merge into combined sets. This is done for the measurement, activities and subject data.

3. Add column names to the measurement, activities and subject data sets. The original names are added for the measurement data, to be improved in a subsequent step.

4. Merge the activity, subject and measurement data into a single data frame.

5. Take a subset of the data which comprises the relevant columns (activity, subject and measurements related to mean or standard deviation)

6. Improve the naming of the measurement columns

7. Group and summarize the data, taking the mean of all measurement values

8. Add "MeanOf" to the front of all calculated values

9. Output the final text file

Detail of the steps is given in the following sections.

---

## Load relevant libraries   

```
library(plyr)
library(dplyr)
```    

## Read the names of the Activities and measurement variables

First we read the names of all the variables from the downloaded, unZipped file *features.txt*. These will be subsequently added to the data sets as column names.  

Read the measurement variable names:
```
df_colnames<- read.table('./UCI HAR Dataset/features.txt',
                         header=FALSE,sep="",
                         col.names=c("activity_id","activity")
                        )
```  

Convert to a vector (needed by the *names( )* function subsequently):
```
vec_colnames <- as.vector(df_colnames[,2])
```  

Read the names of all the activities from the downloaded, unZipped file *activity_labels.txt*. These will be added subsequently as a column in the data sets:
```
df_activitynames<- read.table('./UCI HAR Dataset/activity_labels.txt',
                               header=FALSE,sep="",
                               col.names=c("activity_id","activity")
                            )
```  

---

## Read in and merge the test and train data sets

Read the test and train measurement data sets from the downloaded, unZipped files *X_test.txt* and *X_train.txt*:
```
testset <- read.table('./UCI HAR Dataset/test/X_test.txt',
                      header=FALSE,sep="")
trainset <- read.table('./UCI HAR Dataset/train/X_train.txt',
                        header=FALSE,sep="")
```  

Combine the two measurement data sets into one:
```
fullset <- rbind(testset,trainset)
```  

Free up some memory by removing interim objects:
```
rm(testset)
rm(trainset)
```  

Read the test and train activities data sets from the downloaded, unZipped files *y_test.txt* and *y_train.txt*:
```
testactivities <- read.table('./UCI HAR Dataset/test/y_test.txt',
                               header=FALSE,sep="")
trainactivities <- read.table('./UCI HAR Dataset/train/y_train.txt',
                               header=FALSE,sep="")
```  

Combine the two data sets into one:
```
fullactivities <- rbind(testactivities,trainactivities)
```  

Free up some memory by removing interim objects:
```
rm(testactivities)
rm(trainactivities)
```  

Read the subject for each test from the downloaded, unzipped data files *subject_test.txt* and *subject_train.txt*:
```
testsubject <- read.table('./UCI HAR Dataset/test/subject_test.txt',
                            header=FALSE,
                            sep=""
                          )
trainsubject <- read.table('./UCI HAR Dataset/train/subject_train.txt',
                            header=FALSE,
                            sep=""
                          )
```  

Combine the two data sets into one:
```
fullsubject <- rbind(testsubject,trainsubject)
```  

Free up some memory by removing interim objects:
```
rm(testsubject)
rm(trainsubject)
```  

---

## Prepare the naming and add it to the data set

Match the activity ID from the merged activities dataset with the activity id found
in the *activity_labels.txt* file to obtain the name of each activity, then create a single column data table which holds the activity name for each row in the merged data set. We will add this column to the data set subsequently:
```
fullactivitynames <- as.data.frame(
       df_activitynames$activity[match(fullactivities$V1,
       df_activitynames$activity_id)]
    )
```  

Add the (original) name to each measurement column: 
```
names(fullset)           <- vec_colnames
```  

Name the two non-measurement columns (dimension columns)
```
names(fullsubject)       <- 'Subject'
names(fullactivitynames) <- 'Activity'
```  

---

## Merge combined data sets

Combine the Subject, Activity and measurement data into one big dataframe
```
fullset <- cbind(fullactivitynames,fullsubject,fullset)
```  


---

## Create a subset with relevant columns only
Take a subset comprising the subject and activity columns plus 
any column containing the word "mean" or "std":
```
trimset <- fullset[,grep('mean|std|Subject|Activity',names(fullset))]
```  

Free up some memory
```
rm(fullset)
```  

---

## Improve the names of the measurement variables
Rename the measurement columns so they are more intuitively named:
```
names(trimset) <- sub('Mag','Magnitude',names(trimset))
names(trimset) <- sub('Acc','Accel',names(trimset))
names(trimset) <- sub('tB','TimeB',names(trimset))
names(trimset) <- sub('tG','TimeG',names(trimset))
names(trimset) <- sub('fB','FreqB',names(trimset))
names(trimset) <- sub('fG','FreqG',names(trimset))
names(trimset) <- sub('mean','Mean',names(trimset))
names(trimset) <- sub('std','StD',names(trimset))
names(trimset) <- sub('()','',names(trimset),fixed=TRUE)
names(trimset) <- gsub('-','',names(trimset),fixed=TRUE)
```   

Note the next line is to fix an error in the naming (BodyBody should be Body):   
```
names(trimset) <- sub('BodyBody','Body',names(trimset))```  
```   

---

## Group and summarize

Group the measurements by Subject and Activity in preparation for the subsequent summarization:
```
trimgrouped <- group_by(trimset,Subject,Activity)
```  

Build a data set which holds the mean of all measurements grouped by Subject and Activity:
```
meansummary <- summarise_each(trimgrouped,funs(mean))
```  

Create a function which will rename any string passed to it (which does not contain the words "Subject" or "Activity") so it has "MeanOf" prepended to it:
```
makeMean <- function(x) {
  if (grepl("Subject|Activity",x)) {
    y <- x
  } else {
    y <- paste0('MeanOf',x)
  }
  return (y)
} 
```  
  
Rename all the measurement columns using the above function, so they will begin with the term "MeanOf":
```
names(meansummary) <- lapply(names(meansummary),makeMean)
```  

---

## Create the final output

Write out the table to a file named meansummary.txt in the working directory for uploading to the assignement page:
```
write.table(meansummary,file="meansummary.txt", row.name=FALSE)
```  

The output file can be found in this repository, named meansummary.txt

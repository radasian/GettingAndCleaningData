# Downloads the source data files and unzips them into a folder in the working directory  

# Set the working directory
setwd("C:/coursera/Getting and Cleaning Data")

#Download the project's data file from the internet
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","fit.zip")

# It's a zip file, so extract it into the working directory
unzip("fit.zip",overwrite=TRUE)

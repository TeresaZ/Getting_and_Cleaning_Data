install.packages("plyr")		## Needed in order to use the mapvalues function
install.packages("dplyr")		## Needed in order to use the select function
library(plyr) 
library(dplyr) 

##  This code assumes that the directory "UCI HAR Dataset" is a subdirectory of your working directory.  
##  Change the first assignment statement only if you have renamed that directory. 
##  Change the second and third statements only if you have not preserved the directory structure 
##  of the original data sets as they were provided in the zip file.
##  Once you have changed these paths (if necessary) for your own directory structure, the remaining 
##  code will work as expected.
data_root_dir <- "UCI HAR Dataset/"
training_data_dir <- paste(data_root_dir, "train/", sep="")
testing_data_dir   <- paste(data_root_dir, "test/",   sep="")

##  Read in the training and testing data, and then combine them into a single data set
training_data <- read.table(paste(training_data_dir, "X_train.txt", sep=""))
testing_data   <- read.table(paste(testing_data_dir,   "X_test.txt",   sep=""))
data <- rbind(training_data, testing_data)
rm (training_data, testing_data)     ## no longer needed

## Add the names provided in the second column of the features data set as the column labels for
## the data
features <- read.table(paste(data_root_dir, "features.txt", sep=""))
names(data) <- features$V2
rm(features)     ## no longer needed

## Extract only those columns containing mean and standard deviation values for measurements.
## (These column names will contain either the substring "mean()" or the substring "std()".)
column_name_pattern <- "(mean|std)\\(\\)(-[X-Z])?$"
tidy_data_temp <- data[, grepl(column_name_pattern, names(data))]
rm(data)    ## no longer needed

## Add the activity column to the new "tidy" data frame, tidy_data_temp
training_activities <- read.table(paste(training_data_dir, "y_train.txt", sep=""))
testing_activities   <- read.table(paste(testing_data_dir,   "y_test.txt",   sep=""))
activities <- rbind(training_activities, testing_activities)
colnames(activities) <- "Activity"
tidy_data_temp <- cbind(activities, tidy_data_temp)
rm (training_activities, testing_activities, activities)   ## no longer needed

## Convert the activity numbers (1-6) in the data frame to a descriptive label
activity_labels <- read.table(paste(data_root_dir, "activity_labels.txt", sep=""))$V2    ## Note: activity_labels is a factor here
tidy_data_temp$Activity <- mapvalues(tidy_data_temp$Activity, from=c(1L, 2L, 3L, 4L, 5L, 6L), to=as.vector(activity_labels))

## Add the subject column to  the tidy_data_temp data frame
training_subjects <- read.table(paste(training_data_dir, "subject_train.txt", sep=""))
testing_subjects   <- read.table(paste(testing_data_dir,   "subject_test.txt",   sep=""))
subjects <- rbind(training_subjects, testing_subjects)
colnames(subjects) <- "Subject_ID"
tidy_data_temp <- cbind(subjects, tidy_data_temp)
rm (training_subjects, testing_subjects, subjects)    ## no longer needed

##  Create a second tidy data set, derived from tidy_data_temp, with the average of each variable for 
##  each activity and each subject. The resulting table will have only 180 rows. (Six for each of the 30 
##  subjects, since there are 6 different activities.)

## Partition the data by Subject_ID and Activity.  Note that partitions will be a list.
partitions <- split(select(tidy_data_temp, 3:ncol(tidy_data_temp)),   list(tidy_data_temp$Subject_ID, tidy_data_temp$Activity))

## Apply function mean to each column. Note that lapply returns a list.
means <- lapply(partitions, function(x) apply(x, 2, mean, na.rm=TRUE))

## Convert the list "means" to a dataframe.  sapply() converts it to a matrix then data.frame() converts the matrix 
## to a data frame.
tidy_data <- data.frame(t(sapply(means, c)))

## The Subject_ID and Activity columns have become combined row names.  Use strsplit() to split them and
## create a dataframe of those items.  
temp_df <- data.frame(t(sapply(strsplit(rownames(tidy_data), "[.]"),c)))
rownames(tidy_data) <- NULL

## Append the subject and activity columns to the new tidy data set, and return the column headings to their
## original values
tidy_data <- cbind(temp_df, tidy_data)
tidy_data <- dplyr::rename(tidy_data, Subject_ID= X1, Activity=X2)
rm(temp_df)     ## no longer needed

write.table(tidy_data, file="tidy_data.txt", row.names=FALSE)
rm(tidy_data)    ## no longer needed
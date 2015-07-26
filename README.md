#README.md

##Overview

The file tidy_data.txt in this repository can be read into the R unterpreter using the following code:

read.table("tidy_data.txt", header=TRUE, colClasses=c('factor', 'factor', rep('numeric', 66)))

codebook.md describes the specific details of variables, values, and units in the data set contained in this file.

The tidy_data.txt file was created by running the code in the file run_analysis.R in this repository on the data provided in Samsung's Human Activity Recognition Using Smartphones Data Set.
The original input data is was downloaded from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#.  
A copy of the original data is provided in this repository.
run_analysis.R assumes that this data set is in subdirectory of the working directory.  The first few lines of the script would need to be modified if that is not the case, or if the subdirectory structure has been altered.
The following data sets are used by run_analysis.R:

* UCI HAR Dataset/features.txt
* UCI HAR Dataset/train/subject_train.txt
* UCI HAR Dataset/train/X_train.txt
* UCI HAR Dataset/train/y_train.txt
* UCI HAR Dataset/test/subject_test.txt
* UCI HAR Dataset/test/X_test.txt
* UCI HAR Dataset/test/y_test.txt

The generated table found in tidy_data.txt is in wide format.
Each column represents a single variable, and each observation of the variable is in a different row.  Hence the data set is "tidy".
The final tidy data set has 180 rows and 68 columns.

codebook.md found in this repository describes the generated tidy data set in more detail.

## Description of run_analysis.R

run_analysis.R uses source data from the UCI Har Dataset directory, imports it into R, and generates tidy data set of derived measurements.
The run_analysis.R performs the following sequence of steps to transform the original data set into the tidy data set provided in tidy_data.txt:

* Read in the training and testing data, and then combine them into a single data set
* Add the names provided in the second column of the features data set as the column labels for the data
* Extract only those columns containing mean and standard deviation values for measurements. (These column names will contain either the substring "mean()" or the substring "std()".)
* Add the activity column to the new "tidy" data frame, tidy_data_temp
* Convert the activity numbers (1-6) in the data frame to a descriptive label
* Add the subject column to  the tidy_data_temp data frame
* Create a second tidy data set, derived from tidy_data_temp, with the average of each variable for each activity and each subject. The resulting table will have only 180 rows. (Six for each of the 30 subjects, since there are 6 different activities.)
* Write out the data set as a table to file tidy_data.txt


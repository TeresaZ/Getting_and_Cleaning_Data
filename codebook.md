#Codebook

##Overview

The file tidy_data.txt in this repository can be read into the R unterpreter using the following code:

read.table("tidy_data.txt", header=TRUE, colClasses=c('factor', 'factor', rep('numeric', 66)))


The table contained in tidy_data.txt file is derived from the data provided by the Human Activity Recognition Using Smartphones Data Set. The source data is available from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#. 
tidy_data.txt includes data derived from the combined test and training data sets. 
See README.md for the detailed steps used to create tidy_data.txt.
The tidy data set is derived from a subset of this combined original data that includes only measurements on The mean and standard deviation for each measure. The data set has 180 rows and 68 columns, with a unique combination of Subject_ID and Activity values in each row.

##Data dictionary

The variables in tidy_data.txt  are derived from a subset of the variables described in the features_info.txt file in the original data set. features_info.txt provides a more in-depth overview of the original values and how they were calculated.

-*Subject_ID*  An integer that identifies the volunteer data collection participant.
Values: integer from 1 to 30

-*Activity*  A factor that identifies the activity being performed when the data was collected.
Values: Walking, WalkingUpStairs, WalkingDownStairs, Sitting, Standing, Lying

The following variables  are each an average of the values collected for the test subject and activity specified in the data row. For each, the value is a numeric normalized and bounded within [-1, 1]

-*MeanBodyAcc-X*  The mean of the body acceleration on the X axis.

-*MeanBodyAcc-Y*  The mean of the body acceleration on the Y axis.

-*MeanBodyAcc-Z*  The mean of the body acceleration on the Z axis.

-*MeanGravityAcc-X*  The mean of the gravity acceleration on the X axis.

-*MeanGravityAcc-Y*  The mean of the gravity acceleration on the Y axis.

-*MeanGravityAcc-Z*  The mean of the gravity acceleration on the Z axis.

-*MeanBodyAccJerk-X*  The mean of the body acceleration on the X axis, derived in time to obtain Jerk signals.

-*MeanBodyAccJerk-Y*  The mean of the body acceleration on the Y axis, derived in time to obtain Jerk signals.

-*MeanBodyAccJerk-Z*  The mean of the body acceleration on the Z axis, derived in time to obtain Jerk signals.

-*MeanBodyAngVel-X*  The mean of the body angular velocity on the X axis.

-*MeanBodyAngVel-Y*  The mean of the body angular velocity on the Y axis.

-*MeanBodyAngVel-Z*  The mean of the body angular velocity on the Z axis.

-*MeanBodyAngVelJerk-X*  The mean of the body angular velocity on the X axis, derived in time to obtain Jerk signals.

-*MeanBodyAngVelJerk-Y*  The mean of the body angular velocity on the Y axis, derived in time to obtain Jerk signals.

-*MeanBodyAngVelJerk-Z*  The mean of the body angular velocity on the Z axis, derived in time to obtain Jerk signals.

-*MeanBodyAccMag*  The mean of the body acceleration magnitude, calculated using the Euclidean norm.

-*MeanGravityAccMag*  The mean of the gravity acceleration magnitude.

-*MeanBodyAccJerkMag*  The mean of the body acceleration magnitude derived in time to obtain Jerk signals.

-*MeanBodyAngVelMag*  The mean of the angular velocity magnitude.

-*MeanBodyAngVelJerkMag*  The mean of the angular velocity magnitude derived in time to obtain Jerk signals.

-*MeanFFTBodyAcc-X*  The mean of the body acceleration on the X axis, with a Fast Fourier Transform (FFT) applied.

-*MeanFFTBodyAcc-Y*  The mean of the body acceleration on the Y axis, with a Fast Fourier Transform (FFT) applied.

-*MeanFFTBodyAcc-Z*  The mean of the body acceleration on the Z axis, with a Fast Fourier Transform (FFT) applied.

-*MeanFFTBodyAccJerk-X*  The mean of the body acceleration on the X axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

-*MeanFFTBodyAccJerk-Y*  The mean of the body acceleration on the Y axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

-*MeanFFTBodyAccJerk-Z*  The mean of the body acceleration on the Z axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

-*MeanFFTBodyAngVel-X*  The mean of the body angular velocity on the X axis, with a Fast Fourier Transform (FFT) applied.

-*MeanFFTBodyAngVel-Y*  The mean of the body angular velocity on the Y axis, with a Fast Fourier Transform (FFT) applied.

-*MeanFFTBodyAngVel-Z*  The mean of the body angular velocity on the Z axis, with a Fast Fourier Transform (FFT) applied.

-*MeanFFTBodyAccMag*  The mean of the body acceleration magnitude, with a Fast Fourier Transform (FFT) applied.

-*MeanFFTBodyAccJerkMag*  The mean of the body acceleration magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

-*MeanFFTBodyAngVelMag*  The mean of the angular velocity magnitude, with a Fast Fourier Transform (FFT) applied.

-*MeanFFTBodyAngVelJerkMag*  The mean of the angular velocity magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

-*StdDevBodyAcc-X*  The standard deviation of the body acceleration on the X axis.

-*StdDevBodyAcc-Y*  The standard deviation of the body acceleration on the Y axis.

-*StdDevBodyAcc-Z*  The standard deviation of the body acceleration on the Z axis.

-*StdDevGravityAcc-X*  The standard deviation of the gravity acceleration on the X axis.

-*StdDevGravityAcc-Y*  The standard deviation of the gravity acceleration on the Y axis.

-*StdDevGravityAcc-Z*  The standard deviation of the gravity acceleration on the Z axis.

-*StdDevBodyAccJerk-X*  The standard deviation of the body acceleration on the X axis, derived in time to obtain Jerk signals.

-*StdDevBodyAccJerk-Y*  The standard deviation of the body acceleration on the Y axis, derived in time to obtain Jerk signals.

-*StdDevBodyAccJerk-Z*  The standard deviation of the body acceleration on the Z axis, derived in time to obtain Jerk signals.

-*StdDevBodyAngVel-X*  The standard deviation of the body angular velocity on the X axis.

-*StdDevBodyAngVel-Y*  The standard deviation of the body angular velocity on the Y axis.

-*StdDevBodyAngVel-Z*  The standard deviation of the body angular velocity on the Z axis.

-*StdDevBodyAngVelJerk-X*  The standard deviation of the body angular velocity on the X axis, derived in time to obtain Jerk signals.

-*StdDevBodyAngVelJerk-Y*  The standard deviation of the body angular velocity on the Y axis, derived in time to obtain Jerk signals.

-*StdDevBodyAngVelJerk-Z*  The standard deviation of the body angular velocity on the Z axis, derived in time to obtain Jerk signals.

-*StdDevBodyAccMag*  The standard deviation of the body acceleration magnitude, calculated using the Euclidean norm.

-*StdDevGravityAccMag*  The standard deviation of the gravity acceleration magnitude.

-*StdDevBodyAccJerkMag*  The standard deviation of the body acceleration magnitude derived in time to obtain Jerk signals.

-*StdDevBodyAngVelMag*  The standard deviation of the angular velocity magnitude.

-*StdDevBodyAngVelJerkMag*  The standard deviation of the angular velocity magnitude derived in time to obtain Jerk signals.

-*StdDevFFTBodyAcc-X*  The standard deviation of the body acceleration on the X axis, with a Fast Fourier Transform (FFT) applied.

-*StdDevFFTBodyAcc-Y*  The standard deviation of the body acceleration on the Y axis, with a Fast Fourier Transform (FFT) applied.

-*StdDevFFTBodyAcc-Z*  The standard deviation of the body acceleration on the Z axis, with a Fast Fourier Transform (FFT) applied.

-*StdDevFFTBodyAngVelJerk-X*  The standard deviation of the body angular velocity on the X axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

-*StdDevFFTBodyAngVelJerk-Y*  The standard deviation of the body angular velocity on the Y axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

-*StdDevFFTBodyAngVelJerk-Z*  The standard deviation of the body angular velocity on the Z axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

-*StdDevFFTBodyAngVel-X*  The standard deviation of the body angular velocity on the X axis, with a Fast Fourier Transform (FFT) applied.

-*StdDevFFTBodyAngVel-Y*  The standard deviation of the body angular velocity on the Y axis, with a Fast Fourier Transform (FFT) applied.

-*StdDevFFTBodyAngVel-Z*  The standard deviation of the body angular velocity on the Z axis, with a Fast Fourier Transform (FFT) applied.

-*StdDevFFTBodyAccMag*  The standard deviation of the body acceleration magnitude, with a Fast Fourier Transform (FFT) applied.

-*StdDevFFTBodyAccJerkMag*  The standard deviation of the body acceleration magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

-*StdDevFFTBodyAngVelMag*  The standard deviation of the angular velocity magnitude, with a Fast Fourier Transform (FFT) applied.

-*StdDevFFTBodyAngVelJerkMag*  The standard deviation of the angular velocity magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.


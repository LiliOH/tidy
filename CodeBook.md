## Code Book 

This code book describes the data, the variables, and all transformations applied to clean up the original data set.

### Input Data

The data was collected from the accelerometers from the Samsung Galaxy S smartphone and it can be downloaded from here:

http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A full description of the experiments is available here:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Output Data

The output data is a txt file (tidy.txt) containing a tidy data set of 4 columns (variables) and 11880 rows, for 30 human subjects x 6 activities x 66 measurements.

### Variables

    Variable 1
        Name: subject
        Values: [1 : 30]
        Description: human subject involved in experiment
        Raw data source: train/subject_train.txt and test/subject_test.txt files
        Transformation: none

    Variable 2
        Name: activity
        Values: LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS
        Description: specific activity performed by the human subjects when the measurements were made
        Raw data source: train/y_train.txt and test/y_test.txt files
        Transformation: replaced numeric values with descriptive activity names

    Variable 3
        Name: measurement
        Values: described below
        Description: the names of the measurements on the mean and standard deviation for each measurement 
        Raw data source: features.txt file 
        Transformation: extracted only the measurements on the mean or standard deviation; the variable names 
        were tidied up using several rules presented in the week 4 lecture - "Editing text variables" 
        (subjectively chosen).

    Variable 4
    	Name: mean
        Values: (-1.0 : 1.0)
        Description: the average value of each variable for each activity and each subject
        Raw data source: selected columns from train/X_train.txt and test/X_test.txt files 
        Transformation: Only the "mean" or "std" variables were selected and gathered into rows. Data was 
        grouped by each combination of subject, activity, and variable (measurement), and averages were 
        computed for each of these groups.

 ## Values in the measurement column

    tBodyAcc.mean.X
        Raw data variable: tBodyAcc-mean()-X
        Description: the mean value of the linear body motion component of acceleration in direction of axis X

    tBodyAcc.mean.Y
        Raw data variable: tBodyAcc-mean()-Y
        Description: the mean value of the linear body motion component of acceleration in direction of axis Y

    tBodyAcc.mean.Z
        Raw data variable: tBodyAcc-mean()-Z
        Description: the mean value of the linear body motion component of acceleration in direction of axis Z

    tGravityAcc.mean.X
        Raw data variable: tGravityAcc-mean()-X
        Description: the mean value of the gravity component of acceleration in direction of axis X

    tGravityAcc.mean.Y
        Raw data variable: tGravityAcc-mean()-Y
        Description: the mean value of the gravity component of acceleration in direction of axis Y

    tGravityAcc.mean.Z
        Raw data variable: tGravityAcc-mean()-Z
        Description: the mean value of the gravity component of acceleration in direction of axis Z

    tBodyAccJerk.mean.X
        Raw data variable: tBodyAccJerk-mean()-X
        Description: the mean value of the time derivative (da/dt=jerk) of the linear body motion component of 
        acceleration in direction of axis X

    tBodyAccJerk.mean.Y
        Raw data variable: tBodyAccJerk-mean()-Y
        Description: the mean value of the time derivative (da/dt=jerk) of the linear body motion component of 
        acceleration in direction of axis Y

    tBodyAccJerk.mean.Z
        Raw data variable: tBodyAccJerk-mean()-Z
        Description: the mean value of the time derivative (da/dt=jerk) of the linear body motion component of 
        acceleration in direction of axis Z

    tBodyGyro.mean.X
        Raw data variable: tBodyGyro-mean()-X
        Description: the mean value of the angular body motion component of acceleration in direction of axis X

    tBodyGyro.mean.Y
        Raw data variable: tBodyGyro-mean()-Y
        Description: the mean value of the angular body motion component of acceleration in direction of axis Y

    tBodyGyro.mean.Z
        Raw data variable: tBodyGyro-mean()-Z
        Description: the mean value of the angular body motion component of acceleration in direction of axis Z

    tBodyGyroJerk.mean.X
        Raw data variable: tBodyGyroJerk-mean()-X
        Description: the mean value of the time derivative (dw/dt) of the angular body motion component of 
        acceleration in direction of axis X

    tBodyGyroJerk.mean.Y
        Raw data variable: tBodyGyroJerk-mean()-Y
        Description: the mean value of the time derivative (dw/dt) of the angular body motion component of 
        acceleration in direction of axis Y

    tBodyGyroJerk.mean.Z
        Raw data variable: tBodyGyroJerk-mean()-Z
        Description: the mean value of the time derivative (dw/dt) of the angular body motion component of 
        acceleration in direction of axis Z

    tBodyAccMag.mean
        Raw data variable: tBodyAccMag-mean()
        Description: the mean value of the euclidean magnitude of the linear body motion component of 
        acceleration

    tGravityAccMag.mean
        Raw data variable: tGravityAccMag-mean()
        Description: the mean value of the euclidean magnitude of the gravity component of acceleration

    tBodyAccJerkMag.mean
        Raw data variable: tBodyAccJerkMag-mean()
        Description: the mean value of the euclidean magnitude of the time derivative (da/dt=jerk) of the 
        linear body motion component of acceleration

    tBodyGyroMag.mean
        Raw data variable: tBodyGyroMag-mean()
        Description: the mean value of the euclidean magnitude of the angular body motion component of 
        acceleration

    tBodyGyroJerkMag.mean
        Raw data variable: tBodyGyroJerkMag-mean()
        Description: the mean value of the euclidean magnitude of the time derivative (dw/dt) of the angular 
        body motion component of acceleration

    fBodyAcc.mean.X
        Raw data variable: fBodyAcc-mean()-X
        Description: the mean value of the frequency of linear body motion component of acceleration in 
        direction of axis X. The signal was mapped from the time domain to frequncy domain through a Fast 
        Fourier Transform (FFT)

    fBodyAcc.mean.Y
        Raw data variable: fBodyAcc-mean()-Y
        Description: the mean value of the frequency of linear body motion component of acceleration in 
        direction of axis Y. The signal was mapped from the time domain to frequncy domain through a Fast 
        Fourier Transform (FFT)

    fBodyAcc.mean.Z
        Raw data variable: fBodyAcc-mean()-Z
        Description: the mean value of the frequency of linear body motion component of acceleration in 
        direction of axis Z. The signal was mapped from the time domain to frequncy domain through a Fast 
        Fourier Transform (FFT)

     fBodyAccJerk.mean.X
        Raw data variable: fBodyAccJerk-mean()-X
        Description: the mean value of the frequency of the time derivative (da/dt=jerk) of linear body motion 
        component of acceleration in direction of axis X. The signal was mapped from the time domain to frequncy 
        domain through a Fast Fourier Transform (FFT)

    fBodyAccJerk.mean.Y
        Raw data variable: fBodyAccJerk-mean()-Y
        Description: the mean value of the frequency of the time derivative (da/dt=jerk) of linear body motion 
        component of acceleration in direction of axis Y. The signal was mapped from the time domain to frequncy 
        domain through a Fast Fourier Transform (FFT)

    fBodyAccJerk.mean.Z
        Raw data variable: fBodyAccJerk-mean()-Z
        Description: the mean value of the frequency of the time derivative (da/dt=jerk) of linear body motion 
        component of acceleration in direction of axis Z. The signal was mapped from the time domain to frequncy 
        domain through a Fast Fourier Transform (FFT)

    fBodyGyro.mean.X
        Raw data variable: fBodyGyro-mean()-X
        Description: the mean value of the frequency of angular body motion component of acceleration in direction 
        of axis X. The signal was mapped from the time domain to frequncy domain through a Fast Fourier Transform (FFT)

    fBodyGyro.mean.Y
        Raw data variable: fBodyGyro-mean()-Y
        Description: the mean value of the frequency of angular body motion component of acceleration in direction of 
        axis Y. The signal was mapped from the time domain to frequncy domain through a Fast Fourier Transform (FFT)

    fBodyGyro.mean.Z
        Raw data variable: fBodyGyro-mean()-Z
        Description: the mean value of the frequency of angular body motion component of acceleration in direction of
        axis Z. The signal was mapped from the time domain to frequncy domain through a Fast Fourier Transform (FFT)

    fBodyAccMag.mean
        Raw data variable: fBodyAccMag-mean()
        Description: the mean value of the frequency of the euclidean magnitude of the linear body motion component of 
        acceleration. The signal was mapped from the time domain to frequncy domain through a Fast Fourier Transform (FFT)

    fBodyBodyAccJerkMag.mean
        Raw data variable: fBodyBodyAccJerkMag-mean()
        Description: the mean value of the frequency of the euclidean magnitude of the time derivative (da/dt=jerk) of 
        linear body motion component of acceleration. The signal was mapped from the time domain to frequncy domain 
        through a Fast Fourier Transform (FFT)

    fBodyBodyGyroMag.mean
        Raw data variable: fBodyBodyGyroMag-mean()
        Description: the mean value of the frequency of the euclidean magnitude of the angular body motion component of 
        acceleration in direction of axis X. The signal was mapped from the time domain to frequncy domain through a 
        Fast Fourier Transform (FFT)

    fBodyBodyGyroJerkMag.mean
        Raw data variable: fBodyBodyGyroJerkMag-mean()
        Description: the mean value of the frequency of the euclidean magnitude of the time derivative (dw/dt) of angular 
        body motion component of acceleration. The signal was mapped from the time domain to frequncy domain through a 
        Fast Fourier Transform (FFT)

    tBodyAcc.std.X
        Raw data variable: tBodyAcc-std()-X
        Description: the standard deviation of the linear body motion component of acceleration in direction of axis X

    tBodyAcc.std.Y
        Raw data variable: tBodyAcc-std()-Y
        Description: the standard deviation of the linear body motion component of acceleration in direction of axis Y

    tBodyAcc.std.Z
        Raw data variable: tBodyAcc-std()-Z
        Description: the standard deviation of the linear body motion component of acceleration in direction of axis Z

    tGravityAcc.std.X
        Raw data variable: tGravityAcc-std()-X
        Description: the standard deviation of the gravity component of acceleration in direction of axis X

    tGravityAcc.std.Y
        Raw data variable: tGravityAcc-std()-Y
        Description: the standard deviation of the gravity component of acceleration in direction of axis Y

    tGravityAcc.std.Z
        Raw data variable: tGravityAcc-std()-Z
        Description: the standard deviation of the gravity component of acceleration in direction of axis Z

    tBodyAccJerk.std.X
        Raw data variable: tBodyAccJerk-std()-X
        Description: the standard deviation of the time derivative (da/dt=jerk) of the linear body motion component of 
        acceleration in direction of axis X

    standarddeviationoflinearjerksignalonaxisx
        Raw data variable: tBodyAccJerk.std.Y
        Description: the standard deviation of the time derivative (da/dt=jerk) of the linear body motion component of 
        acceleration in direction of axis Y

    tBodyAccJerk.std.Z
        Raw data variable: tBodyAccJerk-std()-Z
        Description: the standard deviation of the time derivative (da/dt=jerk) of the linear body motion component of 
        acceleration in direction of axis Z

    tBodyGyro.std.X
        Raw data variable: tBodyGyro-std()-X
        Description: the standard deviation of the angular body motion component of acceleration in direction of axis X

    tBodyGyro.std.Y
        Raw data variable: tBodyGyro-std()-Y
        Description: the standard deviation of the angular body motion component of acceleration in direction of axis Y

    tBodyGyro.std.Z
        Raw data variable: tBodyGyro-std()-Z
        Description: the standard deviation of the angular body motion component of acceleration in direction of axis Z

    tBodyGyroJerk.std.X
        Raw data variable: tBodyGyroJerk-std()-X
        Description: the standard deviation of the time derivative (dw/dt) of the angular body motion component of 
        acceleration in direction of axis X

    tBodyGyroJerk.std.Y
        Raw data variable: tBodyGyroJerk-std()-Y
        Description: the standard deviation of the time derivative (dw/dt) of the angular body motion component of 
        acceleration in direction of axis Y

    tBodyGyroJerk.std.Z
        Raw data variable: tBodyGyroJerk-std()-Z
        Description: the standard deviation of the time derivative (dw/dt) of the angular body motion component of 
        acceleration in direction of axis Z

    tBodyAccMag.std
        Raw data variable: tBodyAccMag-std()
        Description: the standard deviation of the euclidean magnitude of the linear body motion component of acceleration

    tGravityAccMag.std
        Raw data variable: tGravityAccMag-std()
        Description: the standard deviation of the euclidean magnitude of the gravity component of acceleration

    tBodyAccJerkMag.std
        Raw data variable: tBodyAccJerkMag-std()
        Description: the standard deviation of the euclidean magnitude of the time derivative (da/dt=jerk) of the 
        linear body motion component of acceleration

    tBodyGyroMag.std
        Raw data variable: tBodyGyroMag-std()
        Description: the standard deviation of the euclidean magnitude of the angular body motion component of acceleration

    tBodyGyroJerkMag.std
        Raw data variable: tBodyGyroJerkMag-std()
        Description: the standard deviation of the euclidean magnitude of the time derivative (dw/dt) of the angular body 
        motion component of acceleration

    fBodyAcc.std.X
        Raw data variable: fBodyAcc-std()-X
        Description: the standard deviation of the frequency of linear body motion component of acceleration in direction 
        of axis X. The signal was mapped from the time domain to frequncy domain through a Fast Fourier Transform (FFT)

    fBodyAcc.std.Y
        Raw data variable: fBodyAcc-std()-Y
        Description: the standard deviation of the frequency of linear body motion component of acceleration in direction 
        of axis Y. The signal was mapped from the time domain to frequncy domain through a Fast Fourier Transform (FFT)

    fBodyAcc.std.Z
        Raw data variable: fBodyAcc-std()-Z
        Description: the standard deviation of the frequency of linear body motion component of acceleration in direction 
        of axis Z. The signal was mapped from the time domain to frequncy domain through a Fast Fourier Transform (FFT)

    fBodyAccJerk.std.X
        Raw data variable: fBodyAccJerk-std()-X
        Description: the standard deviation of the frequency of the time derivative (da/dt=jerk) of linear body motion 
        component of acceleration in direction of axis X. The signal was mapped from the time domain to frequncy domain 
        through a Fast Fourier Transform (FFT)

    fBodyAccJerk.std.Y
        Raw data variable: fBodyAccJerk-std()-Y
        Description: the standard deviation of the frequency of the time derivative (da/dt=jerk) of linear body motion 
        component of acceleration in direction of axis Y. The signal was mapped from the time domain to frequncy domain 
        through a Fast Fourier Transform (FFT)

    fBodyAccJerk.std.Z
        Raw data variable: fBodyAccJerk-std()-Z
        Description: the standard deviation of the frequency of the time derivative (da/dt=jerk) of linear body motion 
        component of acceleration in direction of axis Z. The signal was mapped from the time domain to frequncy domain 
        through a Fast Fourier Transform (FFT)

    fBodyGyro.std.X
        Raw data variable: fBodyGyro-std()-X
        Description: the standard deviation of the frequency of angular body motion component of acceleration in direction 
        of axis X. The signal was mapped from the time domain to frequncy domain through a Fast Fourier Transform (FFT)

    fBodyGyro.std.Y
        Raw data variable: fBodyGyro-std()-Y
        Description: the standard deviation of the frequency of angular body motion component of acceleration in direction 
        of axis Y. The signal was mapped from the time domain to frequncy domain through a Fast Fourier Transform (FFT)

    fBodyGyro.std.Z
        Raw data variable: fBodyGyro-std()-Z
        Description: the standard deviation of the frequency of angular body motion component of acceleration in direction 
        of axis Z. The signal was mapped from the time domain to frequncy domain through a Fast Fourier Transform (FFT)

    fBodyAccMag.std
        Raw data variable: fBodyAccMag-std()
        Description: the standard deviation of the frequency of the euclidean magnitude of the linear body motion component 
        of acceleration. The signal was mapped from the time domain to frequncy domain through a Fast Fourier Transform (FFT)

    fBodyBodyAccJerkMag.std
        Raw data variable: fBodyBodyAccJerkMag-std()
        Description: the standard deviation of the frequency of the euclidean magnitude of the time derivative (da/dt=jerk) of 
        linear body motion component of acceleration. The signal was mapped from the time domain to frequncy domain through a 
        Fast Fourier Transform (FFT)

    fBodyBodyGyroMag.std
        Raw data variable: fBodyBodyGyroMag-std()
        Description: the standard deviation of the frequency of the euclidean magnitude of the angular body motion component 
        of acceleration in direction of axis X. The signal was mapped from the time domain to frequncy domain through a Fast 
        Fourier Transform (FFT)

    fBodyBodyGyroJerkMag.std
        Raw data variable: fBodyBodyGyroJerkMag-std()
        Description: the standard deviation of the frequency of the euclidean magnitude of the time derivative (dw/dt) of 
        angular body motion component of acceleration. The signal was mapped from the time domain to frequncy domain through
        a Fast Fourier Transform (FFT)
## run_analysis.R

This R script creates a tidy data set from data collected using the Samsung Galaxy S smartphone accelerometers as described at:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data was downloaded and unpacked locally as shown in the commented lines in the source code of the script. The script needs to be be run in the directory "UCI HAR Dataset" created after unpacking the files. If lines 3 to 6 are uncommented, the script will also download and unpack the data files and can be run in any directory on your computer.

### Requirements

In order to run, the script requires the instalation of dplyr and tidyr (besides R-base package).
These packages can be installed using the command:

install.packages("dplyr", "tidyr")

### Functionality

The script performs the following operations:

   1. Merges the training and the test sets to create one data set.
   
   The subject, y and X data files found in the "test" folder are merged together in the "Test" data set. The subject, y and X data files in the "train" folder are merged together in the "Train" data set. Next, the Train and Test data sets are concatenated in one data set. Column labels are also added as follows:
      * column label for subject column is "subject",
      * column label for actity column is "activity",
      * column labels for each measurement are the ones presented in the features.txt file.
   
   2. Extracts only the measurements of the mean and standard deviation for each measurement.
   
   Only the measurements having both mean() and std() are included, therefore the measurements of meanFreq() and angles between means are not considered. The column selection is made by searching the "mean()" and "std()" patterns in the variable names.
   The resulted set contains the subject and activity columns, plus 66 columns representing measurements that have both mean() and std().
      
   3. Uses descriptive activity names to name the activities in the data set

   The numeric values of each activity performed by human subjects (1 to 6) are replaced with their descriptive names as results from activity_labels.txt file.
 
   4. Appropriately labels the data set with descriptive variable names.
   
   All the variables have names, starting from step 1. The naming convention is fully described in the "features_info.txt" file supplied with the test data. This file is also referred to by the codebook. The labels are tidy up by applying some rules presented in the week 4 lecture - "Editing text variables" (removing "()" and "-").
   
   5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
   
   A final tidy data set is created containing 4 columns, namely subject, activity, measurement(variable), and the computed mean values for 30 subjects X 6 activities X 66 measurements = 11880 rows, which was saved as tidy.txt file. Additional description of this data set is available in the associated CodeBook.md file of the present repository.

   

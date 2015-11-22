## run_analysis.R

This R script creates a tidy data set from data collected using the Samsung Galaxy S smartphone accelerometers as described at

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data was retrieved and unpacked locally as shown in the commented lines in the source code of the script. As it is, the script needs to be be run in the directory created after unpacking the files. If those 4 lines are uncommented, the script will also download and unpack the data files and can be run in any directory on your computer.

### Requirements

In order to run, the script requires the instalation of dplyr and tidyr (besides R-base package).
These packages can be installed using the command:
install.packages("dplyr", "tidyr")

### Functionality

The script performs the following operations:

   1. Merges the training and the test sets to create one data set.
   
   For each data set (train and test), the subject, y, and X data files are merged together and then the combined train and test sets are concatenated. 
   Column labels are also addeds follows:
   * "subject" for subject column
   * "activity" for activity column
   * column labels for each measurement are the ones preseed in features.txt file.
   
   2. Extracts only the measurements of the mean and standard deviation for each measurement.
   
   The resulted set contains the subject and activity columns, plus 66 columns containing "mean()" or "std()" patterns in the variable name. The measurements of meanFreq() and angles between means were not included.
   
   3. Uses descriptive activity names to name the activities in the data set

   A name has already been assigned to the activity colum in the step 1. The activity in the data set appears as numeric values, so these values are replaced with their descriptive names from activity_labels.txt file.
 
   4. Appropriately labels the data set with descriptive variable names.
   
   All the variables have names, starting from step 1. The naming convention is fully described in the "features_info.txt"  file supplied with the test data. This file is also referred to by the codebook. The labels are tidy up by applying some rules presented in the week 4 lecture - "Editing text variables" (removing "()" and "-").
  
   5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

   A final tidy data set is created containing 4 columns, namely subject, activity, measurement(variable), and the computed mean values for 30 subjects X 6 activities X 88 measurements = 15840 rows, which was saved as tidy.txt file. Additional description of this data set is available in the associated CodeBook.md file.

   

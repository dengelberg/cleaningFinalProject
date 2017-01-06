================================================
cleaningFinalProject
v 1.0
================================================
dengelberg
Reading and Cleaning Data - Coursera
================================================
This contained code takes Samsung smartphone motion data for six common activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

The code reads in the data files from the dataset and binds together the 'test' and 'train' sample groups into one larger data set

The code names the variables using the data file containing the measurement names.

The code extracts the measurements of mean and standard deviation leaving out other summaries of the motion data.

The code labels the variable for activities being performed and subjects performing them and binds the subject labels to the data.

Finally, the code rearranges the data set into a tidy data set where pair of subject and activity have multiple rows. In this process a new data table is created that takes the average of the mean and standard deviation measurements for each activity by each subject.
================================================

- 'cleaningFinalProject' repo contains the code and data files for the final project of the Reading and Cleaning Data course on Coursera. The data that the code analysis is included for the sake of completeness and so that anyone accessing this repo can check the code.

- 'UCI HAR Dataset' folder contains all the data files analyzed in this project in their complete form. The data is the Human Activity Recognition Using Smartphones Dataset, Version 1.0 with Samsung smart phone data

- 'run analysis.R' is the R code that performs the analysis.

- 'activitySubjectMeans.txt' is the output data table

================================================

Variable Names:

Activities: The six common activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
Subjects: The thirty individuals that were monitored using the Samsung phone
...-mean: The mean of various body motion measures.
...-std: The standard deviation of various body motion measures.

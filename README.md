# GettingAndCleaningDataProject

##### 1. Original Files & Directories provided by Coursera:
* README.txt
* activity_labels.txt
* features.txt
* features_info.txt
* __test__
      * subject_test.txt
      * X_test.txt
      * y_test.txt
      * __Inertial_Signals__ //(Triaxial acceleration from the accelerometer and Triaxial Angular velocity from the gyroscope for the test set)
* __train__
      * subject_train.txt
      * X_train.txt
      * y_train.txt
      * __Inertial_Signals__ //(Triaxial acceleration from the accelerometer and Triaxial Angular velocity from the gyroscope for the train set)
     
##### 2. Script that turns the raw data into a tidy dataset: __run_analysis.R__
     *How to use the script:*
          -clone the repo in your local PC
          -import the script into R: -->  source("run_analysis.R")
          -open a text file named "final_ds_with_average_measures.txt" with the tidy dataset that was created in the same folder where the script is located. Note that another file with the same tidy dataset but in .csv format will also be created. Both can be used.

##### 3. CodeBook.md contains the description of the tidy dataset
     *What does the script do*
          __STEP 1__
          * Combines the two data.frames with the 561-feature vectors with time and frequency domain variables from the __test set__ and the __train set__.The files that contain these data.frames are "train/X_train.txt" and "test/X_test.txt". The results is a data.frame of 10299 observations/rows and 561 variables/columns. This data.frame is called total_features.
          * Combines the two activity data.frames from the __test set__ and the __train set__.The files that contain these data.frames are "train/y_train.txt" and "test/y_test.txt". The results is a data.frame of 10299 observations/rows and 1 variable/column.This data.frame is called total_activities.
          * Combines the two subjects data.frames from the __test set__ and the __train set__. The files that contain these data.frames are "train/subject_train.txt" and "test/subject_test.txt". The results is a data.frame of 10299 observations/rows and 1 variable/column. This data.frame is called total_subjects.
          __STEP 2__
          * Select only the columns of total_features that contain measurements on the mean and standard deviation for each measurement.
          __STEP 3__
          * Uses descriptive activity names to name the activities by replacing numeric identifiers with strings that describe the target activity.
          __STEP 4__
          * Columns are labeled with appropriate names
          __STEP 5__
          * A result dataset is built so that it contains the average of each variable for each subject and each activity
          
          
          
          

##### 4. "final_ds_with_average_measures.txt" and "final_ds_with_average_measures.csv" are the plain text and csv format versions of the tidy dataset
          



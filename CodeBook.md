# Getting and Cleaning Data Course Project Code BooK #

## DATA SOURCE ##
Human Activity Recognition Using Smartphones Dataset<br>
Version 1.0 <br>
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.<br>
Smartlab - Non Linear Complex Systems Laboratory<br>
DITEN - Università degli Studi di Genova.<br>
Via Opera Pia 11A, I-16145, Genoa, Italy.<br>
activityrecognition@smartlab.ws<br>
www.smartlab.ws<br>


## ORIGINAL STUDY FOR DATA SOURCE ##
The source data is the result of the experiments carried out with a group of 30 volunteers (subjects) within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, it was captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 


## PROCESSING THE SOURCE DATA ##
The steps to generate a summarized data set taking the source data as input are:

1. Merge the training and the test sets to create one data set. Add information about the subject and the activity performed.
2. Extract only the measurements on the mean and standard deviation for each measurement.
3. Use descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## DESCRIPTION OF THE RESULTING DATA SET ##
The resulting data set after applying the transformation process has the columns descrived in the following table.

NOTE
The numeric columns are the means of the corresponding variables in the source files (the ones
referring to "Mean" or to "standard deviation- Std"). The original column names have been adjusted
to eliminate special characters:  commas, parenthesis, and hyphens. Column names prefixes:

t:     time domain signals<br>
f:     frequency domain signals<br>
angle: angle between to vectors<br>

The unit of each variable is the same as the corresponding variable in the data source.


|    |NAME                               |  TYPE      | DESCRIPTION                                                      |
|:--:|-----------------------------------|------------|------------------------------------------------------------------|
|  1 | subjectid                         | integer    | Code of the subject to which the data belongs: 1, 2, ..., 30     |
|  2 | activity                          | character  | Measured activity code: WALKING, WALKING_UPSTAIRS, etc.          |
|  3 | tBodyAccMeanX                     | numeric | Mean of Body Acceleration Signal   - X component                    |
|  4 | tBodyAccMeanY                     | numeric | Mean of Body Acceleration Signal - Y component                      |
|  5 | tBodyAccMeanZ                     | numeric | Mean of Body Acceleration Signal - Z component                      |
|  6 | tBodyAccStdX                      | numeric | Standard deviation of Body Acceleration Signal - X component        |
|  7 | tBodyAccStdY                      | numeric | Standard deviation of Body Acceleration Signal - Y component        |
|  8 | tBodyAccStdZ                      | numeric | Standard deviation of Body Acceleration Signal - Z component        |
|  9 | tGravityAccMeanX                  | numeric | Mean of Gravity Acceleration Signal - X component                   |
| 10 | tGravityAccMeanY                  | numeric | Mean of Gravity Acceleration Signal - Y component                   |
| 11 | tGravityAccMeanZ                  | numeric | Mean of Gravity Acceleration Signal - Z component                   |
| 12 | tGravityAccStdX                   | numeric | Standard deviation of Gravity Acceleration Signal - X   component   |
| 13 | tGravityAccStdY                   | numeric | Standard deviation of Gravity Acceleration Signal - Y   component   |
| 14 | tGravityAccStdZ                   | numeric | Standard deviation of Gravity Acceleration Signal - Z   component   |
| 15 | tBodyAccJerkMeanX                 | numeric | Mean of Body Acceleration Jerk Signal - X component                 |
| 16 | tBodyAccJerkMeanY                 | numeric | Mean of Body Acceleration Jerk Signal - Y component                 |
| 17 | tBodyAccJerkMeanZ                 | numeric | Mean of Body Acceleration Jerk Signal - Z component                 |
| 18 | tBodyAccJerkStdX                  | numeric | Standard deviation of Body Acceleration Jerk Signal - X   component |
| 19 | tBodyAccJerkStdY                  | numeric | Standard deviation of Body Acceleration Jerk Signal - Y   component |
| 20 | tBodyAccJerkStdZ                  | numeric | Standard deviation of Body Acceleration Jerk Signal - Z   component |
| 21 | tBodyGyroMeanX                    | numeric | Mean of Body Gyroscopic Signal - X component                        |
| 22 | tBodyGyroMeanY                    | numeric | Mean of Body Gyroscopic Signal - Y component                        |
| 23 | tBodyGyroMeanZ                    | numeric | Mean of Body Gyroscopic Signal - Z component                        |
| 24 | tBodyGyroStdX                     | numeric | Standard deviation of Body Gyroscopic Signal - X component          |
| 25 | tBodyGyroStdY                     | numeric | Standard deviation of Body Gyroscopic Signal - Y component          |
| 26 | tBodyGyroStdZ                     | numeric | Standard deviation of Body Gyroscopic Signal - Z component          |
| 27 | tBodyGyroJerkMeanX                | numeric | Mean of Body Gyroscopic Jerk Signal - X component                   |
| 28 | tBodyGyroJerkMeanY                | numeric | Mean of Body Gyroscopic Jerk Signal - Y component                   |
| 29 | tBodyGyroJerkMeanZ                | numeric | Mean of Body Gyroscopic Jerk Signal - Z component                   |
| 30 | tBodyGyroJerkStdX                 | numeric | Standard deviation of Body Gyroscopic Jerk Signal - X   component   |
| 31 | tBodyGyroJerkStdY                 | numeric | Standard deviation of Body Gyroscopic Jerk Signal - Y   component   |
| 32 | tBodyGyroJerkStdZ                 | numeric | Standard deviation of Body Gyroscopic Jerk Signal - Z   component   |
| 33 | tBodyAccMagMean                   | numeric | Mean of Body Acceleration Magnitude                                 |
| 34 | tBodyAccMagStd                    | numeric | Standard deviation of Body Acceleration Magnitude                   |
| 35 | tGravityAccMagMean                | numeric | Mean of Gravity Acceleration Magnitude                              |
| 36 | tGravityAccMagStd                 | numeric | Standard deviation of Gravity Acceleration Magnitude                |
| 37 | tBodyAccJerkMagMean               | numeric | Mean of Body Acceleration Jerk Magnitude                            |
| 38 | tBodyAccJerkMagStd                | numeric | Standard deviation of Body Acceleration Jerk Magnitude              |
| 39 | tBodyGyroMagMean                  | numeric | Mean of Body Gyroscopic Magnitude                                   |
| 40 | tBodyGyroMagStd                   | numeric | Stndard deviation of Body Gyroscopic Magnitude                      |
| 41 | tBodyGyroJerkMagMean              | numeric | Mean of Body Gyroscopic Jerk Magnitude                              |
| 42 | tBodyGyroJerkMagStd               | numeric | Standard deviation of Body Gyroscopic Jerk Magnitude                |
| 43 | fBodyAccMeanX                     | numeric | Mean of Body Acceleration Signal - X component                      |
| 44 | fBodyAccMeanY                     | numeric | Mean of Body Acceleration Signal - Y component                      |
| 45 | fBodyAccMeanZ                     | numeric | Mean of Body Acceleration Signal - Z component                      |
| 46 | fBodyAccStdX                      | numeric | Standard deviation of Body Acceleration Signal - X component        |
| 47 | fBodyAccStdY                      | numeric | Standard deviation of Body Acceleration Signal - Y component        |
| 48 | fBodyAccStdZ                      | numeric | Standard deviation of Body Acceleration Signal - Z component        |
| 49 | fBodyAccMeanFreqX                 | numeric | Mean of Gravity Acceleration Frequency - X component                |
| 50 | fBodyAccMeanFreqY                 | numeric | Mean of Gravity Acceleration Frequency - Y component                |
| 51 | fBodyAccMeanFreqZ                 | numeric | Mean of Gravity Acceleration Frequency - Z component                |
| 52 | fBodyAccJerkMeanX                 | numeric | Mean of Body Acceleration Jerk Signal - X component                 |
| 53 | fBodyAccJerkMeanY                 | numeric | Mean of Body Acceleration Jerk Signal - Y component                 |
| 54 | fBodyAccJerkMeanZ                 | numeric | Mean of Body Acceleration Jerk Signal - Z component                 |
| 55 | fBodyAccJerkStdX                  | numeric | Standard deviation of Body Acceleration Jerk Signal - X   component |
| 56 | fBodyAccJerkStdY                  | numeric | Standard deviation of Body Acceleration Jerk Signal - Y   component |
| 57 | fBodyAccJerkStdZ                  | numeric | Standard deviation of Body Acceleration Jerk Signal - Z   component |
| 58 | fBodyAccJerkMeanFreqX             | numeric | Mean of Body Acceleration Jerk Frequency - X component              |
| 59 | fBodyAccJerkMeanFreqY             | numeric | Mean of Body Acceleration Jerk Frequency - Y component              |
| 60 | fBodyAccJerkMeanFreqZ             | numeric | Mean of Body Acceleration Jerk Frequency - Z component              |
| 61 | fBodyGyroMeanX                    | numeric | Mean of Body Gyroscopic Signal - X component                        |
| 62 | fBodyGyroMeanY                    | numeric | Mean of Body Gyroscopic Signal - Y component                        |
| 63 | fBodyGyroMeanZ                    | numeric | Mean of Body Gyroscopic Signal - Z component                        |
| 64 | fBodyGyroStdX                     | numeric | Standard deviation of Body Gyroscopic Signal - X component          |
| 65 | fBodyGyroStdY                     | numeric | Standard deviation of Body Gyroscopic Signal - Y component          |
| 66 | fBodyGyroStdZ                     | numeric | Standard deviation of Body Gyroscopic Signal - Z component          |
| 67 | fBodyGyroMeanFreqX                | numeric | Mean of Body Gyroscopic Frequency - X component                     |
| 68 | fBodyGyroMeanFreqY                | numeric | Mean of Body Gyroscopic Frequency - Y component                     |
| 69 | fBodyGyroMeanFreqZ                | numeric | Mean of Body Gyroscopic Frequency - Z component                     |
| 70 | fBodyAccMagMean                   | numeric | Mean of Body Acceleration Magnitude                                 |
| 71 | fBodyAccMagStd                    | numeric | Standard deviation of Body Acceleration Magnitude                   |
| 72 | fBodyAccMagMeanFreq               | numeric | Mean of Body Acceleration Magnitude Frequency                       |
| 73 | fBodyBodyAccJerkMagMean           | numeric | Mean of Body Acceleration Jerk Magnitude                            |
| 74 | fBodyBodyAccJerkMagStd            | numeric | Standard deviation of Body Acceleration Jerk Magnitude              |
| 75 | fBodyBodyAccJerkMagMeanFreq       | numeric | Standard deviation of Body Acceleration Jerk Magnitude   Frequency  |
| 76 | fBodyBodyGyroMagMean              | numeric | Mean of Body Gyroscopic Magnitude                                   |
| 77 | fBodyBodyGyroMagStd               | numeric | Standard deviation of Body Gyroscopic Magnitude                     |
| 78 | fBodyBodyGyroMagMeanFreq          | numeric | Mean of Body Gyroscopic Magnitude Frequency                         |
| 79 | fBodyBodyGyroJerkMagMean          | numeric | Mean of Body Gyroscopic Jerk Magnitude                              |
| 80 | fBodyBodyGyroJerkMagStd           | numeric | Standard deviation of Body Gyroscopic Jerk Magnitude Frequency      |
| 81 | fBodyBodyGyroJerkMagMeanFreq      | numeric | Mean of Body Gyroscopic Jerk Magnitude Frequency                    |
| 82 | angletBodyAccMeangravity          | numeric | Mean angle Body Acceleration Gravity                                |
| 83 | angletBodyAccJerkMeangravityMean  | numeric | Mean angle Body Acceleration Jerk Gravity                           |
| 84 | angletBodyGyroMeangravityMean     | numeric | Mean angle Gyroscopic Gravity                                       |
| 85 | angletBodyGyroJerkMeangravityMean | numeric | Mean angle Gyroscopic Jerk Gravity                                  |
| 86 | angleXgravityMean                 | numeric | Mean angle gravity - X component                                    |
| 87 | angleYgravityMean                 | numeric | Mean angle gravity - Y component                                    |
| 88 | angleZgravityMean                 | numeric | Mean angle gravity - Y component                                    |

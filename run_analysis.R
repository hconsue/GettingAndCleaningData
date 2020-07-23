library(dplyr)

## Read and join by rows Train and Test Measurements
X_train_measures <- read.table("./train/X_train.txt", header = FALSE)
X_test_measures  <- read.table("./test/X_test.txt", header = FALSE)

measures <- rbind(X_train_measures, X_test_measures)

## Read and join by rows Train and Test Activity code corresponding to each
## Measurement. 
X_train_activities <- read.table("./train/y_train.txt", header = FALSE)
X_test_activities  <- read.table("./test/y_test.txt", header = FALSE)

activities <- rbind(X_train_activities, X_test_activities)

## Read and join by rows Train and Test Subjects code corresponding to each
## Measurement. Assign the column name. 
X_train_subjects <- read.table("./train/subject_train.txt", header = FALSE)
X_test_subjects  <- read.table("./test/subject_test.txt", header = FALSE)

subjects <- rbind(X_train_subjects, X_test_subjects)
names(subjects) <- c("subjectid")

## Read the Activities code - description table: activity_labels
activity_labels <- read.table("activity_labels.txt", header = FALSE)

## Merge activities and activity_labels to get the description of the activity 
## of each Measurement. We are interested in the second column of the merge: the
## one with the description. Assign the column name.
activities_description <- left_join(activities, activity_labels,
                                by.x = "V1", by.y = "V1", all = TRUE)[2]
names(activities_description) <- c("activity")

## Read the Features, that is the name of each column of the Measurements files.
## The second column of the information read contains the names.
features <- read.table("features.txt", header = FALSE)

## Assign the features just read as the column names for the measures data frame
names(measures) <- features[,2]

## Select only the measures columns with reference to "mean" or "standard
## deviation". Discard the rest of the columns.
measures <- measures[grep("std|mean", names(measures), ignore.case = TRUE)]

## Join by columns subject, activities_description, and the selected columns
## of measures (measurements).
total_dataset <- cbind(subjects, activities_description, measures)

## Group the resulting data set by subjectid and activity; calculates the 
## columns means. 
final_dataset <- total_dataset %>% 
                 group_by(subjectid, activity) %>%
                 summarise(across(everything(), mean))

## Capitalize the first letter of "mean"and "std" in column names 
names(final_dataset) <- gsub("mean","Mean", names(final_dataset),
                             ignore.case = TRUE)
names(final_dataset) <- gsub("std","Std", names(final_dataset),
                             ignore.case = TRUE)

## Eliminate special characters from the column names: "-", "(", ")", and ","
names(final_dataset) <- gsub("[-]","", names(final_dataset))
names(final_dataset) <- gsub("[(]","", names(final_dataset))
names(final_dataset) <- gsub("[)]","", names(final_dataset))
names(final_dataset) <- gsub("[,]","", names(final_dataset))

## Write final_dataset to disk
write.table(final_dataset, file = "TidyDataset.txt", quote = FALSE, 
            row.names = FALSE, sep = " ")

##Step 1: Merges the training and the test sets to create one data set

#Reading train 561-feature vector with time and frequency domain variables
train_features <- read.table("train/X_train.txt")
#print(object.size(train_features),units="Mb")  -->     31.5 Mb
#str(train_features)    -->     'data.frame': 7352 obs. of  561 variables

#Reading test 561-feature vector with time and frequency domain variables
test_features <- read.table("test/X_test.txt")
#print(object.size(test_features),units="Mb")   -->     12.7 Mb
#str(test_features)     -->     'data.frame': 2947 obs. of  561 variables:

#Merging train and test 561-feature vectors
total_features <- rbind(train_features,test_features)

#Reading train identifiers of the subjects who carried out the experiment
train_subjects <- read.table("train/subject_train.txt")
#Reading train identifiers of the subjects who carried out the experiment
test_subjects <- read.table("test/subject_test.txt")
#Merging train and test identifiers of the subjects who carried out the experiment
total_subjects <- rbind(train_subjects, test_subjects)

#Reading train activities
train_activities <- read.table("train/y_train.txt")
#Reading test activities
test_activities <- read.table("test/y_test.txt")
#Merging train and test activities
total_activities <- rbind(train_activities, test_activities)

##Step 2: Extracts only the measurements on the mean and standard deviation for each measurement.
features_desc <- read.table("features.txt")
mean_std_measurements_indexes <- grep("(-mean\\(\\)|-std\\(\\))", features_desc[, 2])
total_features <- total_features[ ,mean_std_measurements_indexes]

##Step 3: Uses descriptive activity names to name the activities in the data set

activity_labels <- read.table("activity_labels.txt")
activity_labels[,2] <- gsub("_"," ",tolower(as.character(activity_labels[,2])))
total_activities[,1] <- activity_labels[total_activities[,1], 2]

##Step 4: Appropriately labels the data set with descriptive variable names.
names(total_subjects) <- c("subjects")
names(total_activities) <- c("activities")
features_names <- as.character(features_desc[mean_std_measurements_indexes,2])
features_names <- gsub("(\\(|\\))", "", tolower(features_names))
names(total_features) <- features_names

#Binding datasets
ds <- cbind(total_subjects,total_activities,total_features)

##Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
unique_subjects <- sort(unique(total_subjects[,1]))
number_of_activities <- length(activity_labels[,2])

number_of_columns <- dim(ds)[2]

final_ds <- ds[1:length(unique_subjects)*number_of_activities,]
counter <- 1

for(i in 1:length(unique_subjects)){
        for(j in 1:number_of_activities){
                sub_ds <- subset(ds, ds$subjects == unique_subjects[i] & ds$activities == activity_labels[j,2], select=3:number_of_columns)
                final_ds[counter,"subjects"] <- unique_subjects[i]
                final_ds[counter,"activities"] <- activity_labels[j,2]
                final_ds[counter,3:number_of_columns] <- apply(sub_ds,2,mean)
                counter <- counter + 1
        }
}
row.names(final_ds) <- NULL
write.table(final_ds,"final_ds_with_average_measures.txt")
write.csv(final_ds,"final_ds_with_average_measures.csv")







run_analysis <- function(){
      ##
      ## Assignment for "Getting and Cleaning Data", Februrary 2015:
      ## 1- Merge the training and the test sets to create one data set
      ## 2- Extract only the measurements on the mean and standard deviation for
      ##    each measurement.
      ## 3- Use descriptive activity names to name the activities in the data set
      ## 4- Appropriately label the data set with descriptive variable names.
      ## 5- From the data set in step 4, create a second, independent tidy data  
      ##    set with the average of each variable for each activity and each 
      ##    subject
      ##
      ## Input as described in the submission instructions: 
      ##    The code should have a file run_analysis.R in the main directory 
      ##    that can be run as long as the Samsung data is in your working 
      ##    directory.
      ##
      ##  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
      ##
      ## Output: run_analysis.txt
      ## Output Location: Working Directory
      ##
      
      ##########################################################################
      ## Step 1.0 - Merge the training and the test sets to create one data set
      ##########################################################################

      ##########################################################################
      ## Step 1.1 - Load labels
      ##########################################################################

      ## Load activity labels
      activityLabelUrl <- "./UCI HAR Dataset/activity_labels.txt"
      activities_labels <- read.table(activityLabelUrl, 
            col.names=c('ActivityID', 'Activity'))

      ## Load feature labels
      featuresLabelUrl <- "./UCI HAR Dataset/features.txt"
      features_labels <- read.table(featuresLabelUrl)

      ##########################################################################
      ## Step 1.2 - Load test datasets (measurements, subjects, activities)
      ##########################################################################

      ## Load test data measurements
      testUrl <- "./UCI HAR Dataset/test/X_test.txt"
      test <- read.table(testUrl)

      ## Load test data subjects
      testSubjUrl <- "./UCI HAR Dataset/test/subject_test.txt"
      test_subjects <- read.table(testSubjUrl, 
            col.names=c('SubjectID'))

      ## Load test data activities
      testActivitiesUrl <- "./UCI HAR Dataset/test/y_test.txt"
      test_activities <- read.table(testActivitiesUrl, 
            col.names=c('ActivityID'))

      ##########################################################################
      ## Step 1.3 - Load train datasets (measurements, subjects, activities)
      ##########################################################################

      ## Load train data measurements
      trainUrl <- "./UCI HAR Dataset/train/X_train.txt"
      train <- read.table(trainUrl)

      ## Load test data subjects
      trainSubjUrl <- "./UCI HAR Dataset/train/subject_train.txt"
      train_subjects <- read.table(trainSubjUrl, 
            col.names=c('SubjectID'))

      ## Load test data activities
      trainActivitiesUrl <- "./UCI HAR Dataset/train/y_train.txt"
      train_activities <- read.table(trainActivitiesUrl, 
            col.names=c('ActivityID'))
      
      ## Note: We will filter the datasets before merging. Step-1 completes
      ##       further down, after step-4

      ##########################################################################
      ## Step 2.0 - Extract only the measurements on the mean and standard 
      ##            deviation for each measurement.
      ##########################################################################

      ##########################################################################
      ## step 2.1 - Create vector of selected features (mean and standard 
      ##            measurements) 
      ##########################################################################
      selFeatures <- c("mean", "std")
      selFeaturesList <- unique (
            grep(paste(selFeatures,collapse="|"), 
            features_labels$V2, 
            value=TRUE))
      selected_features <- features_labels[features_labels$V2 
            %in% selFeaturesList, ]
      selected_features_v <- paste(rep("V", times=48), 
            selected_features[,1], sep="")

      ##########################################################################
      ## step 2.2 - Extract 'test' data for only the selected features (mean,  
      ##            std) 
      ##########################################################################
      
      ## Filter test data by selected features 
      test_selected <- test[, names(test) %in% selected_features_v]

      ##########################################################################
      ## step 2.3 - Extract 'train' data for only the selected features (mean,  
      ##            std) 
      ##########################################################################
      
      # Filter train data by selected features 
      train_selected <- train[, names(train) %in% selected_features_v]
      
      ##########################################################################
      ## Step 3.0 - Use descriptive activity names to name the activities in 
      ##            the data set
      ##########################################################################

      ##########################################################################
      ## step 3.1 - Bind the 'test' data to a single table 
      ##########################################################################
      
      ## Rename selected test data
      colnames(test_selected) <- selected_features[,2]
      
      ## Bind selected test data with subjects and activities
      complete_test <- cbind(test_subjects, test_selected, test_activities)
      
      ##########################################################################
      ## step 3.2 - Bind the 'train' data to a single table 
      ##########################################################################
      
      # Rename selected train data
      colnames(train_selected) <- selected_features[,2]
      
      ## Bind selected train data with subjects and activities
      complete_train <- cbind(train_subjects, train_selected, train_activities)
      
      ##########################################################################
      ## Step 4.0 - Appropriately label the data set with descriptive variable 
      ##            names.
      ##########################################################################
      
      ## Bind activities to activities ID to Description in selected test data
      complete_test_desc <- (merge(complete_test, 
            activities_labels, all=TRUE))[,-1]      

      ## Bind activities to activities ID to Description in selected test data
      complete_train_desc <- (merge(complete_train, 
            activities_labels, all=TRUE))[,-1]

      ##########################################################################
      ## Step 1.0 - Complete the final merge
      ##########################################################################
            
      ## Merge test and train datasets
      complete_data <- rbind(complete_test_desc, complete_train_desc)
      
      ##########################################################################
      ## Step 5.0 - From the data set in step 4, create a second, independent 
      ##            tidy data set with the average of each variable for each 
      ##            activity and each subject
      ##########################################################################
      
      ## Transform complete data into data.table format
      library(data.table)
      DT <- data.table(complete_data)
      
      ## Apply mean to rows grouped by SubjectID and Activity
      Fitness_DT <- DT[, lapply(.SD, mean), by=list(SubjectID,Activity)]
      
      ##########################################################################
      ## Submission Instructions:
      ## Please upload the tidy data set created in step 5 of the instructions. 
      ## Please upload your data set as a txt file created with write.table() 
      ## using row.name=FALSE
      ##########################################################################

      outputUrl <- "./run_analysis.txt"
      write.table(Fitness_DT, file=outputUrl, row.names=FALSE)
      
      ## return the final dataset to the global environment
      return(Fitness_DT)
}
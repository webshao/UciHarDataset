# Read in the activity labels
activities <- read.table('activity_labels.txt')

# Define a function for translating activity code to descriptive labels
descActiName <- function(actiCode) {
  return(as.character(activities[activities$V1 == actiCode, 2]))  
}

# Define a function for improving the description of the measurement labels
moreDescLabel <- function(origLabel) {
  # Replace BodyBody to Body if it exists
  newLabel <- gsub("BodyBody", "Body", origLabel)
  # Replace the word Acc with Accelerometer
  newLabel <- gsub("Acc", "LinAcc", newLabel)
  # Replace the word Gyro with Gyroscope
  newLabel <- gsub("Gyro", "AngVel", newLabel)  
  # Replace the prefix t with Time
  newLabel <- gsub("^t", "TimeDom", newLabel)  
  # Replace the prefix f with Frequency
  newLabel <- gsub("^f", "FreqDom", newLabel)  
  return(paste('Avg', newLabel, sep=''))
}

# Define the dictionary of coded and descriptive names so that
# the data frames would carry the descriptive column names.
features <- read.table('features.txt')

# Read in and combine test and training subject data (Req. 1)
testSubDf <- read.table('./test/subject_test.txt')
trainSubDf <- read.table('./train/subject_train.txt')
grandSubDf <- rbind(testSubDf, trainSubDf)
# Rename column to "subject"
colnames(grandSubDf) <- c("subject")

# Read in and combine test and training activity data (Req. 1)
testYDf <- read.table('./test/y_test.txt')
trainYDf <- read.table('./train/y_train.txt')
grandYDf <- rbind(testYDf, trainYDf)
# Use descriptive activity names instead of the 1-6 activity code (Req. 3)
grandYDescDf <- as.data.frame(apply(grandYDf, 1, descActiName))
# Rename column to "activity"
colnames(grandYDescDf) <- c("activity")

# Read in and combine test and training sensor data (Req. 1)
testXDf <- read.table('./test/X_test.txt')
trainXDf <- read.table('./train/X_train.txt')
grandXDf <- rbind(testXDf, trainXDf)

# Use more descriptive label names (Req. 4)
oriLabs <- as.character(features$V2)
newLabs <- as.character(lapply(oriLabs, moreDescLabel))
colnames(grandXDf) <- newLabs
coln <- colnames(grandXDf)
# Use only the mean and std sensor data columns (Req. 2)
ind <- grep('(mean\\(\\)|std\\(\\))',coln)
selXDf <- grandXDf[,ind]
selDf <- cbind(grandSubDf, grandYDescDf, selXDf)

# Create the aggregate data set for the mean of each of the variables,
# grouped by subject and activity (Req. 5)
library(plyr)
selSumDf <- ddply(selDf, .(subject, activity), numcolwise(mean))

# Write the final output in the default space-separated format,
# as the original data files are
write.table(selSumDf, file="selsum.txt", row.names=FALSE)

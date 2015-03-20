        ####################
        ##                ##
        ##  Study design  ##
        ##                ##
        ####################

I collected the data on internet with the commmand

download.file(url=https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip,destfile = ./initial_file,method = curl)



Then I unzip the file and can start to work with the raw files

unzip(initial_file.zip)




        ####################
        ##                ##
        ##    Code  Book  ##
        ##                ##
        ####################

I kept all the variables whith mean or std in their names, inded the relevant informations we want are the mean and standard deviation of each measurement 

 id_subject     is an integer between 1 and 39
label           it's an activity label {SIT,LAYING,...}
 tBodyAcc-mean()-X      time domain signal
 tBodyAcc-mean()-Y      time domain signal
 tBodyAcc-mean()-Z      time domain signal
 tBodyAcc-std()-X      time domain signal
 tBodyAcc-std()-Y      time domain signal
 tBodyAcc-std()-Z      time domain signal
 tGravityAcc-mean()-X      time domain signal
 tGravityAcc-mean()-Y      time domain signal
 tGravityAcc-mean()-Z      time domain signal
 tGravityAcc-std()-X      time domain signal
 tGravityAcc-std()-Y      time domain signal
 tGravityAcc-std()-Z      time domain signal
 tBodyAccJerk-mean()-X      time domain signal
 tBodyAccJerk-mean()-Y      time domain signal
 tBodyAccJerk-mean()-Z      time domain signal
 tBodyAccJerk-std()-X      time domain signal
 tBodyAccJerk-std()-Y      time domain signal
 tBodyAccJerk-std()-Z      time domain signal
 tBodyGyro-mean()-X      time domain signal
 tBodyGyro-mean()-Y      time domain signal
 tBodyGyro-mean()-Z      time domain signal
 tBodyGyro-std()-X      time domain signal
 tBodyGyro-std()-Y      time domain signal
 tBodyGyro-std()-Z      time domain signal
 tBodyGyroJerk-mean()-X      time domain signal
 tBodyGyroJerk-mean()-Y      time domain signal
 tBodyGyroJerk-mean()-Z      time domain signal
 tBodyGyroJerk-std()-X      time domain signal
 tBodyGyroJerk-std()-Y      time domain signal
 tBodyGyroJerk-std()-Z      time domain signal
 tBodyAccMag-mean()      time domain signal
 tBodyAccMag-std()      time domain signal
 tGravityAccMag-mean()      time domain signal
 tGravityAccMag-std()      time domain signal
 tBodyAccJerkMag-mean()      time domain signal
 tBodyAccJerkMag-std()      time domain signal
 tBodyGyroMag-mean()      time domain signal
 tBodyGyroMag-std()      time domain signal
 tBodyGyroJerkMag-mean()      time domain signal
 tBodyGyroJerkMag-std()      time domain signal
 fBodyAcc-mean()-X      frequency domain signal
 fBodyAcc-mean()-Y      frequency domain signal
 fBodyAcc-mean()-Z      frequency domain signal
 fBodyAcc-std()-X      frequency domain signal
 fBodyAcc-std()-Y      frequency domain signal
 fBodyAcc-std()-Z      frequency domain signal
 fBodyAcc-meanFreq()-X      frequency domain signal
 fBodyAcc-meanFreq()-Y      frequency domain signal
 fBodyAcc-meanFreq()-Z      frequency domain signal
 fBodyAccJerk-mean()-X      frequency domain signal
 fBodyAccJerk-mean()-Y      frequency domain signal
 fBodyAccJerk-mean()-Z      frequency domain signal
 fBodyAccJerk-std()-X      frequency domain signal
 fBodyAccJerk-std()-Y      frequency domain signal
 fBodyAccJerk-std()-Z      frequency domain signal
 fBodyAccJerk-meanFreq()-X      frequency domain signal
 fBodyAccJerk-meanFreq()-Y      frequency domain signal
 fBodyAccJerk-meanFreq()-Z      frequency domain signal
 fBodyGyro-mean()-X      frequency domain signal
 fBodyGyro-mean()-Y      frequency domain signal
 fBodyGyro-mean()-Z      frequency domain signal
 fBodyGyro-std()-X      frequency domain signal
 fBodyGyro-std()-Y      frequency domain signal
 fBodyGyro-std()-Z      frequency domain signal
 fBodyGyro-meanFreq()-X      frequency domain signal
 fBodyGyro-meanFreq()-Y      frequency domain signal
 fBodyGyro-meanFreq()-Z      frequency domain signal
 fBodyAccMag-mean()      frequency domain signal
 fBodyAccMag-std()      frequency domain signal
 fBodyAccMag-meanFreq()      frequency domain signal
 fBodyBodyAccJerkMag-mean()      frequency domain signal
 fBodyBodyAccJerkMag-std()      frequency domain signal
 fBodyBodyAccJerkMag-meanFreq()      frequency domain signal
 fBodyBodyGyroMag-mean()      frequency domain signal
 fBodyBodyGyroMag-std()      frequency domain signal
 fBodyBodyGyroMag-meanFreq()      frequency domain signal
 fBodyBodyGyroJerkMag-mean()      frequency domain signal
 fBodyBodyGyroJerkMag-std()      frequency domain signal
 fBodyBodyGyroJerkMag-meanFreq()      frequency domain signal
 angle(tBodyAccMean,gravity)      angle
 angle(tBodyAccJerkMean),gravityMean)  angle    
 angle(tBodyGyroMean,gravityMean)      angle
 angle(tBodyGyroJerkMean,gravityMean) angle
 angle(X,gravityMean)
 angle(Y,gravityMean)
 angle(Z,gravityMean)



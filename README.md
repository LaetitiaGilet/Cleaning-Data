        ####################
        ##                ##
        ##    Manuel      ##
        ##                ##
        ####################


In the Script run_analysis

I put together the data of subject_test,label and set test with cbind
do the same with train data
and merge train and test data together with rbind to create a unique data_frame

I extract all the column with mean or std in their names (no case sensitive !)
Then I rename column titles with relevant names (found in features.txt)

I change the value of the label_activity id with the activity name and,
Thanks to the dplyr package, group by activity and label and then summarize the variables with the mean function

For more informations, please read the script's comments
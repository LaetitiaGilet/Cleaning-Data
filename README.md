        ####################
        ##                ##
        ##    Manuel      ##
        ##                ##
        ####################


In the Script run_analysis

I put together the data of subject_test,label and set test with cbind
do the same with train data
and merge train and test data together with rbind to create a unique data_frame

I change the value of the label_activity with the activity and,
Thanks to the dplyr package, group by activity and label and then summarize the variables with the mean function

For more informations, please read the script's comments
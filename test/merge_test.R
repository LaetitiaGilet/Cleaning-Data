# create a data frame with subjects identies

data_subject_test<-read.table("./test/subject_test.txt")


#data frame with all label activities
data_labels_test<-read.table("./test//y_test.txt")


# data frame with test set

data_test_set<-read.table("./test//X_test.txt")


result_test<-cbind(data_subject_test,data_labels_test,data_test_set)
# create a data frame with subjects identies

data_subject_train<-read.table("./train/subject_train.txt")


#data frame with all label activities
data_labels_train<-read.table("./train//y_train.txt")


# data frame with train set

data_train_set<-read.table("./train//X_train.txt")


result_train<-cbind(data_subject_train,data_labels_train,data_train_set)
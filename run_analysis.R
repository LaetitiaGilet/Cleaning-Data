## First we wil create a data framewith all test informations

# create a data frame with subjects identies

data_subject_test<-read.table("./test/subject_test.txt")


#data frame with all label activities
data_labels_test<-read.table("./test//y_test.txt")


# data frame with test set

data_test_set<-read.table("./test//X_test.txt")


result_test<-cbind(data_subject_test,data_labels_test,data_test_set)

## Then we will create a data   frame with all train informations

# create a data frame with subjects identies

data_subject_train<-read.table("./train/subject_train.txt")


#data frame with all label activities
data_labels_train<-read.table("./train//y_train.txt")


# data frame with train set

data_train_set<-read.table("./train//X_train.txt")


result_train<-cbind(data_subject_train,data_labels_train,data_train_set)

## now we can merge the result_test and result_train data frames

merge_test_train<-rbind(result_test,result_train)

## set column names with variables in features.txt

names<-read.table("./features.txt")

# select the 2nd column with variavle names

names<-names[,2]
names<-as.vector(names)
indice_mean<-grep("mean",names)
#create a vector title_column with all the titles which contains "mean"
column_title<-vector();id<-vector();label<-vector()
for (i in indice_mean)
{column_title <- c(column_title,names[i])}

indice_std<-grep("std",names)
#create a vector title_column with all the titles which contains "std"

for (i in indice_std)
{column_title <- c(column_title,names[i])}

all_indices<-c(indice_mean,indice_std)
all_indices<-sapply(all_indices,function(x) x+2) #add 2 because of id and label
merge_test_train<-merge_test_train[,c(1,2,all_indices)]

colnames(merge_test_train)<-c("id_subject","label",column_title)


## replace activiy labels

activity_labels<-read.table("./activity_labels.txt")
name_label<-as.vector(activity_labels[,2])





name_label<-
        sapply(merge_test_train$label, function (x) name_label[x])

merge_test_train$label<-name_label

## i load the dplyr package
library(dplyr)




new_merge_test_train<-merge_test_train

#I group the line of merge_test_tain by id_subject and label in a new data_frame
#then  I summarize the lines with the mean function
#I name the data_frame final_data

final_data<-new_merge_test_train %>% group_by(id_subject,label) %>% summarise_each(funs(mean))

#I write the result in a txt file
write.table(final_data,file="./tidy_data.txt",row.name=FALSE,sep=" ")





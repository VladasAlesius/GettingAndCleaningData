#The purpose of this script is to perform all the necessary steps 
#for Peer-graded Assignment: Getting and Cleaning Data Course Project


#Step 1: Merge the training and the test sets to create one data set
#For this step, many intermediate steps will be taken
#Please see descriptions before each

#Features names are extracted from "features.txt" file
features<-read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt")

#Raw test data is extracted
xtest<-read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")

#Data for numbers of subjects in test part is extracted
testsubject<-read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")

#Data for numbers of activities in test part is extracted
testactivities<-read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")

#Subject number array, activity name array, and raw test data are merged into a new data frame
testdata<-data.frame(testsubject[,1],testactivities[,1],xtest)

#Assign names to columns in "testdata" data frame
colnames(testdata)<-c("subject","activity",as.character(features[,2]))
colSums(testdata)

#Raw train data is extracted
xtrain<-read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")

#Data for numbers of subjects in "train" part is extracted
trainsubject<-read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")

#Data for numbers of activities in train part is extracted
trainactivities<-read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")

#Subject number array, activity name array, and raw train data are merged into a new data frame
traindata<-data.frame(trainsubject[,1],trainactivities[,1],xtrain)

#Assign names to columns
colnames(traindata)<-c("subject","activity",as.character(features[,2]))

#Finally, "train" and "test" datasets are merged using "rbind" function

fulldata<-rbind(traindata,testdata)


#Step 2: Extract only the measurements on the mean and standard deviation for each measurement

#This is done finding column names with respective tokens
meancol<-grep("mean()",colnames(fulldata),fixed=TRUE)
stdcol<-grep("std()",colnames(fulldata),fixed=TRUE)

#After that, these columns are saved into a separate data frame
meanstddata<-fulldata[,c(1,2,meancol,stdcol)]


#Step 3: Use descriptive activity names to name the activities in the data set

#Activity labels data frame is extracted from "activity_labels.txt" file
activitylabels<-read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt")

#Activity names are adjusted in the new Activity labels vector
activitylabels2<-gsub("_","",tolower(activitylabels[,2]))

#A variable of Activities number is created, will be used later
len<-length(activitylabels2)

#A new character array for meaningful names of activities is created
#and respective names are inserted with "for" loop

for(i in 1:len){
    meanstddata[which(meanstddata[,2]==i),2] <- as.character(activitylabels2[i])
}


#Step 4: Appropriately label the data set with descriptive variable names

#An additional variable of column names is created for further actions
cols<-colnames(meanstddata)

#Variable names are changed into meaningful ones
#Abbreviations are changed for full words
#Duplicates are corrected into single words
#Non-alphabetic and non-numeric characters are omitted
#Names are converted to lower case
cols<-gsub("BodyBody","Body",cols)
cols<-gsub("^t","time",cols)
cols<-gsub("^f","frequency",cols)
cols<-gsub("Acc","acceleration",cols)
cols<-gsub("Gyro","gyroscope",cols)
cols<-gsub("Mag","magnitude",cols)
cols<-gsub("[^[:alnum:] ]","",cols)
cols<-tolower(cols)
colnames(meanstddata)<-cols


#Step 5: create a tidy data set with the average of each variable for each activity and each subject
#Function "recast" from "reshape2" package can be used instead of both "melt" and "dcast" functions
library(reshape2)
finaldataset<-recast(meanstddata,subject+activity~...,mean,id.var=c("subject","activity"))

#Final data set is exported to a separate file
write.table(finaldataset,file="finaldataset.txt",row.name=FALSE)






# Set environment
setwd("~/GetCleanData/Project/GetCleanData")
# Read into a DF the file with the field names
fieldnames<-read.table("features.txt",sep=" ",col.names=c("ColNum","FieldName"))
# Convert the fieldnames DF 2nd column into a names vector
namesvector<-as.vector(fieldnames$FieldName)
# Now load both train and test DFs
trainDF<-read.table("train//X_train.txt",col.names=namesvector)
testDF<-read.table("test//X_test.txt",col.names=namesvector)

# Next step is the merge, for that rbind is used.
fullDF<-rbind(trainDF,testDF)
# Create a vector of the relevant fields
relevantFields<-c(1, 2, 3, 4, 5, 6, 41, 42, 43, 44, 45, 46, 81, 82, 83, 84, 85, 86, 121, 122, 123, 124, 125, 126, 161, 162, 163, 164, 165, 166, 201, 202, 214, 215, 227, 228, 240, 241, 253, 254, 266, 267, 268, 269, 270, 271, 294, 295, 296, 345, 346, 347, 348, 349, 350, 373, 374, 375, 424, 425, 426, 427, 428, 429, 452, 453, 454, 503, 504, 513, 516, 517, 526, 529, 530, 539, 542, 543, 552)
# Select relevant fields from full DF
relevantData<-fullDF[relevantFields]
# and finally the tidy dataset of averages, saved into a file
relDFmeans<-colMeans(relevantData,na.rm=T)
write(relDFmeans,file="independentDS.txt")

                    

                  
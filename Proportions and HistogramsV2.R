#Part C
#1. read .csv file containing 4 columns of numbers
#2. convert columns to proportions (ie. divide each number by total for each column)
#3. create 4-panel graph containing histograms for each of the 4 columns
#4. output figure to pdf file

# read csv. file using created sample data
getwd()
mydata<-read.csv("sampledata.csv", header=TRUE)
mydata
names(mydata)
class("X")
str(mydata)
genres<-mydata$X
print(genres)
attach(mydata)
genres<-as.factor(genres)
class(genres)
print(mydata)

#Convert to proportions
points1<-(books[genres=="data1"])
points2<-(books[genres=="data2"])
points3<-(books[genres=="data3"])
points4<-(books[genres=="data4"])

total1<-sum(books[genres=="data1"])
total2<-sum(books[genres =="data2"])
total3<-sum(books[genres =="data3"])
total4<-sum(books[genres=="data4"])

data1<-points1/total1
data2<-points2/total2
data3<-points3/total3
data4<-points4/total4
#create list of results aa new column in dataframe
propdata<-c(data1, data2, data3, data4)
print(propdata)
mydataframe<-data.frame(mydata)
mydataframe$proportions<-propdata
mydataframe
names(mydataframe)

rbind(data1, data2, data3, data4)
print(propdata)
str(propdata)

#Open pdf file to save figure in
pdf("SampleDataPlot.pdf", width=10, height=10)

#Plot histograms on 2x2 panel and save to pdf file
library(ggplot2)
ggplot(data=mydataframe, aes(x=proportions, fill=X))+ 
  geom_histogram(colour="black", bins=20) +
  facet_wrap(~X) + ggtitle("Histograms of Sample Data")
dev.off()

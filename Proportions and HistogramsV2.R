#Part C
#1. read .csv file containing 4 columns of numbers
#2. convert columns to proportions (ie. divide each number by total for each column)
#3. create 4-panel graph containing histograms for each of the 4 columns
#4. output figure to pdf file

# read csv. file using created sample data
install.packages("tidyr")
library(tidyr)
getwd()
mydata<-read.csv("Psuedodata.csv", header=TRUE, sep=",")
mydata

names(mydata)
class("Bases..A..G..C..T")
str(mydata)
#sepearte column values
sepmydata<-separate(mydata,'Bases..A..G..C..T.', c("A","G","C","T"))
sepmydata
names(sepmydata)
#Create variable for each base column
baseA<-sepmydata$A
intA<-as.integer(baseA)
baseG<-sepmydata$G
intG<-as.integer(baseG)
baseC<-sepmydata$C
intC<-as.integer(baseC)
baseT<-sepmydata$T
intT<-as.integer(baseT)
bases=c(baseA, baseG, baseC, baseT)
attach(sepmydata) #attach data 
df<-data.frame(sepmydata)
#Calculate proportions
#find sum of each column
totalA<-sum(intA)
totalG<-sum(intG)
totalC<-sum(intC)
totalT<-sum(intT)
#calculate proportions
propA<-intA/totalA
propG<-intG/totalG
propC<-intC/totalC
propT<-intT/totalT

df #current data
library(dplyr)
library(grid)
baseprop<-df %>% mutate(A=propA, G=propG, C=propC, T=propT)
baseprop

#histograms of proportion data
library(ggplot2)
histA<-ggplot(data=baseprop, aes(x=A)) + geom_histogram(colour="grey", fill="#0072b2") + ylab("Count") + xlab("Nucleotide A")
histG<-ggplot(data=df, aes(x=propG)) + geom_histogram(colour="grey", fill="#f0e442") + ylab("Count") + xlab("Nucleotide G")
histC<-ggplot(data=df, aes(x=propC)) + geom_histogram(colour="grey", fill="#009E73") + ylab("Count") + xlab("Nucleotide C")
histT<-ggplot(data=df, aes(x=propT)) + geom_histogram(colour="grey", fill="#d55e00") + ylab("Count") + xlab("Nucleotide T")

#Open pdf file to save figure in 2x2 format
install.packages("ggpubr")
library(ggpubr)
pdf("DataPlot.pdf", width=10, height=10)
  ggarrange(histA, histG, histC, histT,
    ncol=2, nrow=2)
dev.off()

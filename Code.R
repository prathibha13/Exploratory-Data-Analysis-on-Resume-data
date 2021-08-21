library(dplyr)
library(tidyr)
library(tidyverse)
library(ggplot2)
library(corrplot)
library(Hmisc)
library(PerformanceAnalytics)
#---------------------------------import dataset--------------------------------------------------------

Datafinal=read.csv("C:/Users/prathibha k s/OneDrive/Desktop/report 1p2/ResumeNames.csv")# has yes=1 and no =0

Datafinal1=read.csv("C:/Users/prathibha k s/OneDrive/Desktop/report 1p2/ResumeNames1.csv") 
#-----------------------------------pre-requisite analysis--------------------------------------------------

#to find if there are missing values
which(is.na(Datafinal))

#finding the summary of the dataset
summary(Datafinal)

#to visualize the 1st 5 rows of the datset
head(Datafinal)

#to find the datatypes of different variables
str(Datafinal)


# checking if any person with low quality got call
callback <- Datafinal %>% filter(call==1,quality=='high')
callback1 <-  Datafinal %>% filter(call==1,quality=='low')

# checking the number of males and female who got a call
call<-Datafinal %>% filter(call=="yes")
female<-Datafinal %>% filter(call==1,gender=='female')
male<-callback %>% filter(call==1,gender=='male')

# analysis of resume and requirements  
resreq<- call %>% select(computer,reqcomp,school,reqeduc)
resreq

# ------------------------------------------Analysis----------------------------------------------------- 

#plotting a bar graph to visualize the number of males and female who got a call 
bar <- table(call$gender)
barplot(bar,
        xlab= "Gender",
        ylab= "Got call back",
        main= "Analysis of Call backs based on Gender",
        col=  c("female" = "springgreen3", "male" =  "sienna1"),
        border = "black")

#bar
bar <- table(Datafinal$wanted)
barplot(bar,
        xlab= "Position Wanted",
        ylab= "Frequency",
        main= "Analysis of position requirement by employees",
        col=  c("darkcyan","darkolivegreen3","forestgreen","goldenrod3","deeppink3","lightcoral"),
        border = "black")


#histogram to visualize the number of call
hist(call$experience,
     xlab="Experience",
     main="Call back based on Experience",
     breaks = 12,
     col="lightseagreen",
     border="black",
     labels=T,
     prob=T)
lines(density(call$experience),col="black",lwd=5)

#correlation matrix
  mydata <- Datafinal %>% select(call,honors,volunteer,military,holes,school,computer,special,college)
  mydata.rcorr = rcorr(as.matrix(mydata))
  mydata.coeff = mydata.rcorr$r
  corrplot(mydata.coeff,method = "number", bg="slategray")
  chart.Correlation(mydata, histogram=TRUE, pch=19)
  
#chi-square test
  table(Datafinal1$call,Datafinal1$ethnicity)
  ftable(Datafinal1[c("call","experience","jobs")])
  
  #chi-square test for ethnicity and call
  chisq.test(table(Datafinal1$call,Datafinal1$ethnicity), correct = FALSE)  
  summary(table(Datafinal1$call,Datafinal1$ethnicity))
  
  #chi-square test for city and call
  chisq.test(table(Datafinal1$call,Datafinal1$city), correct = FALSE)  
  summary(table(Datafinal1$call,Datafinal1$city))
  
#box plot
  boxplot(Datafinal$jobs,data=Datafinal,
          xlab="Jobs",
          main="Boxplot of jobs",
          cex=1.5, #magnification
          pch=18, #Try like 3 different from 1 to 20 numbers for this argument.
          col="lightpink2",
          border="darkblue") 

#bar
  bar <- table(Datafinal$wanted)
  barplot(bar,
          xlab= "Position Wanted",
          ylab= "Frequency",
          main= "Analysis of position requirement by employees",
          col=  c("darkcyan","darkolivegreen3","forestgreen","goldenrod3","deeppink3","lightcoral"),
          border = "black")






    
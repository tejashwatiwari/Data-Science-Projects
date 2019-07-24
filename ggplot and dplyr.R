housedata=read.csv(file.choose(),sep=',',header=T,stringsAsFactors = F)
hist(housedata$Home.Value)

library(ggplot2)
ggplot(housedata,aes(x=Home.Value))+geom_histogram()
library(dplyr)
ggplot(filter(housedata,housedata$State%in%c("MA","TX")),aes(x=Date,y=Home.Value,color=State))+geom_point()
View(housedata)
#-----------Text chart--------------------------------------
ggplot(housedata,aes(x=log(Land.Value),y=Structure.Cost))+geom_text(aes(label=State),size=3)
ggplot(filter(housedata,housedata$State%in%c("MA","TX")),aes(x=Date,y=Home.Value,color=State))+geom_bar(stat="Identity")

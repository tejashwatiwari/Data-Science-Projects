#subset(datasetname, rowcondition, columns)

subset(Titanic_Dataset,Survived==1,)
subset(Titanic_Dataset,Survived==1,select=c(Age,Sex))
subset(Titanic_Dataset,Survived==1 & Sex=='male')
(nrow(subset(Titanic_Dataset,Survived==1 & Sex=='male')) / nrow(Titanic_Dataset)  *100 #percentage of male survived

nrow(subset(Titanic_Dataset,Survived==1 & Sex=='female')) / nrow(subset(Titanic_Dataset, Sex=='female'))*100 #percentage of female survived out of total females
nrow(subset(Titanic_Dataset,Survived==1 & Sex=='male')) / nrow(subset(Titanic_Dataset, Sex=='male'))  *100

#find which class of passengers have given preference for survival
nrow(subset(Titanic_Dataset,Survived==1 & Pclass==3)) / nrow(subset(Titanic_Dataset, Pclass==3))*100
nrow(subset(Titanic_Dataset,Survived==1 & Pclass==2))/ nrow(subset(Titanic_Dataset, Pclass==2))*100
nrow(subset(Titanic_Dataset,Survived==1 & Pclass==1))/ nrow(subset(Titanic_Dataset, Pclass==1))*100

for(i in 1: max(Titanic_Dataset$Pclass)){
  print(nrow(subset(Titanic_Dataset,Survived==1 & Pclass==i))/ nrow(subset(Titanic_Dataset, Pclass==i))*100)
}

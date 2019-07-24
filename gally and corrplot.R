cars
str(cars)
cor(cars)
mtcars
summary(cars)
corcar=cor(cars$speed,cars$dist)
library(GGally)
ggpairs(cars)
corplot(cars)
library(corrplot)
corrplot(cor(cars))
par(mfrow=c(1,2))
ggpairs(cars)
corrplot(cor(cars))
scatter.smooth(cars$speed,cars$dist,name="Dist~Speed")
par(mfrow=c(1,2)) #showing more than 1 graph in a screen
boxplot(cars$speed)
boxplot(cars$dist)
# Outlier is a data that lies outside 1.5,i2r(inter quadratile range); iqr=75th percentile-25th percentile or 3rd quadratile - 1st quadratila
carmodel=lm(dist~speed,data=cars)
summary(carmodel)
set.seed(6234)
traincarin=sample(1:nrow(cars),0.8*nrow(cars))

traincarin
traincar=cars[traincarin, ]
testcar=cars[-traincarin,]
lmmadl=lm(dist~speed,data=traincar)
lmpred=predict(lmmadl,testcar)
check=data.frame(lmpred,testcar$dist)
cor(check)

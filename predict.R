#correlation
trees
str(trees)
summary(trees)
cor(trees$Girth,trees$Height)
cor(trees$Height,trees$Volume)
cor(trees$Girth,trees$Volume)
cor.test(trees)

ggpairs(data=trees,column=1:3)

trees.cor=cor(trees)
trees.cor
corrplot(trees.cor)


mtcars.cor=cor(mtcars)
corrplot(mtcars.cor)
ggpairs(mtcars)

model=lm(Volume~Girth, data=trees)
model
summary(model)
plot(model,xlabs="Girth",ylabs="Volume")
abline(h=0,lty=2)

plot(trees$Girth,trees$Volume)
abline(model)

summary(abline)
summary(model)

ggplot(data=trees,aes(x=Girth,y=Volume))+geom_point()
      +stat_smooth(method="lm",col="dodgerblue3")
      +theme(panel.background = element_rect(fill="white"),
      axis.line.x = element_line()+
      axis.line.y=element_line())+ggtitle("Linear Mode")

predict(model,data.frame(Girth=18.2))

p1=predict(model,data.frame(Girth=18))

model1=lm(trees$Volume~trees$Girth+trees$Height)
p2=predict(model1,data.frame(Girth=18,Height=72))

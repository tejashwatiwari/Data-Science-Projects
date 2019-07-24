help()
apropos("lm") #shows all the parameters in which lm function can work
apropos("cor") 
library(MASS)  #USED to attach a package
demo(package=.packages(all.available = T))  #description of packages that we have in r studio

args(lm) #tells us about the arguments which can be passes above any function

x=c(20,20,67,21,32,9)
abs(x)
sqrt(16)
ceiling(4.482)
floor(2.25)
trunc(5.99)
round(x,digits =x)
round(6.442, digits=2)
sin(30)
tan(30)
log10(20)
x='abcdef' #default index 1, prints akk the strings in the range
substr(x,2,4)

grep("A",c("b","A","a"),fixed=T)  #it checks if the keyword we are searching is present or not and gives location
#sub(pattern, replacement,x,ignore.case = F,fixed=F)

sub("\\s",".","Hello There!")
paste("todaydate is",date())

mean(x,na.rm=F)
sd(x)
median(x)
quantile(x,c(.3,.84))
range(x)
sum(x)
x
y=seq(2,100,5)


learnpower=function(x,y) {
  result=x^y
  print(paste(x,"raised to power",y,"is",result))
}
learnpower(4,8)

####################
squarefunc=function(a){
  for(i in 1:a){
    b=i^2
    print(b)
  }
}
squarefunc(7)
####################
#WAP to create a function that will find greater number out of two numbers


numbergreater=function(m,n)
if(m>n){
  print("M is greater")
}else{
  print("N is greater")
}
numbergreater(40,80)

#wap to create a function in which when the name of attrivute of mtcars is passed then it would print data for its attribute

functest=function(x){
  attach(mtcars)
  View(x)
}
functest(mpg)


#############
#from the dataset of mtcars, from the cars having mileage above 20 will be categorized as high mileage cars and rest will be low mileage cars


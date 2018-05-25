data("ToothGrowth")

head(ToothGrowth)

my_data <- ToothGrowth
#http://www.sthda.com/english/wiki/qq-plots-quantile-quantile-plots-r-base-graphs
#The R base functions qqnorm() and qqplot() can be used to produce quantile-quantile plots:

#qqnorm(): produces a normal QQ plot of the variable-it assessesm whether or not the data set is
#approximately normally distributed.The data are plotted against a theoritical normal distribution
#in such a way that the points should form an approximate straight line.
#Departures from the straight line indicate departures from normality

#qqline(): adds a reference line-this is the straight line moje i qqplot(x,y)


qqnorm(my_data$len, pch = 1, frame = FALSE)
qqline(my_data$len, col = "steelblue", lwd = 2)
#As all the points fall approximately along this reference line, we can assume normality.
y <- rnorm(20)*4
y
qqnorm(y); qqline(y, col = 2,lwd=2,lty=2)

y <- rbinom(2000,size=10,prob=1/10)
qqplot(x,y); qqline(y, col = 2,lwd=2,lty=2)

y <- rbinom(2000,size=10,prob=1/2)
qqplot(x,y); qqline(y, col = 2,lwd=2,lty=2)


############################# prop.test()

###########################
Suppose that I have two approaches to a particular problem. Approach A is observed to succeed 685 times out of 1347 attempts. Approach B is observed to succeed 2100 times out of 3748 attempts. I want to see if Approach B is preferable to Approach A.

In R I run:
  
  prop.test(c(2100,685), c(3748,1347), alternative="greater", correct=FALSE)
and I get:
  
  data:  c(2100, 685) out of c(3748, 1347)
X-squared = 10.7124, df = 1, p-value = 0.0005321
alternative hypothesis: greater
95 percent confidence interval:
  0.02568765 1.00000000
sample estimates:
  prop 1    prop 2
0.5602988 0.5085375

does the line about the confidence interval 
mean that the "true" value of pB???pA lies in the interval (.02568765,1) -YES 


EXAMPLE 1
#IN THIS CASE WE ACCEPT THE NULL HYPOTHESIS
prop.test(c(15,25),c(100,100))
2-sample test for equality of proportions with continuity correction

data:  c(15, 25) out of c(100, 100)
X-squared = 2.5312, df = 1, p-value = 0.1116# > 0.05 this also means that the 2 proportions r equal
alternative hypothesis: two.sided
95 percent confidence interval:
  -0.22000271  0.02000271 #zero lies within the confidence interval -> the two proportions are equal
sample estimates:
  prop 1 prop 2 
0.15   0.25 





EXAMPLE 2https://www.youtube.com/watch?v=L9YDB1LRK5I
#IN THIS CASE WE REJECT THE NULL HYPOTHESIS
prop.test(c(45,66),c(100,110))#45 OT 100 -UPSEH I 66 OT 110 UPSEH.V TOZI SLUCHAI 45 out of 100 is statistically different from 66 out of 110

2-sample test for equality of proportions with continuity correction

data:  c(45, 66) out of c(100, 110)
X-squared = 4.1469, df = 1, p-value = 0.04171# < 0.05 -> are not euqal. 
alternative hypothesis: two.sided
95 percent confidence interval:
  -0.293295128 -0.006704872 #0ta ne leji v intervala -> the two proportions are not equal
sample estimates:
  prop 1 prop 2 
0.45   0.60 

##############################


#A Confidence Interval is a range of values we are fairly sure our true value lies in.
#https://www.mathsisfun.com/data/confidence-interval.html
res <- prop.test(x = c(490, 400), n = c(500, 500))
# Printing the results
res 

sexsmoke<-matrix(c(70,120,65,140),ncol=2,byrow=T)
rownames(sexsmoke)<-c("male","female")
colnames(sexsmoke)<-c("smoke","nosmoke")
prop.test(sexsmoke)
prop.test(c(70,65),c(190,205)) # identichno, no ot kude sa argumentite vuv 2riq vektor
prop.test(c(70,65),c(190,205),conf.level=0.99) #smqna na alpha
prop.test(c(70,65),c(190,205),c(0.33,0.33)) # predvaritelno zlaojeni proporcii



#########################     t.test()
https://www.youtube.com/watch?v=F2rakDKp5f4

#EXAMPLE 1
iris
t.test(iris$Petal.Width[iris$Species=="setosa"],iris$Petal.Width[iris$Species=="versicolor"])
#pvalue-calculates the probthat the two data sets come from the same probability distribution
Welch Two Sample t-test

data:  iris$Petal.Width[iris$Species == "setosa"] and iris$Petal.Width[iris$Species == "versicolor"]
t = -34.08, df = 74.755, p-value < 2.2e-16 # df-degree of freedom
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
  -1.143133 -1.016867 # zero doesn't lie in the interval->THET DON'T COME FROM THE SAME PROB DISTR
sample estimates:
  mean of x mean of y 
0.246     1.326 # the mean of setosa is 0.246


#EXAMPLE 2

mydata = c(5.2, 6.1, 7.3, 7.4, 7.6, 7.9, 8.1, 8.3, 8.5, 8.5, 8.7, 8.8, 8.8, 9.1,
           9.2, 9.4, 9.4, 9.8, 9.9, 10.2, 10.2, 10.8,
           11.2, 11.9,12.1, 13)
yourdata = c(5.3, 6.1, 6.3, 7.4, 7.6, 7.2, 8.1, 8.2, 8.5, 8.7, 8.7, 8.8, 8.9, 9.2,
             9.2, 9.4, 9.4, 9.8, 9.9, 10.2, 10.2, 10.8)
t.test(mydata,yourdata)

Welch Two Sample t-test

data:  mydata and yourdata
t = 1.2734, df = 45.848, p-value = 0.2093 # >0.05 -> I ACCEPT THE HYPOTHESIS
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
  -0.342621  1.522341 # ZERO LIES IN THE INTERVAL BUT I NEED MORE DATA , ZA CONCLUDE-NEM NESHTO T.K alternative hypothesis: true difference in means is not equal to 0, A TRQBVA DA BUDE
sample estimates:
  mean of x mean of y 
9.130769  8.540909 

#1 zad v tetradkata i drugo ?
library(MASS)
head(quine)
prop.test

table(quine$Eth, quine$Sex)
#kak opredelqme che e samo za jenite ?  table(quine$Eth, quine$Sex=='F')
prop.test(table(quine$Eth, quine$Sex), correct=FALSE) 

2-sample test for equality of proportions 
without continuity correction 

data:  table(quine$Eth, quine$Sex) 
X-squared = 0.0041, df = 1, p-value = 0.949 
alternative hypothesis: two.sided 
95 percent confidence interval: 
  -0.15642  0.16696 
sample estimates: 
  prop 1  prop 2 
0.55072 0.54545
#Answer
#The 95% confidence interval estimate of the difference between the female proportion of 
#Aboriginal students and the female proportion of Non-Aboriginal students is between -15.6% and 16.7%.



#2zad DA SE TESTVA NULEVATA HIPOTEZA.Our null hypothesis is that mu is equal t 170
x=c(170, 167, 174,
    179, 179, 156, 163, 156, 187, 156, 183, 179, 174, 179, 170, 156, 187, 179,
    183, 174, 187, 167, 159, 170, 179)
#A za alternativnite kak ???
t.test(x,mu=170,alternative = 'two.sided')

One Sample t-test

data:  x
t = 1.2218, df = 24, p-value = 0.2336
alternative hypothesis: true mean is not equal to 170
95 percent confidence interval:
  168.2633 176.7767
sample estimates:
  mean of x 
172.52 

#3zad ????
x=c(7.65, 7.60 ,7.65
    ,7.70, 7.55, 7.55, 7.40, 7.40, 7.50, 7.50)

t.test(x,mu < 7.5,alternative = 'two.sided')




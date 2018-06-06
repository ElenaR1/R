##########     HOMEWORK 1
#1 
func=function(k,n,p)
{
  a=rbinom(k,n,p)#We repeat the experiment (throwing a dice n times with a probability of success p) k times
  par(mfrow=c(1,2))#we can see 2 graphics at the same time
  barplot(table(a)/sum(table(a)))#in what percentage of the generated cases we have 0,1,2..n successes
  a2=dbinom(c(0:n),n,p)#theoritical probability of getting 0,1,2..n successes
  barplot(a2)
}
func(10000,5,1/6)

#Tests
#The more simulations(generating the experiment) we make the more the left graphics looks(approaches)
#like the right one
func(10,5,1/6)
func(100,5,1/6)
func(1000,5,1/6)
func(10000,5,1/6)
#As we increase the value of k the left graphics looks more like the right one
func(100000,5,1/6)

#In the case of even numbers
func(10,6,1/2)
func(100,6,1/2)
func(1000,6,1/2)
#Again we see the same thing - as we increase the number of simulations that we make
#the left graphics looks more like the right one
func(10000,6,1/2)




#1
b=rbinom(10,2,1/2) # vrushta 10 chisla i vsqko ot tqh pokazva kolko puti
#ot 2 hvurlqnie sme poluchili ezi. Ako pobtorq eksperimenta 1000,a ne 10 puti s2te grafiki shte se doblijat mnogo poveche
b
table(b)#pokazva vsqko ot chislata kolko puti se sreshta.Vrushta obekt ot klas table,vektor
#ot celochisledni stoinosti na obobshtenite dannu
sum(table(b))
table(b)/sum(table(b))# in what percentage of the generated cases we have 0,1,2..n successes 
par(mfrow=c(1,2))
barplot(table(b)/sum(table(b)))
b2=dbinom(c(0:2),2,1/2)#theoritical probability of getting 0,1,2..n successes ot 2 opita
#ot 2 hvurlqniq na moneta vuzmojnostitie sa ezi ezi , tura ezi, ezi tura, tura tura ->shans 
# 0 ezita e 0.25 (v sluchaq s tura tura), shans da imame 1 ezi -0.50, i shans za 2 zita - 0.25
b2
barplot(b2)


table(b)+2#operaciqta e v\hu vseki element ot tablicata




#2 The man successfully gets through the first three traffic lights without being stopped, threfore
#we should check the chance of getting 3 successes in 3 tries with a probability of 1-2/5.
dbinom(x=3,3,1-2/5)

#In the case in which the man goes through the first three traffic lights and 
#is stopped on the 4th.
dbinom(x=3,3,1-2/5)*2/5

#In the case in which the man goes through the first three traffic lights and 
#is not stopped on the 4th.
dbinom(x=3,3,1-2/5)*3/5

#As expected the sum of the last two gives the first one,because the first one includes both cases.



#3zad
dbinom(1,2,1/2)#theoritical probability of getting 1 ezi 2 hvurlqniq
#=
choose(2,1)*(1/2)^2

#shans da mi se padne 6ca ot 1 hvurlqne na zar
dbinom(1,1,1/6)
#shans da mi se padne 6ca ot 2 hvurlqniq na zar e 10/36-0.277 t.k imame (1,6),(2,6)...(5,6) i ot drugiq zar sushtyite kombinacii
dbinom(1,2,1/6)
#=
choose(10,1)*(1/6)^2

#2
dbinom(50,79,1/2)#veroqnostta da izvadq 50 klechkiot pravilnata kutiq, kato obhsto sum ivadila 79 klecki
#ili:
choose(79,50)*2^(21-100)#sushtoto
dbinom(29,79,1/2)#sshtoto reshenie t.k veroqnostta ni e simetrichna

#A cumulative sum is a sequence of partial sums of a given sequence. For example, the cumulative 
#sums of the sequence {a,b,c,...}, are  a, a+b, a+b+c, ...
#cumsum(1:10)
#[1]  1  3  6 10 15 21 28 36 45 55

#cbind(I = 0, X = rbind(a = 1, b = 1:3))  # use some names
#I      
#a 0 1 1 1
#b 0 1 2 3


N<-50 # number of matches
r<-0:50
u<-choose(2*N-r,N)*2^(r-2*N)# the probability of having r matches in the other box
#za gornoto kato 2rata zad ot 5-6 naprimer r=21 N=50,2*50-21=79,r-2*N=21-2*100
t<-cbind(r,u,cumsum(u))#we give the cumulatative distribution function as a sum of the probailities
#of being less than or equal to a given number using cumsum
t

  N=50
  r=21:23
 # r<-0:N
  u<-choose(2*N-r,N)*2^(r-2*N)# the probability of having r matches in the other box
  #za gornoto kato 2rata zad ot 5-6 naprimer r=21 N=50,2*50-21=79,r-2*N=21-2*100
  u
  t<-cbind(r,u,cumsum(u))#we give the cumulatative distribution function as a sum of the probailities
  #of being less than or equal to a given number using cumsum
  t
  
  t#predstavq cumulative distribution function t.k P(X<=2)=P(X=0)+P(X+1)+P(X=2),a v nashiq sluchai e 
  #za P(X=22)= P(X=21)+P(X=22), za P(X=23)=P(X=21)+P(X=22)+P(X=23)

  dbinom(50,79,1/2)#kogato r=21
  dbinom(50,78,1/2)#kogato r=22
  dbinom(50,77,1/2)#kogato r=23
  dbinom(50,(77:79),1/2)#
  
  
  
  
  # 4
  f=function(n){
    vector=c()
    
    for(i in 1 : n){
      v<-rnorm(7,60,5)#generating the times of life of the 7 independent systems of particles
      print(v)# 7 normalno razpredeleni velichini s ochakvane 60 i standartno otklonenie 5
      vector[i]<- sum(((v-mean(v))/5)^2)
    }
    return(vector)
  }
  sum(f(2)<7)/2
  
  sum(f(1000)<7) /1000
  
  s<-rnorm(3,60,5)
  s
  mean(s)
  s-mean(s)#ot vseki element na s izvajda mean(s)
  (s-mean(s))/5
  
  
  
  

  pnorm(84,72,15.2,lower.tail = F)
  qnorm(0.2149176,72,15.2,lower.tail = F)
  
  
  # 1 zad
  #but only "you cannot reject the hypothesis that the sample comes from a population which has
  #a normal distribution".
  #The null-hypothesis of this test is that the population is normally distributed. Thus,
  #on the one hand, if the p-value is less than the chosen alpha level, then the null hypothesis is 
  #rejected and there is evidence that the data tested are not from a normally distributed population. 
  #On the other hand, if the p-value is greater than the chosen alpha level, then the null hypothesis
  #that the data came from a normally distributed population can not be rejected 
  #a
  x<-c(6.96,7.14,7.46,7.67,6.03,9.3,6.71,6.3,8.24,9.6,5.47,6.47,6.81, 5.54,7.44,8.19,
       5.81,10.02,6.49,6.65,6.37,5.7,5.93,6.38,7.79, 8.75, 7.5,11.05)
  
  lx<-log(x) #we take the logarithms of the values in the vector x
  lx
  shapiro.test(lx) #using the shapiro test in order to see whether the values in lx are normally
  #distributed. The p-value of 0.265 is greater than 0.05 so we can conclude taht the logarithmic values
  #of x are normally distributed at 5% significance level.
  
  
  
  #b week 8 -3 zad
  m<-mean(lx) #we take the mean of lx
  s<-sd(lx) # we take the standard deviation of lx
  n<-length(lx) # we take the length of lx
  alpha<-0.05
  error<-qnorm(1-alpha/2)*s/sqrt(n) 
  ci<-c(m-error,m+error) # ci represents the confidence interval
  ci #every value between 1.899069 and 2.036259 is in the confidence interval
  
  lx[(lx>ci[1])&(lx<ci[2])] # shows the values in lx that fall into the range of the confidence interval
  
  #Our level of certainty about the true mean is 95% in predicting that the true mean is within
  #the interval between 4.12 and 5.88 assuming that the original random variable is normally 
  #distributed, and the samples are independent.
  
  #qnorm is the R function that calculates the inverse c. d. f. F-1 of the normal distribution 
  #The c. d. f. and the inverse c. d. f. are related by
  # p = F(x)
  #x = F-1(p)
  #So given a number p between zero and one, qnorm looks up the p-th quantile of the normal 
  #distribution. As with pnorm, optional arguments specify the mean and standard deviation of 
  #the distribution.
  
  #Example
  # Question: Suppose IQ scores are normally distributed with mean 100 and standard deviation 15.
  #What is the 95th percentile of the distribution of IQ scores?
  #Question Rephrased: What is F-1(0.95) when X has the N(100, 152) distribution?
  
  #Answer:
  qnorm(0.95, mean=100, sd=15)
  
  #3 zad
  #a
  data<-read.csv("http://www.math.bas.bg//statlab//tchorbadjieff//CZ_gas_prices.csv")
  y=data$Consumption
  x1<-data$Year
  x2<-data$Price_1
  x3<-data$Price_2
  x4<-data$Price_3
  x5<-data$Income
  x6<-data$HDD
  m<-lm(y~x1+x2+x3+x4+x5+x6) # we save the linear model into m Fit the model to the data by creating a formula and passing it to the lm function. 
  summary(m)# x1 and x2 are significant because their pvalue is less than 0.05. x3,x4,x5 and x6 are not
  #significant
  
  r=residuals(m)
  shapiro.test(r)
  
  
  #b
  x7<-log(x6)
  m1<-lm(y~x1+x2+x3+x4+x5+x7) # we save the linear model into m1
  summary(m1)# x1 and x2 are significant because their pvalue isless than 0.05. 
  
  r1=residuals(m1)
  shapiro.test(r1)
  
  mw=lm(y~x1+x2+x3+x5+x7) # we remove x4 because it is the least significant, so that we can create
  #an optimal model
  summary(mw) 
  step(m1)#it shows what has been removed on each step
  
  
  #3zad
  #In R, the lm(), or "linear model," function can be used to create a simple regression model.
  #The lm() function accepts a number of arguments ("Fitting Linear Models," n.d.). T
  #a
  data<-read.csv("http://www.math.bas.bg//statlab//tchorbadjieff//CZ_gas_prices.csv")
  y=data$Consumption
  x1<-data$Year
  x2<-data$Price_1
  x3<-data$Price_2
  x4<-data$Price_3
  x5<-data$Income
  x6<-data$HDD
  m<-lm(y~x1+x2+x3+x4+x5+x6) # we save the linear model into m.We fit a model to our data.
  summary(m)# . x1 and x2 are significant because their pvalue is less than 0.05. x3,x4,x5 and x6 are not
  #significant. More stars -> there exists a relation between the consumption and these datas with stars
  #pvalue-Probability the variable is NOT relevant. You want this number to be as small as possible. 
  
  r=residuals(m)
  shapiro.test(r)
  
  
  #b
  x7<-log(x6)
  m1<-lm(y~x1+x2+x3+x4+x5+x7) # we save the linear model into m1
  summary(m1)# x1 and x2 are significant because their pvalue isless than 0.05. 
  
  r1=residuals(m1)
  shapiro.test(r1)
  
  #Variable p-value	Probability the variable is NOT relevant
  
  mw=lm(y~x1+x2+x3+x5+x7) # we remove x4 because it is the least significant, so that we can create
  #an optimal model
  summary(mw) 
  step(m1)#it shows what has been removed on each step
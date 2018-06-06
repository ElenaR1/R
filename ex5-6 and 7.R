#dbinom - http://www.r-tutor.com/elementary-statistics/probability-distributions/binomial-distribution
#https://www.tutorialspoint.com/r/r_binomial_distribution.htm
x <- seq(0,50,by=1)
y <- dbinom(x,50,0.2)#veroqtnostta da imame x upseha ot 50 opita s veroqtnost 0.2
x
y
plot(x,y)
y <- dbinom(x,50,0.5)#veroqtnostta da imame x upseha ot 50 opita s veroqtnost 0.5; veroqnostta e nai-golqma pri x=25
plot(x,y)
sum(dbinom(0:50, size = 50, prob = 0.5))


#1
choose(47,3)/choose(52,4)
#=
(48/52)*(47/51)*(46/50)*(45/49)*(4/48)
#ili:
dnbinom(x = 4, size = 1, prob = 4/52)#shans da polucha 4 reazlichni ot aso karti predi 1voto aso
dgeom(x = 4, prob = 4/52)  


#2i3-tetr
#2
dbinom(50,79,1/2)#veroqnostta da izvadq 50 klechkiot pravilnata kutiq, kato obhsto sum ivadila 79 klecki
#ili:
choose(79,50)*2^(21-100)#sushtoto
dbinom(29,79,1/2)#sshtoto reshenie t.k veroqnostta ni e simetrichna

#3
dnbinom(1,2,1/2)#1 failute occurs before the 2nd success ?
#c(3:7)-2=[1,2,3,4,5]
dnbinom(c(3:7)-2,2,1/2)#smqta 1va chasta ot zadachata,imame 1ili2ili3ili4ili5 neuspeha predi 2roto ezi
dnbinom(1:5,2,1/2)#sushtoto kato gornoto
pnbinom(4,2,1/2,lower.tail = F)## ?
dnbinom(c(3:7)-2,2,2/5)#za 2roto izrechenie


sum(dnbinom(c(2:6)-2,2,1/2))
pnbinom(4,2,1/2)#0.890625
pnbinom(4,2,1/2,lower.tail = F)#v tetradkata pishe, za da presmetnem za 7 i poveche ??
qnbinom(0.890625,2,1/2)#4


#         dnbinom(Ð±Ñ.Ð½ÐµÑÑÐ¿ÐµÑÐ¸,  ÑÑÐ¿ÐµÑÐ¸,   prob{ÑÑÐ¿ÐµÑ})
plot(3:6, dnbinom(x = c(3:6)-2, size = 2, prob = 0.5), 
     col = "blue", ylim = c(0,0.5))                         #<=6
pnbinom(q = 6-2, size = 2, prob = 0.5, lower.tail = FALSE)  #>6, Ñ.Ðµ. >=7

lines(3:6,dnbinom(x = c(3:6)-2, size = 2, prob = 0.4),
      col = "red")                                          #<=6
pnbinom(q = 6-2, size = 2, prob = 0.4, lower.tail = FALSE)  #>6, Ñ.Ðµ. >=7

OR = dnbinom(x = c(3:6)-2, size = 2, prob = 0.5) / (1 - dnbinom(x = c(3:6)-2, size = 2, prob = 0.5))
OR


#4 v ot vankata !
pnbinom(x,3,3/10)#=0.1852

qnbinom(1-0.18522,3,7/10)#vrushtame obratnoto razpredelenie (neuspehite)
qnbinom(0.18522,3,3/10)#=3/10


#5
phyper(35,0.4*600000,0.6*600000,100)#0.1794489
pop <- rep(c(0,1),c(360000, 240000))# s 0 simulirame muje s 1 jeni
length(pop)
sample(pop,100)#vzima random 100 choveka ot pop
sums<-sapply(1:1000,function(x) sum(sample(pop,100)))#vzimame sumata ot tezi 100 choveka i t.k
#mujete sa 0li, sumata shte ni dade broq na jenite,i tova go pravi 1000 puti
sums
sum(sums<=35)/1000#vzima tezi koito sa <35 i delim na 1000(broi opiti) za da vzemem procent 
#i sikame opita da e blizo do 0.1794-poluchenoto ot phyper

#sample- randomly reorders the elements passed as the first argument. This means that
#the default size is the size of the passed array.
print(sample(c(2,5,3), size=3, replace=FALSE))
print(sample(c(2,5,3), size=3, replace=TRUE))#If this is true a sample may contain an element several 
#times while another element might not occur at all.
rep(c(0,1),c(2,3))#1viq element go povtarq 2 puti, a 2riq 3 puti

#6
dpois(2,lambda=10)
ppois(2,10)-dpois(2,10)
#=
ppois(1,10)#0ili 1 obajdaniq
ppois(1,10,lower.tail = F)#lower.tail	logical; if TRUE (default), probabilities are P[X < x], otherwise, P[X > x].



                               #######   week7      ############
x=runif(100,0,2)#100 random chisla mejdu 0 i 2 
x
hist(x,probability=TRUE,col=gray(.9),main="uniform on [0,2]")#????
curve(dunif(x,0,2),add=T)
x1=runif(7,0,2)#100 random chisla mejdu 0 i 2 
x1
hist(x1,probability=TRUE,col=gray(.9),main="uniform on [0,2]")#????

#sample- randomly reorders the elements passed as the first argument. This means that
#the default size is the size of the passed array.
#If replace is true a sample may contain an element several 
#times while another element might not occur at all.
sample(1:10,10)
sample(1:10,10,replace=TRUE)


                         ##########   UNIF      #########
runif(10, min=1, max=10) 
dunif(10, min=1, max=10)#dunif gives the density #the probability is computed as f(x) = 1 / (max-min)=1/10-1=0.111
sum(dunif(0:10, min=1, max=10) )
punif(10, min=1, max=10) # punif gives the distribution function, 
qunif(1, min=1, max=10) #10 qunif gives the quantile function, 



                       ##########    GEOM   #########
#Example1: if we roll a fair die, and count the number of rolls before the first 6 appears,
#we have a geometric distribution with p=1/6
#So in R if roll the die 3 times we have:
rgeom(3, 1/6)# VRUSHTA 3 chisla x y z i znachi che We had x/y/z failures before the first 6 appeared.


#Example2: Veronica is rolling a die. Calculate the probability of getting a 3 on the 8th roll. 
#This statement is traduced in R as the probability of 7 failures before the first 3 appears.
#For answering this question we use dgeom().
dgeom(7, 1/6)
dnbinom(7,1,1/6)#7 neuspeha predi da se poqvi 3ka za purvi put 

####    E(X) #####
#The probability of getting a 3 on the 8th roll is 0.04651 which is very low. Let's see what 
#is the expected number of rolls before a 3 comes out. For this we'll use the mean of a geometric 
#distribution 1???p/p
p = 1/6  # probability of success
q = 1 - p  # probaility of failure
# Mean of geometric distribution
q/p #otg=5

#Example3: Lionel Messi scores 28% of his shots (2012/13 Spanish La Liga).

#a) What is the probability that Messi will not score a goal until his 7th try?
  
  p = 0.28  # probability of success
  # What's the probability of not scoring in the first 6 shots?
  dgeom(6, p)# The probability of not scoring until his 7th try is 0.03901
#b) What is the expected number of shots before he scores?
  
  p = 0.28  # probability of success
  q = 1 - p
  
  q/p #  2.571429 Lionel Messi scores a goal every 2.571 shots on average.
  
#c) What is the probability that the ???rst goal occurs in the  ???rst 5 shots?
  #=P(X???5)=P(X=0)+P(X=1)+P(X=2)+P(X=3)+P(X=4)
  sum(dgeom(0:4, 0.28)) #0.8065082
  pgeom(4, 0.28) #0.8065082
  qgeom(0.8065082,0.28) #4
  
#Primer
  Y=0:10
  plot(Y, dgeom(Y,0.6), type="h", ylim=c(0,1), main="Geometric distribution
for p=0.6", ylab="P(Y=Y)", xlab="Y=Number of failures before rst success")
  
                        ############# EXPONENTIAL DISTRIBUTION ###################
  Problem
  #Suppose the mean checkout time of a supermarket cashier is three minutes. Find the probability 
  #of a customer checkout being completed by the cashier in less than two minutes.
  
  #Solution
  #The checkout processing rate is equals to one divided by the mean checkout completion time. 
  #Hence the processing rate is 1/3 checkouts per minute. We then apply the function pexp of the 
  #exponential distribution with rate=1/3.
  
   pexp(2, rate=1/3) #The probability of finishing a checkout in under two minutes by the cashier is 48.7%
  
   #???????????? ???? week 7 
   x=rexp(100,1/2500)
   x
   hist(x,probability=TRUE,col=gray(.9),main="exponential mean=2500")
   curve(dexp(x,1/2500),add=T)   

   
                          ############ NORMAL DISTRIBUTION ###########
   #dnorm is the R function that calculates the p. d. f. f of the normal distribution. As with
   #pnorm and qnorm, optional arguments specify the mean and standard deviation of the distribution.
   
   #There's not much need for this function in doing calculations, because you need to do
   #integrals to use any p. d. f., and R doesn't do integrals. In fact, there's not much use for the "d" function for any continuous distribution
   
   
  # Problem
   #Assume that the test scores of a college entrance exam fits a normal distribution. 
   #Furthermore, the mean test score is 72, and the standard deviation is 15.2. What is the
   #percentage of students scoring 84 or more in the exam?
     
  #   Solution
   #We apply the function pnorm of the normal distribution with mean 72 and standard deviation 
   #15.2. Since we are looking for the percentage of students scoring higher than 84, we are 
   #interested in the upper tail of the normal distribution.
   
    pnorm(84, mean=72, sd=15.2, lower.tail=FALSE)#The percentage of students scoring 84 or more
   #in the college entrance exam is 21.5%.
   
   
   #Example
   #Question: Suppose widgit weights produced at Acme Widgit Works have weights that are normally
   #distributed with mean 17.46 grams and variance 375.67 grams. What is the probability that a
   #randomly chosen widgit weighs more then 19 grams?
    # Question Rephrased: What is P(X > 19) when X has the N(17.46, 375.67) distribution?
     # Caution: R wants the s. d. as the parameter, not the variance. We'll need to take a square root!
   1 - pnorm(19, mean=17.46, sd=sqrt(375.67)) # ILI DOLNMOTO
   pnorm(19, mean=17.46, sd=sqrt(375.67),lower.tail = FALSE)
   
   
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
   
   #This generates 1000 i. i. d. normal random numbers (first line), plots their histogram 
   #(second line), and graphs the p. d. f. of the same normal distribution (third and forth lines).
   hist(x, probability=TRUE)
   xx <- seq(min(x), max(x), length=100)
   lines(xx, dnorm(xx, mean=100, sd=15))
   
  
   
   
###############################   HIST
library(MASS)
AirPassengers
hist(AirPassengers)
#on the y axis ???? koloko chesto ima mejdu 100 i 200 putnika li , ylim ?? , breaks-5 breakpoints
hist(AirPassengers, 
     main="Histogram for Air Passengers", 
     xlab="Passengers", 
     ylab="Frequency of passengers",
     border="blue", 
     col="green",
     xlim=c(100,700),
     las=1, 
     breaks=5)
This code computes a histogram of the data values from the dataset AirPassengers, gives it
"Histogram for Air Passengers" as title, labels the x-axis as "Passengers", gives a blue border
and a green color to the bins, while limiting the x-axis from 100 to 700, rotating the values
printed on the y-axis by 1 and changing the bin-width to 5.
hist(AirPassengers, 
     main="Histogram for Air Passengers", 
     xlab="Passengers", 
     border="blue", 
     col="green", 
     xlim=c(100,700), 
     las=1, 
     breaks=5, 
     prob = TRUE)
lines(density(AirPassengers))
#########################################################################






Y=0:10
plot(Y, dgeom(Y,0.6), type="h", ylim=c(0,1), main="Geometric distribution
     for p=0.6", ylab="P(Y=Y)", xlab="Y=Number of failures before rst success")

x=rexp(100,1/2500)
hist(x,probability=TRUE,col=gray(.9),main="exponential mean=2500")
curve(dexp(x,1/2500),add=T)


#1
a<-c(1/3,1/2,2/3)
dgeom(c(1:10),p=1/3)# kakuv e shansut da imash 1,2,3..10 neuspeha predi purvoto vkarvane
plot(dgeom(c(1:10),p=1/3),ylim = c(0,0.7))
lines(dgeom(c(1:10),p=1/2),col="red")#ot 1 do 10 t.k shte pravim 10 opita
lines(dgeom(c(1:10),p=2/3),col="blue")#zashto e po-nisko ot pri 1/3


#2
#moe: the mean time is 5 mins -> lambda =1/5
pexp(30,1/5) # tova e p(k<=30) veroqtnostta da e <= 30 min
dexp(5,1/5)# ???????
dexp(c(1:30),1/5)# vremeto za remonta na avtomobila e 1,2,3,..30 min
plot(dexp(c(1:30),1/5))#zashto pri 0 e nai-visoko

#v
plot(x = 1:30, y = dexp(x = 1:30, rate = 1/5), 
     main = "Exponentila with mu = 5", ylab = "P(X = x)")
#try with pexp(q = 30, rate = 1/5):
plot(x = 1:30, y = pexp(q = 1:30, rate = 1/5), 
     main = "Exponentila with mu = 5", ylab = "P(X = x)")


#3
Y=rnorm(50,5,sqrt(5))
hist(Y)
z=(Y-mean(Y))/sd(Y)
hist(z)

p<-rnorm(3,5,5)
p
mean(p)
sd(p)
z<-(p-mean(p))/sd(p)

#PRIMER NO NE TRUGVA
series1 <- c(2.02, 2.33, 2.99, 6.85, 9.20, 8.80, 7.50, 6.00, 5.85, 3.85, 4.85, 3.85, 2.22, 1.45, 1.34) 
series2 <- c(-0.12, -0.16, -0.13,  0.28,  0.37,  0.39,  0.18,  0.09,  0.15, -0.06,  0.06, -0.07, -0.13, -0.18, -0.26) 
znorm <- function(ts){
  ts.mean <- mean(ts)
  ts.dev <- sd(ts)
  (ts - ts.mean)/ts.dev
}

s1_znorm=znorm(series1)
s2_znorm=znorm(series2)

plot(series1)
lines(series2,col="red")#ot 1 do 10 t.k shte pravim 10 opita
lines(dgeom(c(1:10),p=2/3),col="blue")



#4+VUPROSI V TETR
> pnorm(0.92,0,sqrt(1),lower.tail = FALSE)  
=   pnorm(0.5,0,sqrt(1))#imat ednakva plosht
pnorm(-0.5,lower.tail=F)

#1-pnorm(-0.64)-pnorm(0.43,lower.tail = F)   =  MAI E GRSHNO
  pnorm(-0.64,lower.tail = F)-pnorm(0.43,lower.tail = F)
  
#drug variant na gornoto MAI E GRESHNO
  1-pnorm(-0.64, lower.tail=T)-pnorm(0.43,lower.tail = F)#ima i dr variant

# V
  pnorm(0.43) - pnorm(-0.64)
  1 - pnorm(-0.64) - pnorm(0.43, lower.tail = FALSE)
  
  
  
  
#5
pnorm(6.2,mean=3,sd=sqrt(4))

#6 ne trqbva li da e sqrt(500) - ne t.k standartnoto otklonenie(sd) e 500, a variance(=sd^2)
pnorm(3100,3500,500)
pnorm(-4/5) 
#7
dn=dnorm(80-78,10*10+13*13)
z=(dn-2)/sqrt(264)

pnorm(0,2,sqrt(269))

plot(dnorm(0:200,80,10))
lines(dnorm(0:200,78,13), col = "red")
pnorm(0,80-78,sqrt(10^2+13^2), lower.tail = FALSE) 
pnorm( (80-78)/sqrt(10^2+13^2) )                    


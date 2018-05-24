https://www.theanalysisfactor.com/?s=R+is+not+so+hard

                           ################### WEEK 2 ######################
 counts <- table(mtcars$gear)
barplot(counts, main="Car Distribution", 
        xlab="Number of Gears")


https://www.theanalysisfactor.com/r-11-bar-charts/ !!!!!!!!!!!!!!!!!!!!!!
H <- c(2,3,3,3,4,5,5,5,5,6)
counts <- table(H)
counts#POKAZVA PO KOLKO POUTI SE SRESHTA VSQKA CIFRA

barplot(counts)#pokazva kolko chesto se sreshtat cifrite
barplot(H)#ot tova nqma smiusl zashtoto ne pokazva kolko chesto se sreshtat cifrite


                          
                           
                           
                           
#1zad ??
x = list(1, 2, 3, 4)
x2 = list(1:4)
x
x2

#2zad
library(MASS)
head(mtcars)
mtcars[mtcars$cyl==8,]#za kakvo ni e zapetaqta
mtcars[mtcars["cyl"]==8,]
mtcars$cyl==8  #vrushta logicheski vector

#2.2
mtcars[mtcars$gear==5,]
mtcars[mtcars$gear==5,]$mpg
mean(mtcars[mtcars$gear==5,]$mpg) #sredno aritmetichnoto
median(mtcars[mtcars$gear==5,]$mpg)


#3zad
library(MASS)
head(survey)
t=table(survey$Sex,survey$Smoke)
t
barplot(t)
t1=table(survey[,c("Sex","Smoke")])#vzimame kolonite pri vektorite "Sex"&"Smoke"
t1
barplot(table(survey[,c("Sex","Smoke")]))

#3.2
table(survey$Smoke)
t=table(survey$Smoke)
prop.table(t)  # vsqko delim na obshtata suma-236
pie(t)#edin i sushti rezultat s dolnoto
pie(prop.table(t))


#3.3
table(survey$Pulse)
t1=table(survey$Pulse)
t1
prop.table(t1) 
hist(survey$Pulse) # y=frequency
hist(t1)#razlichno ot gornotot, ne trqbva taka
hist(survey$Pulse,probability = TRUE) #y=density
plot(survey$Pulse)
plot(t1)


#3.4
table(survey$Age)
t2=table(survey$Age)
prop.table(t2) 
barplot(t2)
                                             WEEK 3
                                             
#1zad
library(MASS)
head(mtcars)
mtcars#???????????? ???? ?? 8 ??????????????????
a=mtcars[mtcars$cyl==6,]#???????? ?? 6 ?????????????????? ?
a=a[a$gear==4,]
a

b=mtcars[mtcars$gear==4,]
b
b=b[b$cyl==6,]#???????? ?? 6 ?????????????????? ?
b


subtable=mtcars[mtcars$cyl==6&mtcars$gear==4,]
subtable
labels(subtable)[1]
intersect(labels(subtable)[1],c("Merc 280","Merc 280"))#ne raboti
intersect(labels(subtable)[[1]],c("Merc 280","Merc 280"))# raboti

mtcars[mtcars$gear==4,]
subtable=mtcars[mtcars$gear==4,]
subtable
labels(subtable)
labels(subtable)[1]
labels(subtable)[[1]]
intersect(labels(subtable)[[1]],c("Merc 280","Honda Civic"))# raboti

#2zad
dat=read.csv("http://www.math.bas.bg/statlab/tchorbadjieff/Shares_price_ts.csv")
dat
plot(as.POSIXct(dat$Timestamp),dat$Price)

dat$Timestamp
as.POSIXct(dat$Timestamp)
#2.2
dat$Timestamp=as.POSIXct()


                               WEEK 4

#1
price =read.csv("http://www.math.bas.bg/statlab/tchorbadjieff/Shares_price_ts.csv")
price

aggregate(price$Price, by = list(price$Volume, FUN = var))
          
          #2
          a = c(0, 1.5, 2)
          b = c(2, 0, 1.5)
          c = c(2, 1, 0.5)
          mass = c(2.5, 2.5, 5)#sum(m)=10
          t = matrix(c(a, b, c), 3, 3)
          t
          apply(t, 1, function(x, m)sum((x * m)/sum(m)), m = mass)#1.5 0.875, 1.125 , 1-po redovete
          #((0,2,2)*(2.5,2.5,5))/10+((1.5,0,1)*(2.5,2.5,5))/10+((2,1.5,0.5)*(2.5,2.5,5))/10=
          #=(2*2.5+2*5)/10=1.5-centura na masa na 1va chastica, (1.5*2.5+0+1*5)/10=8.75/10=0.875-centura na masa na 2ra chastica,...)


 #3v tetr ??dali ne rtqbva da sa razmeneni px i py, t.e px da sumata po redovetea py - po kolonite
          p=matrix(c(1/8,1/8,0,0,0,2/8,2/8,0,0,0,1/8,1/8),3,4,byrow=TRUE)
          p
          px=apply(p,2,sum)#sled kato 2riq argument e 2 znachi po kolonite,subira chislata v kolonata
          py=apply(p, 1, sum)
          px
          py
           
   #4 ???
         aggregate(mtcars,by=list(cyl=mtcars$cyl,gear=mtcars$gear),FUN=mean())
          
          
          
          #5
          a=read.csv("http://www.math.bas.bg/statlab/tchorbadjieff/merge1.dat",header=TRUE)
          a
          b=read.csv("http://www.math.bas.bg/statlab/tchorbadjieff/merge2.dat",header=TRUE)
          b
          merge(a,b)
          
          
          
          
          
          
          
          
          ######################## WEEK 5-6
http://www.statisticshowto.com/quantile-definition-find-easy-steps/

Quantile: Definition and How to Find Them in Easy Steps
Statistics Definitions > Quantile

What is a Quantile?
The word “quantile” comes from the word quantity. In simple terms, a quantile is where a sample is divided into equal-sized, adjacent, subgroups (that’s why it’s sometimes called a “fractile“). It can also refer to dividing a probability distribution into areas of equal probability.

The median is a quantile; the median is placed in a probability distribution so that exactly half of the data is lower than the median and half of the data is above the median. The median cuts a distribution into two equal areas and so it is sometimes called 2-quantile.

quantile

Quartiles are also quantiles; they divide the distribution into four equal parts. Percentiles are quantiles that divide a distribution into 100 equal parts and deciles are quantiles that divide a distribution into 10 equal parts.

Some authors refer to the median as the 0.5 quantile, which means that the proportion 0.5 (half) will be below the median and 0.5 will be above it. This way of defining quartiles makes sense if you are trying to find a particular quantile in a data set (i.e. the median). Use the following formula to estimate the ith observation:


 
ith observation = q (n + 1)
where q is the quantile, the proportion below the ith value that you are looking for
n is the number of items in a data set

The above equation is a bit of a mind bender; it’s best explained with an example.

How to Find Quantiles?
Sample question: Find the number in the following set of data where 20 percent of values fall below it, and 80 percent fall above:
1 3 5 6 9 11 12 13 19 21 22 32 35 36 45 44 55 68 79 80 81 88 90 91 92 100 112 113 114 120 121 132 145 146 149 150 155 180 189 190

Step 1: Order the data from smallest to largest. The data in the question is already in ascending order.
Step 2: Count how many observations you have in your data set. this particular data set has 40 items.
Step 3: Convert any percentage to a decimal for “q”. We are looking for the number where 20 percent of the values fall below it, so convert that to .2.
Step 4: Insert your values into the formula:
ith observation = q (n + 1)
ith observation = .2 (40 + 1) = 8.2
Answer: The ith observation is at 8.2, so we round down to 8 (remembering that this formula is an estimate). The 8th number in the set is 13, which is the number where 20 percent of the values fall below it.          
          
1zad-obqsnena v tetr
#1
choose(47,3)/choose(52,4)
#=
(48/52)*(47/51)*(46/50)*(45/49)*(4/48)


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

#4
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


#6
dpois(2,lambda=10)
ppois(2,10)-dpois(2,10)
#=
ppois(1,10)#0ili 1 obajdaniq
ppois(1,10,lower.tail = F)#lower.tail	logical; if TRUE (default), probabilities are P[X ??? x], otherwise, P[X > x].


                                                #######   week7      ############
x=runif(100,0,2)#100 random chisla mejdu 0 i 2
x
hist(x,probability=TRUE,col=gray(.9),main="uniform on [0,2]")#????
curve(dunif(x,0,2),add=T)
 
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
#The probability of getting a 3 on the 8th roll is 0.04651 which is very low. Let’s see what
#is the expected number of rolls before a 3 comes out. For this we’ll use the mean of a geometric
#distribution 1−p/p
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
 
#c) What is the probability that the ﬁrst goal occurs in the  ﬁrst 5 shots?
  #=P(X⩽5)=P(X=0)+P(X=1)+P(X=2)+P(X=3)+P(X=4)
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
 
   #Пример от week 7
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
   x <- rnorm(1000, mean=100, sd=15)
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
“Histogram for Air Passengers” as title, labels the x-axis as “Passengers”, gives a blue border
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
plot(dexp(c(1:30),1/5))
 
 
#3
Y=rnorm(50,5,sqrt(5))
hist(Y)
z=(Y-mean(Y))/sd(Y)
hist(z)
 
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
#1-pnorm(-0.64)-pnorm(0.43,lower.tail = F)   =  
  pnorm(-0.64,lower.tail = F)-pnorm(0.43,lower.tail = F)
 
#drug variant na gornoto
  1-pnorm(-0.64, lower.tail=T)-pnorm(0.43,lower.tail = F)#ima i dr variant
 
#5
pnorm(6.2,mean=3,sd=sqrt(4))
 
#6 ne trqbva li da e sqrt(500) - ne t.k standartnoto otklonenie(sd) e 500, a variance(=sd^2)
pnorm(3100,3500,500)
 
#7
dn=dnorm(80-78,10*10+13*13)
z=(dn-2)/sqrt(264)
 
pnorm(0,2,sqrt(269))

mat<-matrix(rep(seq(4), 4),ncol=4)
mat.df<-data.frame(mat)

x1<-runif(16)
cat1<-rep(1:4,4)
cat2<-c(rep(1,8),rep(2,8))
mat2.df<-data.frame(x1)
mat2.df$cat1<-cat1
mat2.df$cat2<-cat2
tapply(mat2.df$x1,mat2.df$cat1,mean)

dates<-data.frame(date =as.Date('2001-01-01',format
                       ='%Y−%m−%d')+0:729,data=0:729)

#1
price = read.csv("www.math.bas.bg/statlab/tchorbadjieff/Shares_price_ts.csv")
aggregate(price$Price, by = list(price$Volume, FUN = var)
          
#2
a = c(0, 1.5, 2)
b = c(2, 0, 1.5)
c = c(2, 1, 0.5)
mass = c(2.5, 2.5, 5)
t = matrix(c(a, b, c), 3, 3)
apply(t, 1, function(x, m)sum((x + m)/sum(m)), m = mass)

#4
a = c(1/8, 1/8, 0, 0)
b = c(0, 2/8, 2/8, 0)
c = c(0, 0, 1/8, 1/8)
t = matrix(c(a, b, c), 3, 4) 
apply()



#5
a=read.csv("http://www.math.bas.bg/statlab/tchorbadjieff/merge1.dat",header=TRUE)
a
b=read.csv("http://www.math.bas.bg/statlab/tchorbadjieff/merge2.dat",header=TRUE)
b
merge(a,b)


sample(c(0,1),10,replace=T)
x <- seq(0,50,by=1)
y <- dbinom(x,50,0.2)
plot(x,y)




qbinom(0.4438624,50,1/2)
qbinom(0.5561376,50,0.5)

rbinom(5,10,.2)

success=c(0:6)
dhyper(success,6,30,6)

ppois(16, lambda=12)


#4
qnbinom(1-0.18522,3,7/10)
qnbinom(0.18522,3,3/10)


#5
phyper(35,0.4*600000,0.6*600000,100)
pop <- rep(c(0,1),c(360000, 240000))
length(pop)
sums<-sapply(1:100,function(x)sum(sample(pop,100)))
sum(sums<=35)/1000

#6
dpois(2,10)


#7
sample(1:10,10)
sample(1:10,10,replace=TRUE)



Y=0:10
plot(Y, dgeom(Y,0.6), type="h", ylim=c(0,1), main="Geometric distribution
     for p=0.6", ylab="P(Y=Y)", xlab="Y=Number of failures before rst success")




x=rexp(100,1/2500)
hist(x,probability=TRUE,col=gray(.9),main="exponential mean=2500")
curve(dexp(x,1/2500),add=T)

################################################################################

#7.1
a<-c(1/3,1/2,2/3)
plot(dgeom(c(1:10),p=1/3),ylim = c(0,0.7))
lines(dgeom(c(1:10),p=1/2),col="red")#ot 1 do 10 t.k shte pravim 10 opita
lines(dgeom(c(1:10),p=2/3),col="blue")

#7.2
p(k<=30)=pexp(30,1/5)
dexp(5,1/5)
plot(dexp)

#7.3
x=rnorm(50,5,sqrt(5))
hist(x)
z=(x-mean(x))/sd(x)
hist(z)

#7.4
pnorm(0.92,0,1,lower.tail = F)
pnorm(-0.5,lower.tail=F)
1-pnorm(-0.64, lower.tail=T)-pnorm(0.43,lower.tail = F)#ima i dr variant

#7.5
pnorm(6.2,3,sqrt(4))

#7.6
pnorm(3100,3500,500)

#7.7
pnorm(0,2,sqrt(269))



####################################### 8UPR ###########################################################
x = c(74, 122, 235, 111, 292, 111, 211, 133, 156, 79)
sum(74, 122, 235, 111, 292, 111, 211, 133, 156, 79)/10
var(x)
sd(x)


q1 <- qnorm(0.25)
q2 <- qnorm(0.5)
q3 <- qnorm(0.75)
lower <- q1 - 1.5*(q3-q1)
upper <- q3 + 1.5*(q3-q1)
tmp.list <- list( stats=rbind(lower, q1, q2, q3, upper), out=numeric(0), group=numeric(0),
                  names=00)
bxp( tmp.list )

1 zad ?? kakvo e
x=rbinom(100,100,1/2)
#plot(x)
hist(x)
z=(x-50)/sqrt(n*p*(1-p))
hist(z)
z=(x-50)/sqrt(100*1/4)
hist(z)
boxplot(z)

#v tetr
zt=qnorm(1-5/200)#?????
SE=sqrt(1/100*t*(1-t))
lo=t-SE*zt
hi=t+SE*zt
p<lo
p>hi
p=x/n
p[p<lo|p>hi]


#3 ?????????????
sigma=1.2
x=c(102.5, 101.7, 103.1, 100.9,100.5,  102.2)
n=length(x)
alpha=0.05
zz=qnorm(1-alpha/2)
xdata=mean(x)
lo=xdata-zz*(sigma/sqrt(n))
hi=xdata+zz*(sigma/sqrt(n))
x[x<lo|x>hi]

#4zad TETR
head(morley)
L=(100-99.7)/1000
x=morley([morley$Expt==1]$Speed)
n=length(x)
xcherta=mean(x)
s=sd(x)
E=qt(1-L/2,n-1)
low=xcherta-t*s/sqrt(n)
high=xcherta+t*s/sqrt(n)
x[x<low|x>high]
plot(x)
lines(rep(high,n))
lines(rep(low,n))

                                   WEEK 8
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


                                           WEEK 9
p=1                                           
x=c(1:10)
y=c(1:10)
cor(x,y)
plot(x,y)                                           
                                           
                                           
 ?? = ???1
x=c(1:10)
y=c(10:1)
cor(x,y)
plot(x,y)
plot(y,x)

p blizko do 0
x=rnorm(100)
y=rexp(100)
cor(x,y)
plot(x,y)                        

#????                   
mean=100; sd=15
lb=80; ub=120
result= pnorm(ub, mean, sd) - pnorm(lb, mean, sd)
#Graphics
x <- seq(-4,4,length=100)*sd + mean
hx <- dnorm(x,mean,sd)
plot(x,hx,type="n",xlab="IQ Values",ylab="",main="Normal Distribution",axes=FALSE)
i <- x >= lb & x <= ub
lines(x, hx)
polygon(c(lb,x[i],ub), c(0,hx[i],0), col="red")
area <- result
txt <- paste("P(",lb,"< IQ <",ub,") =", signif(area, digits=3))
mtext(txt,3)
axis(1, at=seq(40, 160, 20), pos=0)
                                   

E(XY)=E(X)*E(Y) -- koga?
  
  cov(X,X)=dispersiq

cov(X,Y)=0 --- X i Y sa nezavisimi


Ako x i y sa nezavismi to korelaciqta i kovariaciqta e nula
obratnoto ne e zaduljitelno

korelacionna matrica
cov(x1,y1)          cov(x2,y1)
cov(x1,y2)          cov(x2,y2)

#1
data=iris
data
t=table(data)
head(iris)

#?
cov(t)
cov(data)
cor(data)
pairs(data)

#2
sds=sqrt(diag(data))
data/sapply(1:length(sds),function(i)sds+sds[i])





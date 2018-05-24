
####################################### WEEK 8 ###########################################################
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

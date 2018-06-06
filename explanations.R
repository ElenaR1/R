
x=c(1,2,3,4)
mean(x)
median(x)

a=c(1,2,0,4,10,1)
mean(a)#sredno aritmetichno na 6te chisla
median(a)#it first reorders the numbers -> 0,1,1,2,4,10, afterwards (1+2)/3

#https://www.youtube.com/watch?v=Eph_Y0BmHU0&list=PLqzoL9-eJTNDsdghuYR70d01YVGIBs29N
LungCapData<-read.table(file.choose(),header=T,sep="\t")
attach(LungCapData)
dim(LungCapData)
count=table(Gender)#count or frequencies
#725 is the dimension, If we divide by it we will have the result in percentages
percent=table(Gender)/725#percentage or relative frequencies;49% female #50 male
barplot(count)
barplot(percent)
barplot(percent,main="Title",xlab="Gender",ylab = "%",las=1)#za da sa izpraveni chislata ot y osta
barplot(percent,main="Ttile",ylab="Gender",xlab = "%",las=1,horiz=TRUE)


pie(count,main="Title")
box()


boxplot(LungCap)#good for summarizing the distribution of a numeric variable


hist(LungCap)
hist(LungCap,freq=F,ylim=c(0,0.2))


########################### WEEK 5-6
#https://www.tutorialspoint.com/r/r_binomial_distribution.htm
#https://www.youtube.com/watch?v=iG995W0XefU&list=PLqzoL9-eJTNBf1PJKYyEgkbF_9WAlraTF

#P(X=3)
dbinom(x=3,20,1/6)#veroqtnostta da imame 3 uspeha ot 20 opita s veroqtnost 1/6; i e 23%
#P(X=0)&&P(X=1)
dbinom(x=0:3,20,1/6)
#P(X<=3)
sum(dbinom(x=0:3,20,1/6))
pbinom(q=3,20,1/6,lower.tail = TRUE)
pnbinom(3,20,1/6)
pbinom(t=3,20,1/6)#samo taka pravi sushtoto kato gornoto-sumira veroqtnnostite ot 0 do 3




# Probability of getting 26 or less heads from a 51 tosses of a coin.
#ver da imame 26 uspeha ot 51 hvurlqniq na moneta
x <- pbinom(26,51,0.5)
print(x)


# How many heads will have a probability of 0.25 will come out when a coin is tossed 51 times.
x <- qbinom(0.25,51,1/2)
print(x)

# Find 8 random values from a sample of 150 with probability of 0.4.
x <- rbinom(8,150,.4)
print(x)


#OTRICATELNO-This represents the number of failures which occur in a sequence of
#Bernoulli trials before a target number of successes is reached.
#DNBINOM-https://www.r-bloggers.com/probability-exercise-negative-binomial-distribution/

barplot(dnbinom(1:25,2,0.5), col="grey", names.arg=1:25)
if(FALSE){
  It may seem a strange result, but to convince us about the accuracy of this function of R, let us consider this other problem: what are the chances of leaving the first, second, third, . the 25th head before the second cross?
    We can obtain a histogram in R, which shows what is required, in this manner:
    
    
    barplot(dnbinom(1:25,2,0.5), col="grey", names.arg=1:25)
  Observe that the probability to get the first head before the second cross is 0.25, which is the product 0.5 x 0.5 (probability to get H after T). As the number of flips have been going on, the probability falls more and more.

}
dnbinom(0:3,1,0.5)#shans da polucha 0:3 ezita predi 1to tura
sum(dnbinom(0:3,1,0.5))
pnbinom(3,1,0.5)#=0.9375
qnbinom(0.9375,1,1/2)#=3
rnbinom(n=3,size=3,prob=0.5)


#shns da poluchim 0 ili po-malko ezita ot 2 hvurlqniq
pbinom(0,2,0.5)#0.25
#pbinom(1,2,0.5) = 0.75p binom e da ti se padne ot 2 hvurlqniq 1 ili po malko pyti ezi
#t.e ili 0ezita=0.25 ili 1 ezi =0.5 i 0.5+0.25=0.75

qbinom(0.75,2,0.5)#toest kolko pyti trqbva da sme poluchili ezi za da 
#imame edi kakyv si cumulative distribution (0.75)
ednoto ti kazva che
p(1) = 0.75
drugoto che
q(0.75)=1




#vrusjta 10 chisla i vsqko ot tqh pokazva kolko puti ot 2 hvurlqniq sme poluchili ezi
rbinom(10,2,0.5)
#vrusjta sto chisla i vsqko ot tqh pokazva kolko puti ot 5 hvurlqniq sme poluchili ezi
rbinom(100,5,0.5)

barplot(dbinom(0:10,10,.5))#veroqtnostta da imame 0:10 ezita  ot 10 opita-nai-visoka ena 5
barplot(table(dbinom(0:10,10,.5)))#  ???
#vrusjta 10 chisla i vsqko ot tqh pokazva kolko puti ot 10 hvurlqniq sme poluchili ezi
z=rbinom(10,10,0.5)
z
barplot(table(z))





ppois(16, lambda=12)
dpois(3, lambda=2)



###########################################################

func=function(k,n,p)
{
  a=rbinom(k,n,p)#?? ???????? ?????????????????? ???? ???????????????????????? (n ???????? ???????????????? ???? ?????? ?? ???????????????????? ???? ?????????? p)
  par(mfrow=c(1,2))#???????????? ???????????????????????? ???? ?????????????? ???? 2 ?????????????? ??????????????????????
  barplot(table(a)/sum(table(a)))#??  ?????????? ?????????????? ???? ???????????????????????? ???????????? ???????????????????? 0,1,2...?? 6????
  #barplot(table(a),xlab="Gender",ylab = "%",las=1)
  a2=dbinom(c(0:n),n,p)#???????????????????????? ???????????????????? ???? ???????????????????? ???? 0,1...?? ??????????????
  barplot(a2)
  #?????????????? ???????????? ?????????????????? ???????????? (???????????????????? ????????????????????????) ???????????? ???????????? ?????????????? ???? ???? ???????????????? ???? ??????????????
}
func(10000,5,1/3)



dbinom(2,2,1/6)#shans ot 2 hvurlqniq da poluchim 2 6tici
dbinom(1,2,1/6)#ot 2 hvurlqniq - 1 6tica
dbinom(0,2,1/6)

f=rbinom(100,2,1/6)
f
barplot(table(f))
g=rbinom(1000,2,1/6)
sum(g==2)/1000
l=rbinom(10000,2,1/6)
sum(l==2)/10000#mnogo blizuk rezultat do 2 ; v kakuv % ot sluchaite poluchavame 2 6tici
dbinom(2,2,1/6)#ver ot 2 hvurlqniq da poluchim 2 6tici 1/36

sum(f==2)/100#dava kolko procenta imame 2puti 6ca
#veroqtnostta da imame 0:10 puti po 2 shtestici  ot 10 opita
f2=dbinom(c(0:100),100,1/6)
barplot(f2)



############2
dbinom(x=3,3,1-2/5)#0.216

####################3
#pnorm-kumulativna distribucia,qnorm-obratna,rnorm-generira,dnorm
v<-rnorm(7,60,5)#generira 7 puti sus sredno 60 i sus standarno otklonenie 5.momichta-sredno 
#60kg, otklonenie 5 znachi che 66% ot populaciqta sa ot 55-65 kg,95% s v 2 otklonenie
#mejdu 50-70 kg. Generirame sluchaino 7 momicheta sus sredno teglo 60 i otklonenie 5
v
v-60
(v-60)/4
((v-60)/4)^2
sum(((v-60)/4)^2)
vec=c(sum(((v-60)/4)^2))
vec
y=lapply(vec, sum)

f=function(n){
  vector=c()
 
  for(i in 1 : n){
  v<-rnorm(7,60,5)
  v
  v-60
  (v-60)/5
  ((v-60)/4)^2
  vector[i]<- sum(((v-60)/5)^2)
  }
 return(vector)
}

sum(f(100000)<7) /100000



x1=c(1:200)
plot(dnorm(x1, 100,10), ylim=c(0,0.1))
lines(dnorm(x1, 100,5), col="red")
lines(dnorm(x1, 100,30), col="green")
lines(dnorm(x1, 130,10), col="blue")





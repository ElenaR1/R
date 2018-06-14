#http://monashbioinformaticsplatform.github.io/2015-09-28-rbioinformatics-intro-r/01-supp-factors.html

             #############   Understanding factors ###################
sex <- factor(c("male", "female", "female", "male"))
levels(sex)
nlevels(sex)

food <- factor(c("low", "high", "medium", "high", "low", "medium", "high"))
levels(food)
food <- factor(food, levels=c("low", "medium", "high"))
levels(food)
min(food) ## doesn't work
food <- factor(food, levels=c("low", "medium", "high"), ordered=TRUE)
levels(food)
min(food) ## works!


                   ##############   Converting Factors  ############
f<-factor(c(3.4, 1.2, 5))
as.numeric(f)#greshno
levels(f)[f]#prvilmo
#This returns a character vector, the as.numeric() function is still required to convert the values to the proper type (numeric).
f<-levels(f)[f]
f<-as.numeric(f)
f
                  

                   #############################################
data = c(1,2,2,3,1,2,3,3,1,2,3,3,1)
fdata = factor(data)
fdata#Levels: 1 2 3
table(fdata)#po kolko puti se sreshtat 1,2 i 3
rdata = factor(data,labels=c("I","II","III"))
rdata # I II III
levels(fdata) = c('I','II','III')
levels
fdata # I II III spestqvam si redovete s rdata
table(fdata)
table(rdata)#po kolko puti se sreshta vseki ot elementite


mons = c("March","April","January","November","January",
          "September","October","September","November","August",
          "January","November","November","February","May","August",
          "July","December","August","August","September","November",
          "February","April")
mons = factor(mons)
mons
table(mons)#kolko puti se sreshta vseki ot mesecite
t=table(mons)
prop.table(t)
 
 
fert = c(10,20,20,50,10,20,10,50,20)
fert = factor(fert,levels=c(10,20,50),ordered=TRUE)
fert
as.numeric(levels(fert))# 10 20 50
as.numeric(levels(fert)[fert])# 10 20 20 50 10 20 10 50 20 Pravim gi ot faktorizirani otnovo v numeric
mean(as.numeric(levels(fert)[fert]))# 23.33333 - sredno aritmetichno na elementite


mylist <- list (a = 1:5, b = "Hi There", c = function(x) x * sin(x))
mylist
mylist$d <- "New item"

mylist[[6]] = c(2,3,4,4,3)
mylist
mylist[[2]][1] 
mylist[[2]][2] # NA 
mylist[[1]][1] 
mylist[[1]][3] 


n = c(2, 3, 5)
 s = c("aa", "bb", "cc")
 b = c(TRUE, FALSE, TRUE)
 df = data.frame(n, s, b) # df is a data frame
df
head(df,2)#vrushta 1te 2 elementa na vseki podelement
df[[2]][2]#rushta 2ti element na 2riq podelement


A = matrix(c(2, 4, 3, 1, 5, 7), nrow = 2, ncol = 3,byrow = TRUE)
dimnames(A) = list(
  c("row1", "row2"), # row names
  c("col1", "col2", "col3")) # column names
A
A[,1]==2#pravi logicheski factor dali v kolonata elemntite sa ravni na 2 ili ne
A[,2] # vrushta 2rata kolona
A[,c(1,3)]
A<-as.data.frame(A)
A$col1#==A[,1] vrushta 1vata kolkona
A$col1==2#==A[,1]==2
A["col1"]==2

A[A$col1==2]    #==A[,c(1,3)]  ???
A[A$col1==2,]   #VRUSHTA REDA KUDETO IMA 2KA
A[A["col1"]==2,]
A[A$col1==2,]$col2#VRUSHTA chisloto vuv 2rata kolona na  REDA KUDETO IMA 2KA


A[A$col1==2,]#243
A[A$col1==1,]#157
A[,A$col1==1]# 45        ??? 


data1 <- read.table(file="D:/Text/VS/praktikum/PERF.txt",header = TRUE,sep="\t")#???
data1


m <- matrix(1:4, 2)
m
prop.table(m, 1) #delim na 4 1viq red i na 6 2riq red
prop.table(m, 2) #delim na 3 1vata kolona i na 7 2rata
prop.table(m) #deli na sumata na vsichki elementi v tablicata

#1zad ??
x = list(1, 2, 3, 4)
x2 = list(1:4)
x
x2

#2zad
library(MASS)
head(mtcars)
mtcars[mtcars$cyl==8,]#zapetaqta ni e za da vzeme reda -> Primerite s matricata A
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
# barplot(survey$Sex,survey$Smoke) -SAMO TAKA NE STAVA TRQBVA DA E TABLE
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

counts <- table(mtcars$gear)
barplot(counts, main="Car Distribution", 
        xlab="Number of Gears")

#https://www.theanalysisfactor.com/r-11-bar-charts/  !!!!!!!!!!!!!
H <- c(2,3,3,3,4,5,5,5,5,6)
counts <- table(H)
counts#POKAZVA PO KOLKO POUTI SE SRESHTA VSQKA CIFRA

barplot(counts)#pokazva kolko chesto se sreshtat cifrite
barplot(H)#ot tova nqma smiusl zashtoto ne pokazva kolko chesto se sreshtat cifrite
#You will see that the barplot() command does not 
#perform the count directly, so we use the table() command first.

hist(counts)# ne trqbva li mejdu 4 i 5 ili mejdu 2 i3 da sa nai-visoko bar-ovete t.k  5 se sreshta nia mnogo 
# In short, the histogram consists of an x-axis, an y-axis and various bars of different heights. 
#The y-axis shows how frequently the values on the x-axis occur in the data, while the bars group 
#ranges of values or continuous categories on the x-axis. The latter explains why histograms don't
#have gaps between the bars.



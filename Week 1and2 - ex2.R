##################################### WEEK 1 ####################
#initializing a vector
#c(x1,x2,..,xn) -> creates vector with elements x1,..,xn
x=c(1,2,3,4)

#selecting element of vector
#x[2] ->second element (returns vector)
#(counting starts from 1 not 0)
x[2]
x[1:3] #subset from first to third element

#excluding element
x[-1]  #without the second
x[-(2:4)]  #without from second to fourth

#concatenation of vectors
y=c(5,7,8,9,6,1)
z=c(y,x)

#using compariosons <,>,==,&,|,...
z[x>4 | x<=2]

a<-c(1,2,3,4,5,6,7)
a[ (a>2) & (a<7) ]

#access to index
#which elements of vector (t) have value (1) -> returns vector of indexes
t=c(x,1)
s=which(t==1)

#generating sequensec
seq(3,23) #sequence from (3) to (23)
rep(x,5) #repeat vector (x) (5) times

#functions for vectors
length(z)
sum(z) #sum of vector
mean(z) #average
sort(z) #returns sorted vector in increasing order
sort(z, decreasing = TRUE) #returns sorted vector in decreasing order
min(z) #min element
max(z) #max element
range(z) #the range of numbers
chars = c("A", "s", "P", "B")
range(chars)
cumsum(z) #vector of the partial sums of the given vector

#types: integer, numeric, double, complex, char, TRUE/FALSE/NULL, factor
#every type has a NULL pointer
#NA for missing data and impossible numeric results (division by 0)
#checing type with is.
#defining type with as.
is.null(x) #checks if it is null pointer
is.na(x) #checks if it is ok data
#checking type
is.numeric(x)
is.integer(x)
is.character(chars)

#defining matrix(data,nrow,ncol,byrow=TRUE/FALSE)
#or by as.matrix(data) -> matrix with ncol=1
as.matrix(z)
m=matrix(z[-10],ncol = 3,nrow = 3,byrow = TRUE)

#accessing elements of matrix
m[2,1] #element by indexes
m[,3] #colum ->returns vector
m[1,] #row ->returns vector
#selecting specific rows and colums ->returns matrix
m[c(1,3),]

#functions for matrix
dim(m) # dimensions of the given matrix
nrow(m) #first dimension
ncol(m) #same
diag(m) #primary diagonal
t(m) #transposes a matrix
solve(m) #reverse matrix
dimnames(m) = list(c("r1", "r2", "r3"), c("c1", "c2", "c3")) #gives names to the rows and colums

#operations with scalar/vector/matrix +,-,*,/,^,%*%
n=matrix(c(2,3,1,4),2,2,TRUE)
m[c(1,2),c(1,2)]
m[c(1,2),c(1,2)] + n
m[c(1,2),c(1,2)] * n   #multiplies each row by each row
m[c(1,2),c(1,2)] %*% n #tipical multiplication of matrixes

#01 
v=matrix(c("a","b","c","2","2","3"),TRUE)
v

#02
m1=matrix(1:6,2)
m2=matrix(c(rep(1,3),rep(2,3)),2,byrow=T)
m1
m2
solve(m1[,2:3])
m1*m2
m1%*%t(m2)

#03
x3=c(8,3,8,7,15,9,12,4,9,10,5,1)
mat3=matrix(x3,6,2)
colnames(mat3)=c("c1","c2") #or: dimnames(mat3)=list(rownames(mat3),c("c1","c2"))
mat3
mat3.max=max(mat3)
mat3.min=min(mat3)
mat3=rbind(mat3,c(runif(2,1,20)))
mat3[,2]*2+6
mat3[,2]=mat3[,2]*2
changemat3=mat3+6
changemat3

#04
n = 10
heads = 0:n
freqvector = heads / n
possibilities = choose(n, heads) / 2^n                      #2^n = sum(choose(n,heads))

possmatrix = matrix(c(freqvector, possibilities), ncol = 2)
plot(possmatrix)
lines(possmatrix)





######################################## WEEK 1 ####################################
A = matrix(c(2, 4, 3, 1, 5, 7), 2,3,TRUE)=A = matrix(c(2, 4, 3, 1, 5, 7),nrow = 2,ncol = 3,byrow = TRUE)

1zad
v=matrix(c("a", "b", "c", "2", "2", "3"), TRUE)
v:     [,1] [,2] [,3] [,4] [,5] [,6]
[1,] "a"  "b"  "c"  "2"  "2"  "3

2zad
mat1 <- matrix(1:6, 2)
mat2 <- matrix(c(rep(1, 3), rep(2, 3)), 2, byrow = T)
mat1
mat2
solve(mat1[, 2:3])#namira obratnata matrica t.e mat1^(-1)
mat1*mat2#umnojava vseki element sus vseki
mat1 % ??? % (mat2)#umnojnie na matrici-ne stava zaradi razmernostite
mat1%???%t(mat2)#umnojava si gi

reshenie:
mat1 <- matrix(1:6, 2)
> mat2 <- matrix(c(rep(1, 3), rep(2, 3)), 2, byrow = T)
> mat1
[,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6
> mat2
[,1] [,2] [,3]
[1,]    1    1    1
[2,]    2    2    2
> t(mat2)
[,1] [,2]
[1,]    1    2
[2,]    1    2
[3,]    1    2

mat1[,2:3]
[,1] [,2]
[1,]    3    5
[2,]    4    6

> solve(mat1[, 2:3])#namira obratnata matrica t.e mat1^(-1)
[,1] [,2]
[1,]   -3  2.5
[2,]    2 -1.5
> mat1*mat2#umnojava vseki element sus vseki
[,1] [,2] [,3]
[1,]    1    3    5
[2,]    4    8   12
> mat1%???%t(mat2)#umnojnie na matrici-ne stava zaradi razmernostite
[,1] [,2]
[1,]    9   18
[2,]   12   24

3zad
x = c(8,3,8,7,15,9,12,4,9,10,5,1)
A=matrix(x,6,2,TRUE)
dimnames(A) = list(
c("row1", "row2","row3","row4","row5","row6"), # row names
c("col1", "col2")) # column names
A
min(A)
max(A)
matr=rbind(A,runif(2,min=1,max=20))
matr
runif(2,min=1,max=20)

matr[,2]=matr[,2]*2
matr
matr[,]=matr[,]+6
matr


reshenie:
col1 col2
row1    8    3
row2    8    7
row3   15    9
row4   12    4
row5    9   10
row6    5    1
> min(A)
[1] 1
> max(A)
[1] 15
> matr=rbind(A,runif(2,min=1,max=20))
> matr
col1     col2
row1  8.00000  3.00000
row2  8.00000  7.00000
row3 15.00000  9.00000
row4 12.00000  4.00000
row5  9.00000 10.00000
row6  5.00000  1.00000
17.30229  2.74944
> runif(2,min=1,max=20)
[1] 17.827215  6.587171
> 
> matr[,2]=matr[,2]*2
> matr
col1     col2
row1  8.00000  6.00000
row2  8.00000 14.00000
row3 15.00000 18.00000
row4 12.00000  8.00000
row5  9.00000 20.00000
row6  5.00000  2.00000
17.30229  5.49888
> matr[,]=matr[,]+6
> matr
col1     col2
row1 14.00000 12.00000
row2 14.00000 20.00000
row3 21.00000 24.00000
row4 18.00000 14.00000
row5 15.00000 26.00000
row6 11.00000  8.00000
23.30229 11.49888
>





################################## WEEK 2 ######################################
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
A  
A[A$col1,]  #??
A[,A$col1]#??
A[A$col2,] # ???????
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
median(mtcars[mtcars$gear==5,]$mpg)#sredno i mediana na mpg na  vsichki avtomobili s predavka=5 


#3zad NACHERTAITE BAR GRAFIKA ZA POL I TJUTJUNOPUSHENE NA ANKETIRANITE 
library(MASS)
head(survey)
t=table(survey$Sex,survey$Smoke)
t
barplot(t)
# barplot(survey$Sex,survey$Smoke) -SAMO TAKA NE STAVA TRQBVA DA E TABLE
t1=table(survey[,c("Sex","Smoke")])#vzimame kolonite pri vektorite "Sex"&"Smoke"
t1
barplot(table(survey[,c("Sex","Smoke")]))

#3.2 nachertaite pie-chart za chestotoa na pusheneto
table(survey$Smoke)
t=table(survey$Smoke)
prop.table(t)  # vsqko delim na obshtata suma-236
pie(t)#edin i sushti rezultat s dolnoto
pie(prop.table(t))


#3.3 histograma za pulsa na anketiranite
table(survey$Pulse)
t1=table(survey$Pulse)
t1
prop.table(t1) 
hist(survey$Pulse) # y=frequency
hist(t1)#razlichno ot gornotot, ne trqbva taka
hist(survey$Pulse,probability = TRUE) #y=density
plot(survey$Pulse)
plot(t1)



m <- matrix(1:4, 2)
m
prop.table(m)

#3.4 razpredelenie na pushachi v razlichni vuzrasti
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

m<-matrix(c(1,1,1,2,2,3,3,3,'a','a','b','c','c','c','c','c'),2,8)
ta=table(m)
ta


hist(counts)# ne trqbva li mejdu 4 i 5 ili mejdu 2 i3 da sa nai-visoko bar-ovete t.k  5 se sreshta nia mnogo 
# In short, the histogram consists of an x-axis, an y-axis and various bars of different heights. 
#The y-axis shows how frequently the values on the x-axis occur in the data, while the bars group 
#ranges of values or continuous categories on the x-axis. The latter explains why histograms don't
#have gaps between the bars.



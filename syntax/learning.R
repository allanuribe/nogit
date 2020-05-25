dir()
source("syntax.r")
emptyvector<-vector()

one<-1
oneL<-1L
1/Inf
0/0
one
attributes(one)
attributes("one")

x<-c(0.5,0.6)
x1<-c(t,F)
x2<-c("a","b","c","d")
x3<-9:29
x4<-c(1+0i,2+4i)
x5<-vector("numeric",length = 10)

y<-c(1.7,"a")
y1<-c(TRUE, 2)
y2<-c("a",TRUE)
y3<-as.numeric(y2)
y4<-as.logical(y2)

z<-list(1,"a",TRUE,1+4i)
z

m<-matrix(nrow = 2,ncol = 3)
m
dim(m)
attributes(m)
m1<-matrix(1:6,nrow = 2,ncol = 3)
m2<-1:10
dim(m2)<-c(2,5)
m2
xc<-1:3
xr<-10:12
bxr<-rbind(xc,xr)
bxr
bxc<-cbind(xc,xr)
bxc

f<-factor(c("yes","no","yes","no","yes","yes"))
f
table(f)
unclass(f)
f<-factor(c("yes","no","yes","no","yes","yes"),
          levels = c("yes","no"))
f
unclass(f)

df<-data.frame(foo = 1:4, bar = c(T,T,F,F))
df
View(df)

names(x)
x
m
dimnames(m)<-list(c("A","B"),c("c","d","f"))
m

dp<-data.frame(a=1,b="a")
dput(dp)
dput(dp,file="syntax/dp.R")
new.dp<-dget("syntax/dp.R")
new.dp

me<-url("http://www.allanuribe.com")
rme<-readLines(me)
head((rme))

a<-c("a","b","c","c","d","a")
a[1]
a[2]
a[1:4]
a[a>"a"]
u<-a>"a"
u
L<-list(foo=1:4,bar=0.6)
L.1<-L[1]
L.2<-L[[1]]
L.3<-L$bar

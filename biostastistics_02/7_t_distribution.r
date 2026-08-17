#t- distribution in R
#1. pt(t,n-1) returns a cumulative probability from -Inf (-ve infinity) to t for n-1
n=12
t=2.5
pvalue=pt(t,n-1)
print(paste("pvalue=",pvalue))


#2. qt(pvalue,n-1) returns t-value upto which the cumulative probabaility is p value.
n=12
pvalue=0.9
t=qt(pvalue,n-1)
print(paste("t=",t))


#3. dt(tvalue,n-1) returns probability density at t
t=-1.8
n=12
pdens=dt(t,n-1)
print(paste("pdens=",pdens))


#4. rt(m,n-1) returns m random derivative from a t distribution with n-1 degrees of freedom
n=12
m=20
t=rt(m,n-1)
print(t)


#5. Plot t- distribution curve
t=seq(-4,4,0.1)
n=12
pdens=dt(t,n-1)
plot(t,pdens,col="blue",type="l")

#6. Plot histogram of samples
n=12
t=rt(10000,n-1)
hist(t,breaks=30)

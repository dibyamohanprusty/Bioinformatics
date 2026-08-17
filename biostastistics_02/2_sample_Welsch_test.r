#Welsch Satterthwaite Test

#One sided hypothesis

x=c(131,115,124,131,122,117,88,114,150,169)
y=c(60,150,130,180,163,130,121,119,130,148)
xbar=mean(x)
ybar=mean(y)
sx=sd(x)
sy=sd(y)
alpha=0.05
n=length(x)
m=length(y)

a=(sqrt((sx^2/n)+(sy^2/m)))
w=(xbar-ybar)/a
print(w)

b=((sx^2/n)+(sy^2/m))^2
c=((1/(n-1))*(sx^2/n)^2)+((1/(m-1))*(sy^2/m)^2)
r=b/c
print(r)

tc=qt((1-alpha),r)
print(tc)

pvalue=pt(w,r)
print(pvalue) 


#Example 2
#Two sided hypothesis test
#Ages in months of two populations of infants

x=c(9.4,10.8,8.9,9.6,10.0,13.0,10.0,13.5,10.0,9.5,10.0,9.75)
y=c(11.6,9.8,13.2,13.75,12.0,13.75,12.5,9.5,12.0,13.5,12.0,12.0)
x=c(252, 240, 205, 200, 170, 170, 320, 148, 214, 270, 265, 203)
y=c(185, 310, 212, 238, 184, 136, 200, 270, 200, 212, 182, 225)
xbar=mean(x)
ybar=mean(y)
sx=sd(x)

sy=sd(y)
alpha=0.10
n=length(x)
m=length(y)
print(xbar)
print(ybar)
print(sx)
print(sy)

f=xbar-ybar
print((xbar-ybar))
a=(sqrt((sx^2/n)+(sy^2/m)))
w=(xbar-ybar)/a
print(w)

b=((sx^2/n)+(sy^2/m))^2
c=((1/(n-1))*(sx^2/n)^2)+((1/(m-1))*(sy^2/m)^2)
r=b/c
print(r)

tc=qt((1-(alpha/2)),r)
print(tc)

pvalue=pt(w,r)
print(pvalue) 


alpha=0.05
conf=qt(1-(alpha/2),r)*a
CI_upper=f+conf
CI_upper=round(CI_upper,digits=4)
CI_lower=f-conf
CI_lower=round(CI_lower,digits=4)

print(paste("conf=",conf))
print(paste("CI_upper=",CI_upper))

print(paste("CI_lower=",CI_lower))

print(paste((1-alpha)*100,"%","CI=(",CI_lower,",",CI_upper,")"))






























 

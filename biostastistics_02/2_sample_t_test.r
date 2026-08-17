#One sided two sample Hypothesis Testing

x=c(131,115,124,131,122,117,88,114,150,169)
y=c(60,150,130,180,163,130,121,119,130,148)
x=c(252, 240, 205, 200, 170, 170, 320, 148, 214, 270, 265, 203)
xbar=mean(x)
ybar=mean(y)
sx=sd(x)
sy=sd(y)
alpha=0.05
n=length(x)
m=length(y)

tc=qt((1-alpha),n+m-2)
print(tc)

a=(sqrt((((n-1)*(sx^2))+((m-1)*(sy^2)))/(n+m-2)))
b=(sqrt((1/n)+(1/m)))
t=(xbar-ybar)/(a*b)


pvalue=pt(t,n+m-2)
print(pvalue) 

boxplot(x,y)



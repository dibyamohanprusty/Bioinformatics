
#binomial_probability
n = 10   ## number of trials
p = 0.5  ## probability of success in a trial
x = 3    ## number of successes
binomial_probability = dbinom(x,n,p)
print(binomial_probability)

#Poisson_probability
mu = 10
x = 7
prob = dpois(x,mu)
print(prob)

#Gaussian probability
mean = 12     ## mean of the Gaussian
standev = 2.0 ## means of the standard deviation
x = 14.0    ## Gaussian variable value
gauss_density = dnorm(x,mean,standev)
print(gauss_density) 
Z=(x-mean)/standev
print(Z)

#T- TEST for one sample
 #1- Two sided
xbar=mean(x)
s=sd(x)
n=length(x)
mu=165

#T statistic and critical t: 
t=(xbar-mu)/(s/sqrt(length(x)))
print(t)
alpha=0.05
tc=qt(1-(alpha/2),n-1)
print(tc)

#pvalue
pvalue=pt(t,n-1)
print(pvalue)

#Confidence Interval:
conf=qt(1-(alpha/2),n-1)*sd(x)/sqrt(n)
CI_upper=mean(x)+conf
CI_lower=mean(x)-conf
print(CI_lower)
print(CI_upper)
print(conf)

  #2- One sided

# critical t: 
tc=qt(1-alpha,n-1)
print(tc)

#T TEST- for two sample

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

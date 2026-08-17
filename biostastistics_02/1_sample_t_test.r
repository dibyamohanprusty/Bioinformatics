#One sample t test:
#Example_1
#The following are systolic blood pressure (mm Hg) of 14 patients undergoing same drug therapy.

#Two sided hypothesis test:
x=c(183,152,178,157,194,163,144,114,178,152,118,158,172,138)

xbar=mean(x)
s=sd(x)
n=length(x)
mu=165

#T statistic: 
t=(xbar-mu)/(s/sqrt(length(x)))
# t= -1.243183
print(t)

#critical t:
alpha=0.05
tc=qt(1-(alpha/2),n-1)
print(tc)#tc= -2.160369

#if statement:
if (t^2 > tc^2) {
  print("Reject the null hypothesis")
} else {
  print("Fail to reject the null hypothesis")
}
#t is greater than tc in the negative side of the graph. Therefore Null hypothesis cannot be rejected.

#pvalue of t from t(n-1):
#if t is positive pvalue=1-pt(t,n-1)
pvalue=pt(t,n-1)
print(pvalue)#pvalue= 0.1178774

if (pvalue>(alpha/2)) {
  print("Fail to reject the null hypothesis") 
} else {
  print("Reject the null hypothesis")
}
#if pvalue<alpha/2 then reject null hypothesis

#Confidence Interval:
conf=qt(1-(alpha/2),n-1)*sd(x)/sqrt(n)
CI_upper=mean(x)+conf
CI_upper=round(CI_upper,digits=4)
CI_lower=mean(x)-conf
CI_lower=round(CI_lower,digits=4)

print(paste("conf=",conf))
print(paste("CI_upper=",CI_upper))

print(paste("CI_lower=",CI_lower))

print(paste((1-alpha)*100,"%","CI=(",CI_lower,",",CI_upper,")"))
#if CI_lower<mu>CI_upper then null cannot be rejected
if (mu < CI_lower || mu > CI_upper) {
  print("Reject the null hypothesis")
} else {
  print("Fail to reject the null hypothesis")
}	

#t.test:
res=t.test(x,alternative=c("two.sided"),mu=165,conf.level=0.95)


#One sided hypothesis test
tc=qt(1-alpha,n-1)
print(tc)
#if t>tc (for positive tc) then reject null hypothesis 



#Example_2

x=c(14.5,12.9,14.0,16.1,12.0,17.5,14.1,12.9,17.9,12.0,16.4,24.2,12.2,14.4,17.0,10.0,18.5,20.8,16.2,14.9,19.6,22.3,17.8,12.1)
xbar=mean(x)
s=sd(x)
n=24
#T statistic 
t=(xbar-14)/(s/sqrt(length(x)))
print(t) #2.549166


#pvalue of t from t(n-1)
#if t is positive pvalue=1-pt(t,n-1)
pvalue=pt(t,n-1)
print(pvalue)
#if pvalue <alpha, reject null hypothesis

#critical t
alpha=0.05
tc=qt(1-(alpha),n-1)
print(tc)


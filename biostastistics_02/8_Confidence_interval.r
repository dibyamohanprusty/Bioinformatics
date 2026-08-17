#Confidence Interval with t:

#95% Confidence

x=c(1009,1280,1180,1255,1547,2352,1956,1080,1776,1767,1680,2050,1452,2857,3100,1621)
x=c(73.3, 54.6, 82.4, 76.5, 72.2, 73.6, 74.0, 80.5, 71.0, 56.8, 80.6, 79.6, 67.3)
n=length(x)
alpha=0.05
print(mean(x))
print(sd(x))
print(sqrt(n))
print(qt(1-(alpha/2),n-1))
conf=qt(1-(alpha/2),n-1)*sd(x)/sqrt(n)

CI_upper=mean(x)+conf
CI_upper=round(CI_upper,digits=4)
CI_lower=mean(x)-conf
CI_lower=round(CI_lower,digits=4)

print(paste("conf=",conf))
print(paste("CI_upper=",CI_upper))

print(paste("CI_lower=",CI_lower))

print(paste((1-alpha)*100,"%","CI=(",CI_lower,",",CI_upper,")"))


#90% Confidence

alpha=0.10
conf=qt(1-(alpha/2),n-1)*sd(x)/sqrt(n)
CI_upper=mean(x)+conf
CI_upper=round(CI_upper,digits=4)
CI_lower=mean(x)-conf
CI_lower=round(CI_lower,digits=4)

print(paste("conf=",conf))
print(paste("CI_upper=",CI_upper))

print(paste("CI_lower=",CI_lower))

print(paste((1-alpha)*100,"%","CI=(",CI_lower,",",CI_upper,")"))



#99% Confidence

alpha=0.01
conf=qt(1-(alpha/2),n-1)*sd(x)/sqrt(n)
CI_upper=mean(x)+conf
CI_upper=round(CI_upper,digits=4)
CI_lower=mean(x)-conf
CI_lower=round(CI_lower,digits=4)

print(paste("conf=",conf))
print(paste("CI_upper=",CI_upper))

print(paste("CI_lower=",CI_lower))

print(paste((1-alpha)*100,"%","CI=(",CI_lower,",",CI_upper,")"))

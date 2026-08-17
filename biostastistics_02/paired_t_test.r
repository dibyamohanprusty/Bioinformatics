# Two sample dependent(paired) t test:
#Gall bladder ejection fraction (GBEF) before and after treatment
# To check if GEBF increases after treatment:

x=c(22,63.3,96,9.2,3.1,50,33,69,64,18.8,0,34) #before treatment
y=c(63.5,91.5,59,37.8,10.1,19.6,41,87.8,86,55,88,40) #after treatment

d=y-x
dbar=mean(d)

s=sd(d)
n=length(d)


#T statistic 
t=dbar/(s/sqrt(n))
print(t)
#-1.91

alpha=0.05
tc=qt(1-alpha,n-1)
print(tc)

#pvalue of t from t(n-1)

pvalue=pt(t,n-1)
print(pvalue)

#Confidence Interval



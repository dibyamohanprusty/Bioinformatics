#analysis of height,weight data

dat=read.csv(file="SOCR_height_weight_data.csv",header=TRUE)
print(colnames(dat))
print(dim(dat))


#convert height to cm, weight to kg
height=dat$Height.Inches*2.5
weight=dat$Weight.Pounds*0.45


#Statistical summary of height and weight
print(summary(height))
print(summary(weight))



#Mean and standard deviation
mu_height=mean(height)
sigma_height=sd(height)
print(mu_height)
print(sigma_height)


mu_weight=mean(weight)
sigma_weight=sd(weight)
print(mu_weight)
print(sigma_weight)



#compute Z variable
Z_height=(height-mu_height)/sigma_height
Z_weight=(weight-mu_weight)/sigma_weight
print(Z_height)
print(Z_weight)


#plot the distribution
par(mfrow=c(2,2))
hist(height,breaks=30,col="blue")
hist(Z_height,breaks=30,col="blue")
hist(weight,breaks=30,col="pink")
hist(Z_weight,breaks=30,col="pink")








































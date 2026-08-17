#1.One sample t test
x=c(183,152,178,157,194,163,144,114,178,152,118,158,172,138)
res=t.test(x,alternative=c("two.sided"),mu=165,conf.level=0.95)
print(res)

#2. Two sample t test (with equal variance)
x=c(131,115,124,131,122,117,88,114,150,169)
y=c(60,150,130,180,163,130,121,119,130,148)

res=t.test(x,y,alternative="less",var.equal=TRUE,paired=FALSE,conf.level=0.95)
print(res)

#3. Two sample Welsch t-test
x=c(131,115,124,131,122,117,88,114,150,169)
y=c(60,150,130,180,163,130,121,119,130,148)
res=t.test(x,y,alternative="less",var.equal=FALSE,paired=FALSE,conf.level=0.95)

#4. Paired T test
x=c(22,63.3,96,9.2,3.1,50,33,69,64,18.8,0,34) #before treatment
y=c(63.5,91.5,59,37.8,10.1,19.6,41,87.8,86,55,88,40) #after treatment

res=t.test(x,y,alternative="greater",paired=TRUE,conf.level=0.95)

gedit#Analysis of table data
#read data into frame
file.create("analysis1.r")

dat=read.csv(file="table_data.csv",header=TRUE)
#print dimension of data




print(dim(dat))
#print column names of tables



print(colnames(dat))

#print element in 3rd row and 4th column



print(dat[3,7])


#print 3rd row



print(dat[3,])

#print 4th column


print(dat[,4])
#slice 


print(dat[1:5,])
yf=dat[1:5,1:8]
print(yf)

#write yf in a csv file


write.csv(yf,file="slice_csv",row.names=FALSE)


#to plot boxplot



boxplot(dat$healthy1,dat$healthy2)


#scatter plot between 2 column

plot(dat$healthy1,dat$healthy2,pch=20,col="blue")
plot(dat$healthy1,dat$disease2,pch=20,col="red")



#stastical summery of a vector

print(summary(dat$healthy3))


#Box-whisker plot for comparison of data set
boxplot(dat$healthy1,dat$healthy2,dat$healthy3,dat$healthy4,dat$healthy5,dat$healthy6)




#subset data column.subset will col 3to end

subdat=dat[,3:ncol(dat)]

boxplot(subdat)

#same subset but removing rest col1 and col2
#a col with negative index will be remove
dat[,c(-1,-2)]



#calculating healthy mean
healthy.mean=(dat$healthy1+dat$healthy2+dat$healthy3+dat$healthy4+dat$healthy5+dat$healthy6+dat$healthy7+dat$healthy8)/8

#calculating diseased mean

disease.mean=(dat$disease1+dat$disease2+dat$disease3+dat$disease4+dat$disease5+dat$disease6+dat$disease7)/7


#compute fold change

fold_change=disease_mean/control_mean
print(fold_change)


#histogram
hist(foldchange)
hist(log2(foldchange))
> 


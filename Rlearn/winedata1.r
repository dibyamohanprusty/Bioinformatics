#analysis of white_wine_data.csv

#create a r file in Rlearn directory
gedit"winedata1.r" &


#1 read data into frame
dat=read.csv(file="white_wine_data.csv",header=TRUE)


#2 print dimension of data
print(dim(dat))

#3 print column names of data
print(colnames(dat))
 "fixed.acidity"        "volatile.acidity"     "citric.acid"         
 [4] "residual.sugar"       "chlorides"            "free.sulfur.dioxide" 
 [7] "total.sulfur.dioxide" "density"              "pH"                  
[10] "sulphates"            "alcohol"              "quality"             
[13] "wine_quality"        

#4 print staste of summary of any 2 cols
print(summary(dat$citric.acid))
print(summary(dat$fixed.acidity))


#scatter plot
 plot(dat$volatile.acidity,dat$fixed.acidity,pch=20,col="blue")
 
 #split in wine_quality good and bad
 dat_good=subset(dat,dat$wine_quality=="good")
 dat_bad=subset(dat,dat$wine_quality=="bad")

#boxplot of good wine and bad wine ph values
print(summary(dat_good))
print(summary(dat_bad))
boxplot(dat_good$pH,dat_bad$pH)
boxplot(dat_good$alcohol,dat_bad$alcohol)
boxplot(dat_good$density,dat_bad$density)
boxplot(dat_good$citric.acid,dat_bad$citric.acid)
> 



#histogram
hist(dat_good$alcohol)
hist(dat_bad$alcohol)


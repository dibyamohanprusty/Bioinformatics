
# load the data set
mydata <- read.table("compounds_data.txt", header=TRUE)


# Extract data matrix from table
datamatrix <- as.matrix(data.frame(mydata$atomic_no,mydata$melting_point, mydata$VE, mydata$radii, mydata$EN, mydata$lattice_const_ang))

#Autoscale the data matrix
matscale <- function(x) {(x - mean(x))/sd(x)}
X <- apply(datamatrix, MARGIN=2, FUN=matscale)#margin =2 means column wise,margin=1 mean row wise 

# Compute the correlation matrix
corrmatrix <- cor(X)

# Find eigen values and eigen vectors
eig <- eigen(corrmatrix)
eigen_values <- eig$value    # eigen values
eigen_vectors <- eig$vector  # eigen vectors

print("eigen values:")
print(eigen_values)

# compute the score matrix
T <- X %*% eigen_vectors

# NOTE : T[,1]  gives scores of 44 compounds on PC1
#        T[,2]  gives scores of 44 compunds on PC2
#            PC1 and PC2 together explains more than 83% of variance in data  
#        .....
#        T[,6] gives scores of 44 compounds on PC6

# Loadings
P <- eigen_vectors

# Note: P[,1] are loadings on PC1
#       P[,2] are loadings on PC2
#      ......
#       P[,6] are loadings on PC6
#   The 6 rows of P correspond to 6 quantities
# (eigen_values[1]+eigen_values[2])/sum(eigen_values)
# [1] 0.7135452

# Interpreting the score plot
plot(T[,1],T[,2])
text(T[,1]*1.06, T[,2], cex=0.5, col="red") # plots the order number of points.

X11()

# Interpreting the loading plot
plot(P[,1],P[,2])
 text(P[,1]*0.80, P[,2], c("atomic_no","melt_pt","VE","radii", "EN","lat_const"), cex=0.9, col="red")

###################


## skip this.

### To generate some scatter plots (just for class)

theta_deg = 360-40.0

theta = theta_deg * pi/180.0 


x = rnorm(200, mean=80, sd=12)
y = rnorm(200, mean=20, sd=2)
#plot(x,y, xlim=c(0,100), ylim=c(0,100), cex=0.3)


xprime = x*cos(theta) + y*sin(theta)
yprime = -x*sin(theta) + y*cos(theta)

X11()
plot(xprime, yprime,xlim=c(0,100), ylim=c(0,100), cex=0.5, pch=20)

X11()

xorg = x - 80
yorg = y - 20
plot(xorg,yorg, xlim=c(-50,50), ylim = c(-50,50), cex=0.3, pch=20)




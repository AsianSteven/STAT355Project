dat <- read.table("sunspots.txt", header=TRUE)
sunspots <- dat$x

#finding the mean of the sample data
cat("Mean of the sample Data:", mean(sunspots), "\n")

#finding the variance of the sample data
cat("Variance of the sample Data:", var(sunspots), "\n")

#making the histgram of the sample data
png("sunspots.png")
hist(sunspots, col=rgb(1,0,1,1/4), main="Histogram of means for Sunspots", xlab="Sample Mean")
dev.off()

#n=10
z_10<-numeric()
for (i in 1:10000){
	y <- sunspots[sample(1:length(sunspots), 10,replace=FALSE)]
	z_10[i] <- mean(y) 
}
cat("Variance of n=10 sample mean:", var(z_10), "\n") 

#n=20
z_20<-numeric()
for (i in 1:10000){
	y <- sunspots[sample(1:length(sunspots), 20,replace=FALSE)]
	z_20[i] <- mean(y)
}
cat("Variance of n=20 sample mean:", var(z_20), "\n")

#n=30
z_30<-numeric()
for (i in 1:10000){
	y <- sunspots[sample(1:length(sunspots), 30,replace=FALSE)]
	z_30[i] <- mean(y)
}
cat("Variance of n=30 sample mean:", var(z_30), "\n")

#n=40
z_40<-numeric()
for (i in 1:10000){
	y <- sunspots[sample(1:length(sunspots), 40,replace=FALSE)]
	z_40[i] <- mean(y)
}
cat("Variance of n=40 sample mean:", var(z_40), "\n")

#n=50
z_50<-numeric()
for (i in 1:10000){
	y <- sunspots[sample(1:length(sunspots), 50,replace=FALSE)]
	z_50[i] <- mean(y)
}
cat("Variance of n=50 sample mean:", var(z_50), "\n")

#n=60
z_60<-numeric()
for (i in 1:10000){
	y <- sunspots[sample(1:length(sunspots), 60,replace=FALSE)]
	z_60[i] <- mean(y)
}
cat("Variance of n=60 sample mean:", var(z_60), "\n")

#n=70
z_70<-numeric()
for (i in 1:10000){
	y <- sunspots[sample(1:length(sunspots), 70,replace=FALSE)]
	z_70[i] <- mean(y)
}
cat("Variance of n=70 sample mean:", var(z_70), "\n")

#n=80
z_80<-numeric()
for (i in 1:10000){
	y <- sunspots[sample(1:length(sunspots), 80,replace=FALSE)]
	z_80[i] <- mean(y)
}
cat("Variance of n=80 sample mean:", var(z_80), "\n")

#n=90
z_90<-numeric()
for (i in 1:10000){
	y <- sunspots[sample(1:length(sunspots), 90,replace=FALSE)]
	z_90[i] <- mean(y)
}
cat("Variance of n=90 sample mean:", var(z_90), "\n")

#n=100
z_100<-numeric()
for (i in 1:10000){
	y <- sunspots[sample(1:length(sunspots), 100,replace=FALSE)]
	z_100[i] <- mean(y)
}
cat("Variance of n=100 sample mean:", var(z_100), "\n")

#Histgram for n=10 and n=100
png("n=10.png")
hist(z_10, col=rgb(0,0,1,1/4), main="Histogram of means for Sunspots n=10", xlab="Sample Mean")
dev.off()

png("n=100.png")
hist(z_100, col=rgb(1,1,0,1/4), main="Histogram of means for Sunspots n=100", xlab="Sample Mean")
dev.off()

#variance of function of n
n_var<-numeric()
n_var[1]<-var(z_10)
n_var[2]<-var(z_20)
n_var[3]<-var(z_30)
n_var[4]<-var(z_40)
n_var[5]<-var(z_50)
n_var[6]<-var(z_60)
n_var[7]<-var(z_70)
n_var[8]<-var(z_80)
n_var[9]<-var(z_90)
n_var[10]<-var(z_100)
x<-c(10, 20, 30, 40, 50, 60, 70, 80, 90, 100)
y<-c(n_var[1], n_var[2], n_var[3], n_var[4], n_var[5], n_var[6], n_var[7], n_var[8], n_var[9], n_var[10])
png("variance.png")
plot(x, y, main="Plotting Variance as F(n)", col="red", type="b", xlab="n", ylab="Sample Mean Variance")
dev.off()
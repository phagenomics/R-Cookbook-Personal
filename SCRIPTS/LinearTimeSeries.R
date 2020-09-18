data<-read.table("~/Desktop/DATA.txt", header=FALSE)   ### SAme input as seasonailty.
re.data <- apply(data, 2, function(x) x/sum(x))
D<- vegdist(t(re.data), method="bray", upper=TRUE)
M<-as.
(D)
DF<-as.data.frame(M)
stripchart(DF, pch =c(16), vertical=TRUE, xlim=c(0,53), ylim =c(0,1), col="grey")

Means<-apply(DF, 2, median)
par(new=TRUE)
plot(Means, xlim=c(0,53), ylim =c(0,1), col="red", pch=(16))
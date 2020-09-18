library(vegan)
data<-read.table("~/Desktop/INTER.txt");   ### This is an abundance table
Month = c(1:63)
dis_month = as.vector (dist(Month))
re.data <- apply(data, 2, function(x) x/sum(x))
dis_com=as.vector(vegdist(t(re.data), "bray", na.rm=TRUE))
plot(dis_month,dis_com)



#############
P<-numeric(62)
A<-numeric(62)


for (i in 1:60) {
	j = i + 0
	P[i]=i
	A[i]=mean(D[(D[1]>=i) & (D[1] <= j),2])
}



plot(data$V1,data$V2, xlim=c(0,63),ylim=c(0,1))
par(new=TRUE)
plot(P,A, col='red',xlim=c(0,63),ylim=c(0,1))
par(new=TRUE)




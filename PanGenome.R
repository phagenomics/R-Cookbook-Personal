data <-read.table("~/Desktop/DATA.txt")   ### Table of presence absence of genes/species
vals = c(1:52)
D<-as.data.frame.matrix(data)

P<-numeric(2650)
A<-numeric(2650)
m = 0


#### CORE GENOME   ####          ### or core populations
for (j in 2:50) {
	for (k in 1:50) {
	S <- D[,sample(vals, j)]
	BIN <- S>0
	SUM <- rowSums(BIN)
	P[m]<-j
	A[m]<-length(SUM[SUM==j])
	m=m+1
	
	}

}

#### PAN GENOME   ####            ###or collectors curve
P<-numeric(2650)
A<-numeric(2650)
m = 0
E<-numeric(19907)

for (j in 1:52) {
	for (k in 1:50) {
	S <- D[,sample(vals, j)]
	M <-cbind(E,S)
	BIN <- S>0
	SUM <- rowSums(BIN)
	P[m]<-j
	A[m]<-length(SUM[SUM>0])
	m=m+1
	
	}

}
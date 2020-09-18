
data <-read.table("~/Desktop/TRANS/Sorted.txt", header=FALSE, row.names=1)   ###Table to be plotted
M<-as.matrix(data)

library(ggplot2)  
library(RColorBrewer)  
library(reshape2)  
library(scales)

mat.melted <- melt(M)  


hm.palette <- colorRampPalette(rev(brewer.pal(11, 'Spectral')), space='Lab')  ## Greys

ggplot(mat.melted, aes(x = Var1, y = Var2, fill = value)) +  
  geom_tile() + scale_fill_gradientn(colours = hm.palette(20), limits = c(0,1000000), oob=squish, na.value="white") 

   ### limits = c(0,100)
       ### Save it as EPS
       
setEPS()
postscript("~/Desktop/whatever.eps")
ggplot(data = mat.melted, aes(x=Var1, y=Var2, fill=value)) + 
geom_tile() +  scale_fill_gradientn(colours = hm.palette(100))
dev.off()



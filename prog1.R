data<-read.csv(file="B:/7th Sem/DSR/Lab Programs/dataset.csv",header=TRUE,sep=",")
summary(data)
plot(data$A,data$B)

data2<-read.delim(file="B:/7th Sem/DSR/Lab Programs/dataset.csv",header=TRUE,sep=",")
D<-c(10,20,30,40,50)
data2<-cbind(data2,D)
write.table(data2,file="B:/7th Sem/DSR/Lab Programs/newdata.txt",sep="\t",row.names=FALSE)
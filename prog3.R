buffTail<-c(10,1,37,5,12)
gardenBee<-c(8,3,9,6,4)
redTail<-c(1,8,9,12,4)
carderBee<-c(8,27,6,32,23)
honeyBee<-c(12,13,16,9,10)
rows<-c("Thistle","Vipers","Golden Rain","Yellowalfala","Blackberry")
cols<-c("BuffTail","GardenBee","RedTail","CarderBee","HoneyBee")
m<-matrix(data=c(buffTail,gardenBee,redTail,carderBee,honeyBee),nrow=5,ncol=5,byrow=FALSE,dimnames=list(rows,cols))
m["Thistle","BuffTail"]
l<-list(m["Thistle",],m["Vipers",],m["Golden Rain",],m["Yellowalfala",],m["Blackberry",])
l
l2<-list(c(1,2,3,4,5),"Hello",c(1.1,2.2,3.3))
l2

intnum=vector(mode="integer",3)
intnum=c(10,20,30)
strv=c("Water","lemon","juice")
numnum=c(23.3,44.5,89.0)
list1=list(intnum,strv,numnum)
names(list1)=c("integer number","string","numeric number")
list1

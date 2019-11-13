library(rpart)
library(rpart.plot)

df=read.csv("B:/7th Sem/DSR/Lab Programs/decision_data.csv")
summary(df)
dec_tree<-rpart(Play~Outlook + Temperature + Humidity + Wind, method="class", data=df, control=rpart.control(minsplit=1), parms=list(split='information'))
summary(dec_tree)

rpart.plot(dec_tree, type=4, extra=1)
Outlook<-"sunny"
Temperature<-"mild"
Humidity<-"normal"
Wind<-FALSE
test<-data.frame(Outlook, Temperature, Humidity, Wind)
predict(dec_tree, test, type="class")

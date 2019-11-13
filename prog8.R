df<-read.csv("B:/7th Sem/DSR/Lab Programs/nb_data.csv")
probClass<-table(df$Enrolls)
probClass<-probClass/sum(probClass)
probClass
ageClass<-table(df$Enrolls,df$Age)
ageClass<-ageClass/rowSums(ageClass)
ageClass
incomeClass<-table(df$Enrolls,df$Income)
incomeClass<-incomeClass/rowSums(incomeClass)
incomeClass
jobClass<-table(df$Enrolls,df$JobSatis)
jobClass<-jobClass/rowSums(jobClass)
jobClass
desireClass<-table(df$Enrolls,df$Desire)
desireClass<-desireClass/rowSums(desireClass)
desireClass
Age<-"<=30"
Income<-"Medium"
JobSatis<-"Yes"
Desire<-"Fair"
test<-data.frame(Age,Income,JobSatis,Desire)
prob_yes=probClass["Yes"]*(ageClass["Yes",Age]*incomeClass["Yes",Income]*jobClass["Yes",JobSatis]*desireClass["Yes",Desire])
prob_no=probClass["No"]*(ageClass["No",Age]*incomeClass["No",Income]*jobClass["No",JobSatis]*desireClass["No",Desire])
prob_yes
prob_no

library(e1071)
nb<-naiveBayes(Enrolls~ Age+ Income + JobSatis + Desire, data=df)
nb
predict(nb,test)

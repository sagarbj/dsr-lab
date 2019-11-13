data(cars)

model<-lm(speed ~ dist, data=cars)
summary(model)
confint(model, level=0.95)

plot(cars$dist, cars$speed, main="Speed vs Distance", xlab="Distance", ylab="Speed", col="red")
abline(model, col="green")

dist<-67
df=data.frame(dist)
predict(model, df, level=0.95, interval="confidence")

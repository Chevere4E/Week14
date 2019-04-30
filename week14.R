library(expm)

Q <- matrix(nrow=2,ncol=2, c(-12,12,3,-3),byrow=TRUE)
t <- seq(.01,100,by=.01)
P <- array(rep(0, length(t)*2*2), dim=c(length(t), 2, 2))
for (i in 1:length(t))
{
  P[i, ,] <- expm(Q*t[i])
}

plot(t,P[,1,1],"l",col="blue",xlab="Time", ylab="P(t)",lwd=2,log='x',ylim=range(0,1))
lines(t,P[,1,2],"l",col="blue",xlab="Time", ylab="P(t)",lwd=2)
lines(t,P[,2,1],"l",col="red",xlab="Time", ylab="P(t)",lwd=2)
lines(t,P[,2,2],"l",col="red",xlab="Time", ylab="P(t)",lwd=2)
grid(col = "gray", lty = "dotted",equilogs = TRUE)

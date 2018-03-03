####My data####

x <- as.factor(c("2-fold CV", "5-fold CV", "10-fold CV"))

sweet <- c(0.732, 0.8257, 0.862) #lr A
tart <- c(0.9415, 0.9435, 0.943) #rf A
sweet2 <- c(0.638, 0.6956, 0.730) #lr B 
tart2 <- c(0.87045, 0.8798, 0.877) #rf B

###Plotting###
par(family="serif", #par(mar = c(5, 5, 4, 2)),
    xpd = T, mar = par()$mar + c(0,0,0,7),
    xpd=TRUE, 
    cex.lab=1.2, lwd=2, pty="m", font.axis=2)

plot(seq_along(x), xlab="k-fold CV", ylab="ROC AUC", sweet, ylim=c(0.600, 1), lty=1, col="red", type="b", xaxt="n")
##axis(1, at=seq_along(x), labels=c("2-fold CV", "5-fold CV", "10-fold CV"))
par(new=TRUE)
plot(seq_along(x),tart, ylim=c(0.600, 1), xlab="k-fold CV", ylab="ROC AUC", type="b", add=TRUE, col="blue", xaxt="n")

par(new=TRUE)
plot(seq_along(x),sweet2, ylim=c(0.600, 1), xlab="k-fold CV", ylab="ROC AUC", lty=2, type="b", add=TRUE, col="red", xaxt="n")

par(new=TRUE)
plot(seq_along(x),tart2, ylim=c(0.600, 1), xlab="k-fold CV", ylab="ROC AUC", lty=2, type="b", add=TRUE, col="blue", xaxt="n")

axis(1, at=seq_along(x), labels=c("2-fold CV", "5-fold CV", "10-fold CV"))


legend(3.2, 1.0, c("LR Model A", "LR Model B", "RF Model A", "RF Model B"), 
       xpd=TRUE, lty =c(1,2,1,2),col=c("red","red", "blue", "blue"), 
       bty="o")

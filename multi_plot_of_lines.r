# reference: https://woosa7.github.io/R-Plot-Basics/

b2a_1 = c(98.7321, 98.5201, 97.9138, 96.5349)
b2a_2 = c(98.2319, 97.8103, 97.2501, 96.239)
b2a_3 = c(97.9312, 97.2093, 96.4068, 95.9354)
b2a_4 = c(97.3097, 96.5384, 95.3321, 94.8353)
b2a_5 = c(97.5832, 96.9322, 96.2359, 95.7239)

t2a_1 = c(97.2358, 96.9845, 95.2098, 94.9874)
t2a_2 = c(96.9873, 95.9823, 95.2345, 93.2983)
t2a_3 = c(96.8324, 96.1238, 95.3298, 94.4298)
t2a_4 = c(95.2385, 94.9382, 94.3238, 93.9853)
t2a_5 = c(97.3855, 95.9834, 93.9834, 92.1332)

par(mfrow = c(1,2))

plot(b2a_1, type='o', col='red', lwd=2, ylim=c(90, 100), axes=F, ann=F)
axis(1, at=1:4, labels=c("5%", "10%", "20%", "50%"))
axis(2, ylim=c(90, 100))
title(main="Baseline", col.main="black", font.main=4)
title(xlab="Random space removal ratio", col.lab="black")
title(ylab="Accuracy", col.lab="black")

par(new=T)
lines(b2a_2, type='o', pch=21, col='green', lwd=2)
lines(b2a_3, type='o', pch=21, col='blue', lwd=2)
lines(b2a_4, type='o', pch=21, col='brown', lwd=2)
lines(b2a_5, type='o', pch=21, col='cyan', lwd=2)

legend(1, 93, c("baseline-1", "baseline-2", "baseline-3", "baseline-4", "baseline-5"), col=c('red', 'green', 'blue', 'brown', 'cyan'), cex=1, pch=21, lty=1)

plot(t2a_1, type='o', col='red', lwd=2, ylim=c(90, 100), axes=F, ann=F)
axis(1, at=1:4, labels=c("5%", "10%", "20%", "50%"))
axis(2, ylim=c(90, 100))
title(main="Test 2", col.main="black", font.main=4)
title(xlab="Random space removal ratio", col.lab="black")
title(ylab="Accuracy", col.lab="black")

par(new=T)
lines(t2a_2, type='o', pch=21, col='green', lwd=2)
lines(t2a_3, type='o', pch=21, col='blue', lwd=2)
lines(t2a_4, type='o', pch=21, col='brown', lwd=2)
lines(t2a_5, type='o', pch=21, col='cyan', lwd=2)

legend(1, 93, c("test 2-1", "test 2-2", "test 2-3", "test 2-4", "test 2-5"), col=c('red', 'green', 'blue', 'brown', 'cyan'), cex=1, pch=21, lty=1)
#legend('bottomleft', c("test 2-1", "test 2-2", "test 2-3", "test 2-4", "test 2-5"), col=c('red', 'green', 'blue', 'brown', 'cyan'), cex=1, pch=21, lty=1)


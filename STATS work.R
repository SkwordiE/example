x <- sort(c(45, 47, 23, 30, 29, 27, 21, 31, 22, 38, 46, 37, 66, 50, 37, 47, 44, 47, 54, 56, 59, 52, 36, 65, 39, 61, 69, 43, 75, 44, 56, 55, 53, 39, 41, 37, 69, 61, 45, 31, 46, 31))
median(print(x[1:21]))
median(print(x[22:42]))
summary(x)

y <- sort(c(25, 19, 9, 16, 3, 21, 7, 17, 10, 4, 18, 17, 4, 12, 17, 5, 10, 29, 22, 36, 19, 32, 4, 45, 1, 13, 35, 17, 23, 10, 14, 7, 15, 7, 27, 5, 27, 3, 3, 11, 12, 3))
median(print(y[1:21]))
median(print(y[22:42]))
summary(y)

n <- 200

sequence <- sample(c(TRUE, FALSE), n, replace = TRUE, prob = c(0.67,0.33))

length(which(sequence == TRUE))/length(sequence)

p <- rnorm(n)

for(i in 1:length(sequence)){
  p[i] <- (length(which(sequence[1:i] == TRUE))/length(sequence[1:i]))*100
}

plot(p,
     ylab = "Percent of Packages where at least One Egg Cracked",
     xlab = "Trial #",
     main = "Craft Hinds's Results",
     pch = 16,
     ylim = c(50,100),
     type = "o",
     lty = 1,
     col = rgb(0.1,0.9,1),
     cex.main = 2)

m <- rnorm(200)
n <- rnorm(200)

plot(x=m,
     y=n,
     xlab = "Longitude",
     ylab="Latitude",
     main = "Bombsites in Oceania",
     cex.lab = 1.25,
     cex.main = 1.25
     )
points(3,-2, pch = 16, col = "red", cex = 2)
points(-0.25, -0.25, pch = 16, col = "green", cex = 2)


sequence <- sample(c(1, 3, 4, 5, 7, 8, 10, 14), 50, replace = TRUE, prob = c(0.1,0.2,0.3,0.5,0.4,0.3,0.2,0.1))

dotchart(sequence)

plot(table(sequence), yaxt = "n", xaxt = "n",
     xlim=c(1,15), ylim=c(1,15),
     ylab = "Frequency",
     xlab = "Eggs Cracked upon arrival at Craft Hinds")

axis(2, at = seq(1, 15, by = 1))
axis(1, at = seq(1, 15, by = 1))
abline(v = seq(1, 15, by = 1), col = "lightgray", lty = "dotted") 
abline(h = seq(1, 15, by = 1), col = "lightgray", lty = "dotted") 
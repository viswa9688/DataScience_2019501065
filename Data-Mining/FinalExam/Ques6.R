data = read.csv("Liver_data.csv", header = FALSE, col.names = c("mcv", "alkphos", "sgpt", "sgot", "gammagt", "drinks", "selector"))



x = data[, c("mcv", "alkphos","gammagt", "drinks")]
plot(x,pch = 19, xlim=c(80,100), ylim=c(0,200))

#kmeans with 4 clusters and plotting them
help(kmeans)
model1 = kmeans(x, 4)
plot(x, col=model1$cluster, xlim=c(80,100), ylim=c(0,200))
points(model1$center, col='yellow', pch=19, cex=2)



x1 = data[,c("mcv", "gammagt")]
plot(x,pch = 19, xlim=c(80,100), ylim=c(0,200))

#kmeans with 4 clusters and plotting them
help(kmeans)
model2 = kmeans(x, 4)
plot(x, col=model2$cluster, xlim=c(80,100), ylim=c(0,200))
points(model2$center, col='brown', pch=19, cex=2)
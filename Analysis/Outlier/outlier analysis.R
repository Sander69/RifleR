# Outlier Analysis

library(DMwR)
library(plyr)

# remove "Species", which is a categorical column
iris2 <- iris[,1:4]
outlier.scores <- lofactor(iris2, k=5)
plot(density(outlier.scores))


rm(AllData)
temp <- subset(ShotData, select=c(Dist.from.Center0,Radial.Std.Dev0,velocity.mean0));
AllData <- rename(temp, c("Dist.from.Center0"="DFC", "Radial.Std.Dev0"="RSD", "velocity.mean0"="V"))
outlier.scores <- lofactor(AllData,k=6)  #average shots per group 6.8;
plot(density(outlier.scores))
#pick top 20 as outliers (5%)
outliers <- order(outlier.scores, decreasing=T)[1:20]
#print outliers
print(outliers)

#first two principle components
n <- nrow(AllData)
labels <- 1:n
labels[-outliers] <- "."
biplot(prcomp(AllData), cex=.8, xlabs=labels)

pch <- rep(".",n)
pch[outliers] <- "+"
col <- rep("black", n)
col[outliers] <- "red"
pairs(AllData, pch=pch, col=col)

# Drop data points identified as outliers
ShotData2 <- ShotData[ -outliers, ]
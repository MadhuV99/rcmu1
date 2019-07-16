#cmu_sr2.R
setwd('~/pj/rpj/rcmu1')
getwd()

load('sdintuition.RData')
str(ratings)
dim(ratings)
nrow(ratings)
ncol(ratings)
names(ratings)
head(ratings)
tail(ratings)
summary(ratings)

sapply(ratings, sd)

m <- 101.3
s <- 0.6
c(m - 2 * s, m + 2 * s)
x <- 99.5
z <- (x - m)/s
c(m - 1 * s, m + 1 * s)

#Lab Exercise
load('drinking.RData')
str(data)
dim(data)
nrow(data)
ncol(data)
names(data)
head(data)
tail(data)
summary(data)


f10 <- head(data, 10)
f10 <- f10[!is.na(f10$Alcohol),]
nrow(f10[f10$Alcohol >= 15,])
f10[f10$Height == max(f10$Height),]$Alcohol

data[data$Gender=='Male' & data$Cheat==1,]$Height
hist(data$Alcohol)
boxplot(data$Alcohol)
boxplot(Alcohol ~ Gender, data=data)
summary(data$Alcohol)

tbl <- table(data$Cheat); tbl
pie(tbl)
tbl/sum(tbl) * 100
percent=prop.table(tbl)*100;percent
pf = round(percent,1);pf
#lbl = c("Not Report ","Will Report ");lbl
lbl = paste(c("Not Report ","Will Report "),pf,"%",sep="");lbl
pie(tbl, lbl)

load('nightlight.RData')
str(nightlight)
dim(nightlight)
nrow(nightlight)
ncol(nightlight)
names(nightlight)
head(nightlight)
tail(nightlight)
summary(nightlight)

t <- table(nightlight)
prop.table(t)
prop.table(t, 1)
round(prop.table(t, 1) * 100, 2)
prop.table(t, 2)

tt <- table(nightlight$Light, nightlight$Nearsightedness); tt
17/172*100

?barplot
?mosaicplot
mosaicplot(t)

load('height.RData')
str(h)
dim(h)
nrow(h)
ncol(h)
names(h)
head(h)
tail(h)
summary(h)

with(h, plot(height, weight))
plot(h$height,h$weight)

plot(h$height,h$weight, xlab="Height (inches)", ylab="Weight (lbs)")
points(h$height[h$gender==1],h$weight[h$gender==1],col="red")

plot(h$height,h$weight, xlab="Height (inches)", ylab="Weight (lbs)",col="blue")
points(h$height[h$gender==1],h$weight[h$gender==1],col="red")
legend(55,225, pch=1, col=c("red","blue"),legend=c("females","males"))








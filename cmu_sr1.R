#cmu_sr1.R
setwd('~/pj/rpj/rcmu1')
getwd()
load('depression.RData')

str(depression)
dim(depression)
nrow(depression)
ncol(dep)
names(depression)

depression$Age
depression$Gender <- replace(depression$Gender,depression$Gender==1,'Female')
depression$Gender <- replace(depression$Gender,depression$Gender==2,'Male')
depression$Gender

?replace()
depression$Gender == 'Male'

load('friends.RData')
str(friends)
dim(friends)
nrow(friends)
ncol(friends)
names(friends)
levels(friends$Friends)
table(friends$Friends)

friends[friends$Friends == 'Same sex',]
tail(friends$Friends == 'Same sex', 100)

t = table(friends$Friends);t
pie(t)

prop = prop.table(t);prop
str(prop)
percent=prop.table(t)*100;percent
pf = round(percent,1);pf
lbl = paste(c("No difference ","Opposite sex ","Same sex "),pf,"%",sep="");lbl

pie(t, labels = lbl)

barplot(t)
?barplot
xlbl <- c('Both', "Opp", 'Same'); xlbl
labels(t) 
str(t)
attr(t, "dimnames") <- list(xlbl); t
barplot(t)


grades <- c(88, 48, 60, 51, 57, 85, 69, 75, 97, 72, 71, 79, 65, 63, 73)
hist(grades)

length(grades)
7/15*100
3/32

median(grades)
range(grades)

load('actor_2013.RData')
str(actor_age)
dim(actor_age)
nrow(actor_age)
ncol(actor_age)
names(actor_age)

x11()
hist(actor_age$Age)
hist(actor_age$Age, xlab="Age of Best Actor Oscar Winners (1970-2013)", main="")
hist(actor_age$Age, xlab="Age of Best Actor Oscar Winners (1970-2013)",
           ylab="Number of Actors", main="Best Actor Oscar Winners Ages")
hist(actor_age$Age, breaks = 8,
     xlab="Age of Best Actor Oscar Winners (1970-2013)",
     ylab="Number of Actors", main="Best Actor Oscar Winners Ages")
hist(actor_age$Age, breaks = 5,
     xlab="Age of Best Actor Oscar Winners (1970-2013)",
     ylab="Number of Actors", main="Best Actor Oscar Winners Ages")
hist(actor_age$Age, breaks = 25,
     xlab="Age of Best Actor Oscar Winners (1970-2013)",
     ylab="Number of Actors", main="Best Actor Oscar Winners Ages")
?x11
dev.off()
hist(actor_age$Age)

sorted_age <- sort(actor_age$Age)
length(sorted_age)
midp <- length(sorted_age)/2
(sorted_age[midp] + sorted_age[midp+1])/2
median(actor_age$Age)
mean(actor_age$Age)
range(actor_age$Age)
76 - 29
max(actor_age$Age) - min(range(actor_age$Age))
summary(actor_age$Age)
Q3 <- 50.25
IQR(actor_age$Age)
upperL <- Q3 + IQR(actor_age$Age)
actor_age$Age[actor_age$Age > upperL]

hours <- c(1, 6, 7, 5, 5, 8, 11, 12, 15)
mean(hours)

hours2 <- c(rep(1,3),rep(2,5),rep(3,15),rep(4,25),
           rep(5,20),rep(6,15),rep(7,5),rep(8,1),
           rep(9,1)); hours
mean(hours2)

hours3 <- c(1, 6, 7, 5, 8, 5, 11, 12, 15)
sorted_hours3 <- sort(hours3)
midp3 <- (length(sorted_hours3) + 1) /2
sorted_hours3[midp3]
median(hours3)

counts <- c(6,4,4,3,3,2,6,5,4,7,2,17)
sum(counts)
(sum(counts)+1)/2

q1 <- 95
q3 <- 120
iqr <- q3 - q1 
q3 + 1.5 * iqr
q1 - 1.5 * iqr

q1 <- 130
q3 <- 150
iqr <- q3 - q1 
q3 + 1.5 * iqr
q1 - 1.5 * iqr


counts2 <- c(3,3,8,4,1,1,4,2,1,2,1)
sum(counts2)
sum(counts2)/2

with(actor_age, {
  boxplot(Age)
  cat(rep('-', 30))
  print(length(Age))
  print(summary(Age))
  print(min(Age))
  print(max(Age))
  print(max(Age) - min(Age))
  print(median(Age))
  print(IQR(Age))

  cat(rep('-', 30))
  print(quantile(Age))
  print(quantile(Age, 0.25))
  print(quantile(Age, 0.75))
  
  cat(rep('-', 30))
  print(mean(Age))
  print(var(Age))
  print(sd(Age))
  cat(rep('-', 30))
})

boxplot(actor_age$Age)

load('graduation.RData')
str(grad_data)
dim(grad_data)
nrow(grad_data)
ncol(grad_data)
names(grad_data)
head(grad_data)
tail(grad_data)
summary(grad_data)

boxplot(grad_data)
boxplot(grad_data, 
        xlab="Colleges",ylab ="Graduation Rates",
        main="Comparison of Graduation Rates")

boxplot(grad_data, horizontal=TRUE,
        ylab="Colleges",xlab ="Graduation Rates",
        main="Comparison of Graduation Rates")



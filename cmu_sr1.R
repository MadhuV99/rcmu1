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
percent=prop.table(t)*100;percent
str(prop)

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

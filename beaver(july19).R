library(readr)
beaver <- read_csv("C:/Documents/My Excel/beaver.csv")
View(beaver)
install.packages("dplyr")
install.packages("ggplot2")
library(dplyr)
library(ggplot2)
head(beaver)
tail(beaver)
nrow(beaver)
#Note that 307 corresponds to day 1 while 308 corresponds to day 2
day1<-dplyr::filter(beaver,day=='307')
day1day2<-dplyr::filter(beaver,day=='308')

#this code filters out the bevers that were and weren't active. Since all beavers in day 2 were active
#then it's not necessary to write any code 
day1active<-dplyr::filter(day1,activ=='1')
day1NOTactive<-dplyr::filter(day1,activ=='0')

summary(day1)
summary(day2)
summary(day1active)
summary(day1NOTactive)

var(day1active$temp)
var(day1NOTctive$temp)
var(day2$temp)
f<-ggplot(data=day1active,aes(time,temp))
f+geom_point()+ggtitle("Temperature vs time for day1 active ")
g<-ggplot(data=day1NOTactive,aes(time,temp))
g+geom_point()+ggtitle("Temperature vs time for day1 inactive ")
h<-ggplot(data=day2,aes(time,temp))
h+geom_point()+ggtitle("Temperature vs time for day2 active ")
i<-ggplot(data=day1,aes(time,temp))
i+geom_point()+ggtitle("Temperature vs time for day1 all ")



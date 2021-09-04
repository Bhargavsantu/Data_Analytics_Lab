DF <- read.csv("F:/IIITG/THIRD SEMESTER/DA Lab/ASS3/PAICOL.csv")
View(DF)
str(DF)
DF$DATE=as.Date(DF$DATE,format="%d-%m-%Y")
View(DF)
str(DF)
#line Plot
install.packages("ggplot2")
library(ggplot2)
ggplot(data = DF,aes(DATE,LEVEL))+geom_line()+geom_point()
# scatter plot
ggplot(data = DF,aes(RAIN,LEVEL)) +geom_point()
#plot Rain and level
ggplot(DF,aes(RAIN,LEVEL))+geom_line()+geom_point()
#plot year 2001
DF$YEAR = as.numeric(format(DF$DATE, "%Y"))
index_2001=DF$YEAR==2001
ggplot(DF[index_2001,],aes(DATE,LEVEL))+geom_line(aes(color="LEVEL"))



# generate a sequence of 100 numbers 
x <- seq(from=1,to=150,by = 1.5)
x
y<-dbinom(x,100,.5)
y
plot(x,y)

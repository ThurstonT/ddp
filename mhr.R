ggplot(data.frame(x=c(0,2)), aes(x)) +
  stat_function(fun=function(x)x^2, geom="line", aes(colour="square")) +
  stat_function(fun=exp, geom="line", aes(colour="exp"))

  + scale_colour_manual("Function", value=c("blue","red"), breaks=c("square","exp"))

# Data from https://www.brianmac.co.uk/maxhr.htm
y1=55
upp <- max(206.3-(0.711*y1), 206-(0.88*y1), 217-(0.85*y1), 202-(0.55*y1), 216-(1.09*y1))
lww <- min(206.3-(0.711*y1), 206-(0.88*y1), 217-(0.85*y1), 202-(0.55*y1), 216-(1.09*y1))

ggplot(data.frame(x=c(10,100)), aes(x)) +
  stat_function(fun=function(x)220-x, geom="line", colour="Blue", size=1) +  # Best known
  stat_function(fun=function(x)206.3-(0.711*x), geom="line", colour="Black", size=1) + # Londeree and Moeschberger
  stat_function(fun=function(x)206-(0.88*x), geom="line", colour="Red", size=1) +  # for women Dr. Martha Gulati et al
  stat_function(fun=function(x)217-(0.85*x), geom="line", colour="Orange", size=1) +  # for Miller
  
  stat_function(fun=function(x)202-(0.55*x), geom="line", colour="Brown", size=1) +  # UK - men 
  stat_function(fun=function(x)216-(1.09*x), geom="line", colour="Light Blue", size=1) +  # for Women 
  
  geom_vline(xintercept=y1, color="Green") +
  scale_colour_manual("Lgend title", values = c("Blue", "Black", "Red", "Orange", "Brown", "Lt. Blue"))

#  geom_title("Maximum Heart Rate for Your Age")


y1=100
upp <- round(max(206.3-(0.711*y1), 206-(0.88*y1), 217-(0.85*y1), 202-(0.55*y1), 216-(1.09*y1)),digits = 0)
lww <- round(min(206.3-(0.711*y1), 206-(0.88*y1), 217-(0.85*y1), 202-(0.55*y1), 216-(1.09*y1)), digits=0)

ggplot(data.frame(x=c(10,105)), aes(x)) +
  stat_function(fun=function(x)220-x, geom="line", aes(colour="Best Known"), size=1) +  # Best known
  stat_function(fun=function(x)206.3-(0.711*x), geom="line", aes(colour="Londeree &Moeschberger"), size=1) + # Londeree &Moeschberger
  stat_function(fun=function(x)217-(0.85*x), geom="line", aes(colour="Miller"), size=1) +  # for Miller 
  stat_function(fun=function(x)202-(0.55*x), geom="line", aes(colour="UK - Men"), size=1) +  # UK - men 
  stat_function(fun=function(x)216-(1.09*x), geom="line", aes(colour="UK - Women"), size=1) +  # for Women 
  stat_function(fun=function(x)206-(0.88*x), geom="line", aes(colour="Dr. Martha Gulati et al"), size=1) +  # for women Dr. Martha Gulati et al  
  scale_colour_manual("MHR Equations", values = c("Blue", "Black", "Red", "Orange", "Brown", "Light Blue"))+
  geom_vline(xintercept=y1, color="Green", size = 1)   +
  scale_x_continuous(name="Age", limits=c(10, 105)) +
  scale_y_continuous(name="Heart Rate", limits=c(85, 215)) +
  annotate("text",x=c(100),y=c(213), xmin= 95, label= paste("Age is",y1)) +
  annotate("text",x=c(100),y=c(206),xmin= 95,label= paste("Upper Max Heart Rate is",upp)) +
  annotate("text",x=c(100),y=c(199),xmin= 95,label= paste("Lower Max Heart Rate is",lww)) +
  ggtitle("Maximum Heart Rate")


#+ scale_y_continuous(name="Heart Rate", limits=c(10, 400))
#+ scale_y_continuous(name= "Heart Rate", limits=c(80, 250)) 
#+   theme(axis.title.x="Age")
# geom_vline(xintercept=y1, color="Green") +
# scale_colour_manual("Lgend title", values = c("Blue", "Black", "Red", "Orange", "Brown", "Lt. Blue"))


y1=85
upp <- round(max(206.3-(0.711*y1), 206-(0.88*y1), 217-(0.85*y1), 202-(0.55*y1), 216-(1.09*y1)),digits = 0)
lww <- round(min(206.3-(0.711*y1), 206-(0.88*y1), 217-(0.85*y1), 202-(0.55*y1), 216-(1.09*y1)), digits=0)

ggplot(data.frame(x=c(10,120)), aes(x)) +
   stat_function(fun=function(x)220-x, geom="line", aes(colour="Best Known"), size=1) +  # Best known
   stat_function(fun=function(x)206.3-(0.711*x), geom="line", aes(colour="Londeree &Moeschberger"), size=1) + # Londeree &Moeschberger
   stat_function(fun=function(x)217-(0.85*x), geom="line", aes(colour="Miller"), size=1) +  # for Miller 
   stat_function(fun=function(x)202-(0.55*x), geom="line", aes(colour="UK - Men"), size=1) +  # UK - men 
   stat_function(fun=function(x)216-(1.09*x), geom="line", aes(colour="UK - Women"), size=1) +  # for Women 
   stat_function(fun=function(x)206-(0.88*x), geom="line", aes(colour="Dr. Martha Gulati et al"), size=1) +  # for women Dr. Martha Gulati et al  
   scale_colour_manual("MHR Equations", values = c("Blue", "Black", "Red", "Orange", "Brown", "Light Blue"))+
 geom_vline(xintercept=y1, color="Green", size = 1)   +
   scale_x_continuous(name="Age", limits=c(10, 100)) +
   scale_y_continuous(name="Heart Rate", limits=c(100, 220)) +
   annotate("text",x=c(100),y=c(220), xmin= 95, label= paste("Age is",y1)) +
   annotate("text",x=c(100),y=c(213),xmin= 95,label= paste("Upper Max Heart Rate is",upp)) +
   annotate("text",x=c(100),y=c(206),xmin= 95,label= paste("Lower Max Heart Rate is",lww)) +
   ggtitle("Maximum Heart Rate")

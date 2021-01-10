airquality <- datasets::airquality 

####Top 10 rows and last 10 rows 
head(airquality,10)
tail(airquality,10)

######Columns 
airquality[,c(1,2)] 
df<-airquality[,-6] 
df
airquality$Wind 
mean(airquality$Wind) 

summary(airquality[,1]) 
###########Summary of the data######### 
summary(airquality$Temp) 
summary(airquality) 

########Visualization Techniques#############
plot(airquality$Wind) 
plot(airquality$Temp,airquality$Wind,type="p") 
plot(airquality) 

# points and lines  
plot(airquality$Wind, type= "1") # p: points, l: lines,b: both 
plot(airquality$Wind, 
              ylab = 'ozone Concentration', 
              xlab = 'No of Instances', 
              main = 'Ozone levels in NY city',      
              col = 'blue') 

# Horizontal bar plot
barplot(airquality$Ozone, 
        main = 'Ozone Concenteration in air',         
        ylab = 'ozone levels', col= 'blue',
        horiz = F,axes=T) # horizontal false and axes (vertical) true

#Histogram
hist(airquality$Temp)
hist(airquality$Temp,       
     main = 'Solar Radiation values in air',      
     xlab = 'Solar rad.', col='blue') 

#Single box plot 
boxplot(airquality$Temp,main="Boxplot")

# Multiple box plots 
boxplot(airquality[,1:4],main='Multiple')

#margin of the grid(mar),  
#no of rows and columns(mfrow),  
#whether a border is to be included(bty)  
#and position of the  
#labels(las: 1 for horizontal, las: 0 for vertical) 
#bty - box around the plot 
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="n") 
plot(airquality$Ozone) 
plot(airquality$Ozone, airquality$Wind) 
plot(airquality$Ozone, type= "l") 
plot(airquality$Ozone, type= "b") 
barplot(airquality$Ozone, 
        main = 'Ozone Concenteration in air',         
        xlab = 'ozone levels', col='green',horiz = TRUE) 
hist(airquality$Solar.R)
boxplot(airquality$Solar.R) 
boxplot(airquality[,0:4], main='Multiple Box plots') 
sd(airquality$Ozone,na.rm = T)

#1. MEMBUKA dan MELIHAT DATA
data(airquality)
head(airquality)

# 2. BUAT HISTOGRAM + DENSITY CURVE UNTUK VARIABEL WIND
hist(airquality$Wind,
     probability = TRUE, 
     breaks = 15,
     xlab = "Wind", 
     ylab= "Density",
     main = "Histogram dan Density Wind",
     col = "pink")
     
# Tambahkan garis kepadatan
 lines(density(airquality$Wind, na.rm = TRUE),
       col = "blue", 
       lwd = 2)
 
 # 3. BOXPLOT DAN STEM-AND-LEAF UNTUK VARIABEL WIND
 boxplot(airquality$Wind,horiz=TRUE,
         main= "Boxplot Wind",
         ylab= "Wind",
         col = "red")
 
 #stem and leaf
 stem(airquality$Wind)
 
 # 4. SCATTER PLOT WIND VS TEMP
 plot(airquality$Wind, airquality$Temp,
      main = "Scatter Plot Wind vs Temp",
      xlab = "Wind",
      ylab = "Temp",
      pch = 19, 
      col = "blue")
 abline(lm(Temp ~ Wind, data = airquality), col = "red", lwd = 2)
 
 
 
 
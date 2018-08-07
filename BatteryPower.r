#print(getwd())

data <- read.csv("arquivoFinal.csv")
x <- data$Time12
y <- data$BatteryPower

png(file = "BatteryChart.png")

plot(x,y, type= "b",col= "tomato", xlab= "Time  [ms]", ylab = "Battery Power [uW]")


dev.off() 

#quit()

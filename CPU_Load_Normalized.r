#print(getwd())

data <- read.csv("arquivoFinal.csv")
x <- data$Time22
y <- data$CPULoadNormalized

png(file = "CPULoadNormalized.png")

plot(x,y, type= "b",col= "steelblue4", xlab= "Time", ylab = "CPU Load (Normalized)")


dev.off() 

#quit()

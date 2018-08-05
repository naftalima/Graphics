#print(getwd())

data <- read.csv("arquivoFinal.csv")
x <- data$Time1
y <- data$MemoryUsage

png(file = "MemoryUsage.png")

plot(x,y, type= "b",col= "orange1", xlab= "Time", ylab = "Memory Usage")


dev.off() 

#quit()

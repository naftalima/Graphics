#print(getwd())

data <- read.csv("arquivoFinal.csv")
x <- data$Time21
y <- data$GPULoad

png(file = "GPULoad.png")

plot(x,y, type= "b",col= "forestgreen", xlab= "Time", ylab = "GPU Load")


dev.off() 

#quit()

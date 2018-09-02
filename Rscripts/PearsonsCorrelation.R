library(ISwR)
data <- read.csv("arquivoFinal.csv")
x <- data$CPULoadNormalized
y <- data$BatteryPower
cor(x,y)

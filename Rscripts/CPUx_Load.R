#print(getwd())

data <- read.csv("arquivo.csv")

png(file = "CPUxLoad.png")

par(mfcol = c(3,3))

plot( data$Time0, data$CPU1Load, type= "b",col= "magenta4", xlab= "Time  [ms]", ylab = "CPU1 Load [%]")

plot( data$Time3, data$CPU2Load, type= "b",col= "magenta4", xlab= "Time  [ms]", ylab = "CPU2 Load [%]")

plot( data$Time6, data$CPU3Load, type= "b",col= "magenta4", xlab= "Time  [ms]", ylab = "CPU3 Load [%]")

plot( data$Time9, data$CPU4Load, type= "b",col= "magenta4", xlab= "Time  [ms]", ylab = "CPU4 Load [%]")

plot( data$Time10, data$CPU5Load, type= "b",col= "magenta4", xlab= "Time  [ms]", ylab = "CPU5 Load [%]")

plot( data$Time13, data$CPU6Load, type= "b",col= "magenta4", xlab= "Time  [ms]", ylab = "CPU6 Load [%]")

plot( data$Time17, data$CPU7Load, type= "b",col= "magenta4", xlab= "Time  [ms]", ylab = "CPU7 Load [%]")

plot( data$Time19, data$CPU8Load, type= "b",col= "magenta4", xlab= "Time  [ms]", ylab = "CPU8 Load [%]")

dev.off() 

#quit()


# Chart
Editing the Trepn™ data to use R


DATA COLLECTED:


Battery power  – Power the battery consumes;

![batterychart](https://user-images.githubusercontent.com/12816073/44620970-62ad5700-a874-11e8-8d23-820693783e86.png)

CPU Load ( Normalized )  – Normalized CPU load across all cores;

![cpuloadnormalized](https://user-images.githubusercontent.com/12816073/44620994-ccc5fc00-a874-11e8-8513-eafac4f86131.png)


CPUx Load  – Load for each CPU core ; x -> [1:8]

![cpuxload](https://user-images.githubusercontent.com/12816073/44620983-99836d00-a874-11e8-81bd-e7284f59ba95.png)


GPU Load  – Usage for the 3D GPU core;

![gpuload](https://user-images.githubusercontent.com/12816073/44620990-b5870e80-a874-11e8-808a-7b970df9a78c.png)

Memory usage – Total system memory usage;

![memoryusage](https://user-images.githubusercontent.com/12816073/44620979-82dd1600-a874-11e8-9521-348ba5c99c52.png)



EXAMPLE Ubuntu Terminal:

$ Rscript R\ arquivos/CPUxLoad.R

$ Rscript R\ arquivos/BatteryPower.r

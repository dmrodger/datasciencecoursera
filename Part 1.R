pollutantmean <- function(directory = "specdata", pollutant = "sulfate", id = 1:332) {
	setwd("C:/Users/Dylan/Desktop/Coursera R")
	filevector <- formatC(id, width = 3, flag = "0")
	filenames <- paste0(filevector, ".csv", sep = "")
	filedirectory <- file.path(directory, filenames)
	poldata <- data.frame()
	for(i in 1:length(id)) {
		dataset <- read.csv(filedirectory[[i]], header = TRUE)
		poldata <- rbind(poldata, dataset)
	}
	polmean <- mean(poldata[[pollutant]], na.rm = T)
	polmean
}
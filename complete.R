complete <- function(directory = "specdata", id = 1:332) {

	setwd("C:/Users/Dylan/Desktop/Coursera R")
	filevector <- formatC(id, width = 3, flag = "0")
	filenames <- paste0(filevector, ".csv", sep = "")
	filedirectory <- file.path(directory, filenames)
	nobs <- vector()

	for(i in 1:length(id)) {
		dataset <- read.csv(filedirectory[[i]], header = TRUE)
		nobs[i] <- sum(!(is.na(dataset$sulfate)) & !(is.na(dataset$nitrate)))
		
	}
	data.frame(id, nobs)
}
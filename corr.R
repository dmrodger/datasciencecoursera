corr <- function(directory, threshold = 0) {

	setwd("C:/Users/Dylan/Desktop/Coursera R/specdata")
	files <- c(dir())

	result <- numeric(0)
	final <- vector()
	
	for (i in 1:332) {
		current_file <- read.csv(files[i], header = TRUE)
		result <- current_file[complete.cases(current_file),]
		if(nrow(result)>threshold) {
			final <- append(final,cor(result$nitrate,result$sulfate))
		}
	}
	
	return(final)
}

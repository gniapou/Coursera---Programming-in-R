pollutantmean <- function(directory, pollutant, id = 1:332) {
        setwd(file.path("C:/Users/Alexandre/Documents/R/Docs/",directory))
        files_full <- list.files(getwd(), full.names = TRUE) 
        data <- data.frame()
        
        for (i in id) {
                data <- rbind(data, read.csv(files_full[i]))
        }
        
        mean(data[, pollutant], na.rm = TRUE)
        }
                
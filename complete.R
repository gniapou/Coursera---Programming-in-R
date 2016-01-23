complete <- function(directory, id = 1:332) {
        setwd(file.path("C:/Users/Alexandre/Documents/R/Docs/",directory))
        files_full <- list.files(getwd(), full.names = TRUE) 
        data <- data.frame()
        
        for (i in id) {
                moni_i <- read.csv(files_full[i])
                nobs <- sum(complete.cases(moni_i))
                tmp <- data.frame(i, nobs)
                data <- rbind(data, tmp)
        }
        names(data)=c("id","nobs")
        data
}

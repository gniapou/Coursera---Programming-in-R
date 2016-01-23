corr <- function(directory, threshold = 0) {
        setwd(file.path("C:/Users/Alexandre/Documents/R/Docs/",directory))
        files_full <- list.files(getwd(), full.names = TRUE) 
        data <- vector(mode = "numeric", length = 0)
        
        for (i in 1:length(files_full)) {
                moni_i <- read.csv(files_full[i])
                csum <- sum((!is.na(moni_i$sulfate)) & (!is.na(moni_i$nitrate)))
                if (csum > threshold) {
                        tmp <- moni_i[which(!is.na(moni_i$sulfate)), ]
                        submoni_i <- tmp[which(!is.na(tmp$nitrate)), ]
                        data <- c(data, cor(submoni_i$sulfate, submoni_i$nitrate))
                }
        }
        
        data
}

        
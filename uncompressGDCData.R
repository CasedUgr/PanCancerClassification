uncompressGDCData <- function(dirname, file, sep = "\t"){
  
  tsvData <- read.csv(file = paste(dirname,"/",file, sep = ""), sep = sep)
  
  for(i in seq_len(nrow(tsvData))){
        
    if(file.exists(paste("CountFiles","/",tsvData$File.ID[i],"/",tsvData$File.Name[i], sep = ""))){
        R.utils::gunzip(paste("CountFiles","/",tsvData$File.ID[i],"/",tsvData$File.Name[i], sep = ""))
    }
  }
  
  tsvData$File.Name <- gsub('.{3}$', '', tsvData$File.Name)  
 
  return(tsvData)
  
}

library(rEDM)


input <- function(inputfile) {
  tsdata <<- read.csv(inputfile, header = TRUE);
}


run <- function() {
  set.seed(1234);
  results <<- ccm(tsdata, num_samples=nrow(tsdata), lib_sizes=nrow(tsdata), RNGseed=1234)
}

output <- function(outputfile) {
  write.table(results[,9:11], file=outputfile, sep=",")
}




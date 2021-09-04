data <- matrix(rnorm(100, 0, 10), nrow = 10, ncol = 10)           # Create example data
colnames(data) <- paste("col", 1:10)                             # Column names
rownames(data) <- paste("row", 1:10)   
View (data)
heatmap(data, Rowv = NA, Colv = NA)


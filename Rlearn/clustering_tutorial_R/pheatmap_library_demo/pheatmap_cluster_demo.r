library(pheatmap)
library(Cairo)


## read table data
data <- read.csv("exprs_data.csv", header = TRUE)

# extract data matrix
mat = as.matrix(data[,2:ncol(data)])
## give gene names as row names for the heatmap
row.names(mat) = data$genes


# plot heatmap for screen. Default options --  try this first. Even the default plot is cute.
pheatmap(mat)


## plot with many options
pheatmap(mat ,scale = "row", clustering_distance_rows="correlation", cluster_rows=TRUE, clustering_distance_cols="correlation", cluster_cols=TRUE, color = colorRampPalette(c("red","white","green")) (100),margins=c(8,8),fontsize = 10, cex = 1.0, cellwidth = 10, cellheight = 10, show_rownames=TRUE, main="")

##-----------------------------------------------------------------------------------------------------------

## Uncomment the following section if you want to write the above plot into png image file using Cairo library

##------------------------------------------------------------------------------------------------------------

# file name for heatmap image 

    plotfile <- "expression_heatmap.png"


## plot heatmap for *.png file using Cairo

  Cairo(
    file=plotfile,
    type="png",
    width = 15,
    height = 20,
    units = "cm",
   dpi = 500,
    pointsize = 3,
    compression = c("lzw")
    )

 pheatmap(mat ,scale = "row", clustering_distance_rows="correlation", cluster_rows=TRUE, clustering_distance_cols="correlation", cluster_cols=TRUE, color = colorRampPalette(c("red","white","green")) (100),margins=c(8,8),fontsize = 10, cex = 1.0, cellwidth = 12, cellheight = 12, show_rownames=TRUE, main="")

 dev.off()  ## two switch off device opened. Without this, plot wont be written

#-----------------------------------------------------------------------------------------------------------------

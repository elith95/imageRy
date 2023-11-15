im.classify <- function(input_image, num_clusters = 3, seed = NULL) {
  
  # Check if input is a SpatRaster
  if(!inherits(input_image, "SpatRaster")) {
    stop("input_image should be a SpatRaster object.")
  }
  
  # Get the raster values 
  df_r <- as.data.frame(input_image, xy = T)
  
  # Set seed if provided
  if (!is.null(seed)) {
    set.seed(seed)
  }
  
  # Classify using kmeans
  kmeans_res <- kmeans(df_r[,3:ncol(df_r)], centers = num_clusters)
  
  # Set values to a raster based on kmeans result
  classified_image <- rast(data.frame(df_r[,1:2], kmeans_res$cluster))
  
  return(classified_image)
}




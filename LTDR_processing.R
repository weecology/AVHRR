library(gdalUtils)
library(raster)

out.files <- list.files(getwd(), pattern="hdf$", full.names=FALSE) 
#create a list with names of the .hdf files (they should be stored in your workspace)

gdal_translate(out.files,"Your_Image_Out.tif",sd_index=1) 
#extracts the NDVI band (sd_index=1) and converts to .tiff

r <- raster("Your_Image_Out.tif")
#creates raster that can now be worked with


prefix = substr(out.files, 1,38) #extract the prefix
sensor = substr(prefix, 18,20) #sensor/sattelite
year = substr(prefix, 10,13)
doy = substr(prefix, 14,16)




#TODO: crop .tif for Portal and extract values
#TODO: modify code to loop over files
#TODO: figure out how to bulk download the .hdf files

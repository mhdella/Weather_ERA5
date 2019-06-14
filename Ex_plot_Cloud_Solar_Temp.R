# https://gis.stackexchange.com/questions/287873/extracting-netcdf-climate-data-for-multiple-locations-at-different-times-using-r
# https://gis.stackexchange.com/questions/238991/conversion-of-netcdf-file-to-csv-file-using-r-programming
# https://cds.climate.copernicus.eu/cdsapp#!/dataset/reanalysis-era5-single-levels?tab=overview
library(raster)
library(ncdf4)
### "t2m" 2-m temperature (Kelvin, C=K-273.15) 
### "tcc" Total cloud cover (%)
### "ssrd" Surface solar radiation downwards (J/m2)

tc <- brick("Hokk_Ens_Dec2017_T_SSRD_CC.nc",varname = "tcc")
ss <- brick("Hokk_Ens_Dec2017_T_SSRD_CC.nc",varname = "ssrd")
tem <- brick("Hokk_Ens_Dec2017_T_SSRD_CC.nc",varname = "t2m")
plot(tc[[1]])
plot(ss[[1]])
plot(tem[[1]])

tab <- as.data.frame(ss[[1]], xy = TRUE)

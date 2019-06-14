# https://gis.stackexchange.com/questions/287873/extracting-netcdf-climate-data-for-multiple-locations-at-different-times-using-r
# https://gis.stackexchange.com/questions/238991/conversion-of-netcdf-file-to-csv-file-using-r-programming
# https://cds.climate.copernicus.eu/cdsapp#!/dataset/reanalysis-era5-single-levels?tab=overview
library(raster)
library(ncdf4)
### "t2m" 2-m temperature (Kelvin, C=K-273.15) 
### "tcc" Total cloud cover (%)
### "ssrd" Surface solar radiation downwards (J/m2)

#### r <- as(brick("Hokk_ssrd_cc_2017_hr00.nc", varname = "Surface solar radiation downwards", stopIfNotEqualSpaced=FALSE), "SpatialPointsDataFrame")
# r <- brick("Hokk_ssrd_cc_2017_hr00.nc")
# r <- brick("Europe_ssrd_cc_2017_hr00.nc")
# r <- brick("Hokk_Ens_aggreg_S1_S2_2017_2018.nc") #not work?!

# r <- brick("Hokk_S1_Ens_2017_2018.nc")
# r <- brick("Hokk_S2_Reanalyis_2017.nc",varname = "ssrd")

# r <- brick("Hokk_Relysis_Dec2017_T_SSRD_CC.nc",varname = "ssrd")
# r <- brick("Hokk_Ens_Dec2017_T_SSRD_CC.nc",varname = "tcc")
# r <- brick("Hokk_Ens_Dec2017_T_SSRD_CC.nc",varname = "ssrd")
r <- brick("Hokk_Agg_Ens_2017_2018_T_SSRD_CC.nc")
r

plot(r[[1]])
tab <- as.data.frame(r[[1]], xy = TRUE)

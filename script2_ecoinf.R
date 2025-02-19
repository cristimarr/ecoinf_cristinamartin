library(sf)
library(here)
sn_st <- st_read(here::here("../ecoinf_cristinamartin/mat_sig/sn_wdpa.shp"))
plot (sn_st)
plot(sn_st["NAME"], col=NA, border= "deeppink", main="", axes = TRUE)
library(tidyverse)
ifn_sn <- read_csv(here("../ecoinf_cristinamartin/mat_sig/ifn_sn_geo.csv"))

head(ifn_sn)  

ifn_sn_geo <- st_as_sf(ifn_sn, 
                       coords = c("x", "y"), 
                       crs = 23030)

plot(st_geometry(ifn_sn_geo), pch=19, col="yellow", cex=0.5)
sn_st |> st_transform(23030) |> 
  plot(col = "NA", add = TRUE)

#' @title Example Landsat NDVI and ALOS PALSAR raster data for a pinus caribea plantation in Fiji
#' 
#' @description Landsat NDVI (2005 - 2012), ALOS PALSAR HV, HH and HVHH-ratio (2007 - 2010) time series for a pinus caribea planatation. Landsat NDVI data is provided with original per pixel missing data and with 90 percent per pixel missing data. Three-monthly harvesting refernece data are provided.
#' 
#' @usage data(fiji)
#' 
#' @source Reiche, J., Verbesselt, J., Hoekman, D. H. & Herold, M. (2015): Fusing Landsat and SAR time series to detect deforestation in the tropics. Remote Sensing of Environment. 156, 276-293. DOI: 10.1016/j.rse.2014.10.001. \url{http://www.sciencedirect.com/science/article/pii/S0034425714003885} 
#' 
#' @author Johannes Reiche
#' 
#' @examples
#' ## load example data
#' data(fiji)
#'
#' ## show reference data
#' plot(loggedforest)
#' plot(stableforest,legend=FALSE,add=TRUE)
#'
#' ## extract pixel time series
#' #option 1: define cell  
#' cell<-2901
#' #option 2: select cell  
#' plot(rhv,3)
#' cell <- click(rhv, n=1, cell=TRUE)[,1]
#'
#' #create time series using bfastts
#' hv <- bfastts(as.vector(rhv[cell]),as.Date(getZ(rhv)),type=c("irregular"))
#' hh <- bfastts(as.vector(rhh[cell]),as.Date(getZ(rhh)),type=c("irregular"))
#' hvhh <- bfastts(as.vector(rhvhh[cell]),as.Date(getZ(rhvhh)),type=c("irregular"))
#' ndvi <- bfastts(as.vector(rndvi[cell]),as.Date(getZ(rndvi)),type=c("irregular"))
#' ndvi90 <- bfastts(as.vector(rndvi90[cell]),as.Date(getZ(rndvi90)),type=c("irregular"))
#' 
#' #plot time series
#' plot2ts(ndvi,hv,lab_ts1="Landsat NDVI [MD=org]",lab_ts2="PALSAR HV [dB]")
#' plot2ts(ndvi90,hv,lab_ts1="Landsat NDVI [MD=90]",lab_ts2="PALSAR HV [dB]")
#' 
#' @import bfast
#' @import tseries
#' @name fiji

NULL
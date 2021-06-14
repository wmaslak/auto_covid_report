install.packages("COVID19")
install.packages('wbstats')

# load the package
library("COVID19")
library("wbstats")
library("roxygen2")
library("shiny")

gmr <- "https://www.gstatic.com/covid19/mobility/Global_Mobility_Report.csv"
x<- covid19(country = c('Poland','Germany'), 
            wb = c("gdp_per_capita" = "SH.UHC.OOPC.10.ZS" ),
            gmr = gmr)



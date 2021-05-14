install.packages("COVID19")
install.packages('wbstats')

# load the package
library("COVID19")
library("wbstats")

gmr <- "https://www.gstatic.com/covid19/mobility/Global_Mobility_Report.csv"
x<- covid19(country = 'Poland', 
            wb = c("gdp_per_capita" = "NY.GDP.PCAP.PP.CD" ),
            gmr = gmr)

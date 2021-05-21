# Automated COVID reporting tool

##### submitted as a final project for the Reproducible Research course (WNE UW, 2021) 

---
### Quick intro
This tool gives users a simple way to create appealing reports that allow readers to observe the pandemic across different countries and periods. It is intended to be used by all those who want to gain and share insight into the basic, data-based facts about the COVID19 pandemic without unnecessary fuss.

The project's central guiding question can be stated as follows:

> *Given a **set of countries** which differ in selected **socio-economic characteristics** and a **fixed period**,can we spot any simmilarities or differences in how the pandemic situation evolved?*

#### Technical quick intro 

- Most important package used in this project is the ```COVID19``` [[1]](#1) package which is part of a wonderful COVID-19 Data Hub[^1] project.

- The reports are generated as .html files which guarantee optimal balance between portability and interactivity.

- The generation uses Rmarkdown and allows for user customization.

## Report's contents

### Data

A substantial part of the data used for the report can be customized by the user.

Namely, before the report is generated the user can specify the following parameters:

 - countries 
 - time period
 - measures of mobility
 - measures of socio-economic characteristics
 - measures of restrictions
 - vintage data
 - sections
 - include plots
 - include text
 
The following paragraphs describe each parameter in detail

#### Countries

Countries for which the data will be included in the report.
Please, be sure to firstly examine the [ list of supported countries.](https://covid19datahub.io/))

**Format:** *A comma separated list of countries alpha-3 ISO codes (e.g. ```FRA,POL``` for France and Poland)* 


#### Time period

Start and end dates defining the time range for which the pandemic data will be used.

**Format:** *The dates are selected in relevant fields* 

#### Measures of mobility 

Names of the mobility measures from [Google Mobility Reports](https://www.google.com/covid19/mobility/) to be used.

**Format:** *A comma separated list of columns or ```all``` to use all of available measures.*

Available measures (see [here](https://www.google.com/covid19/mobility/) for details):

 - "retail_and_recreation_percent_change_from_baseline"
 - "grocery_and_pharmacy_percent_change_from_baseline" 
 - "parks_percent_change_from_baseline"                
 - "transit_stations_percent_change_from_baseline"     
 - "workplaces_percent_change_from_baseline"           
 - "residential_percent_change_from_baseline" 
 

WARNING: The mobility reports [webpage](https://www.google.com/covid19/mobility/) claims that the data will be available for a limited period of time. Therefore, this feature may become unavailable in the future. 

#### Measures of socio-economic characteristics
 
 A list of arbitrary indicators available in the [World Bank Open Data](https://data.worldbank.org/). The indicator code can either be retrieved from the URL (e.g https://data.worldbank.org/indicator/**SH.UHC.OOPC.10.ZS**) or from ID fields in the Details pop-up on the indicator's page.
 
**Format:** *A comma separated list of indicator codes*

#### Measures of restrictions 

Policy indicators to be used in the report. See [here](https://covid19datahub.io/articles/doc/data.html#policy-measures) for detail and available measures.

**Format:** *A comma separated list of variable names or all to use ```all``` of them*

#### Vintage data

A logical value to be passed directly to the ```covid19()``` function. Use ```True``` to get the data available at the end of the selected time range.

From docs: 
> Retrieve the snapshot of the dataset that was generated at the end date instead of using the latest version

Useful for reproducibility purposes.

**Format:** *Checkbox*

#### Sections, plots, text

Select elements to include in the reports.

**Format:** *Checkbox*

### Structure 

The report has three main sections and one optional section which is available only for selected periods titled as:

0. Descriptive statistics
1. Countries reactions
2. Differences in countries vs. differences in COVID
3. Vaccinations (optional)



The following paragraphs describe each of the sections in detail.

#### 0. Descriptive statistics

This section aims to provide


[^1]: https://covid19datahub.io/

## References
<a id="1">[1]</a> 
Guidotti, E., Ardia, D., (2020), "COVID-19 Data Hub", 
Journal of Open Source Software 5(51):2376, 
doi: 10.21105/joss.02376.

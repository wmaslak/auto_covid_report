# Automated COVID reporting tool

##### submitted as a final project for the Reproducible Research course (WNE UW, 2021) 

---
## Quick intro

#### Usage quick intro

1. Download the whole repo
2. Make sure to have the `renv` package installed 
3. Startup the project using ``

#### Content quick intro

This tool gives users a simple way to create appealing reports that allow readers to observe the pandemic across different countries and periods. It is intended to be used by all those who want to gain and share insight into the basic, data-based facts about the COVID19 pandemic without unnecessary fuss.

The project's central guiding question can be stated as follows:

> *Given a **set of countries** which differ in selected **socio-economic characteristics** and a **fixed period**,can we spot any simmilarities or differences in how the pandemic situation evolved?*

#### Technical quick intro 

- Most important package used in this project is the ```COVID19``` [[1]](#1) package which is part of a wonderful COVID-19 Data Hub[^1] project.

- The reports are generated as .html files which guarantee optimal balance between portability and interactivity.

- The generation uses Rmarkdown and allows for user customization.

# Report's contents

## Data

A substantial part of the data used for the report can be customized by the user.

Namely, before the report is generated the user can specify the following parameters:

 - countries 
 - time period
 - measures of socio-economic characteristics
 - measures of restrictions
 - vintage data
 - sections
 
 
The following paragraphs describe each parameter in detail

### Countries

Countries for which the data will be included in the report.
Please, be sure to firstly examine the [ list of supported countries.](https://covid19datahub.io/))

**Format:** *A comma separated list of countries alpha-3 ISO codes (e.g. ```FRA,POL``` for France and Poland)* 


### Time period

Start and end dates defining the time range for which the pandemic data will be used.

**Format:** *The dates are selected in relevant fields* 


### Measures of socio-economic characteristics
 
 A list of arbitrary indicators available in the [World Bank Open Data](https://data.worldbank.org/). The indicator code can either be retrieved from the URL (e.g https://data.worldbank.org/indicator/**SH.UHC.OOPC.10.ZS**) or from ID fields in the Details pop-up on the indicator's page.
 
**Format:** *A comma separated list of indicator codes*

### Measures of pandemic

COVID-19 variables to be used in the report. See [here](https://covid19datahub.io/articles/doc/data.html#covid-19-variables) for details and available measures.

**Format:** *Selection from a list*

### Measures of restrictions 

Policy indicators to be used in the report. See [here](https://covid19datahub.io/articles/doc/data.html#policy-measures) for details and available measures.

**Format:** *Selection from a list*

### Vintage data

A logical value to be passed directly to the ```covid19()``` function. Use ```True``` to get the data available at the end of the selected time range.

From docs: 

> Retrieve the snapshot of the dataset that was generated at the end date instead of using the latest version

Useful for reproducibility purposes.

**Format:** *Checkbox*

### Sections, plots, text

Select elements to include in the reports.

**Format:** *Checkbox and list selection*

## Structure 

The report has three main sections and one optional section which is available only for selected periods titled as:

1. Introduction
2. Countries reactions
3. Differences in countries vs. differences in COVID
4. Vaccinations (can be generated only for periods after 2021-01-02)

Each section can be included or excluded from the report- ( *WARNING:-
technically, one can generate an empty report* ). 

The following paragraphs briefly describe each of the sections.

### 1. Introduction

This section aims to provide a sneak-peak of the data that is used in further sections
of the report. It includes summary of the chosen parameters as well as some basic
descriptive stats and visualizations.

### 2. Countries reactions

In this section compares countries' policy reactions to the pandemic focusing on
the timing and severity of restrictions imposed. Depending on the chosen parameters, user can view plots of 
the restricitons measures both with respect to time and the number of confirmed COVID19 cases per 100k population.

### 3. Differences in countries vs. differences in COVID

This section aims to provide intuitions whether in the group of analyzed countries
the course of pandemic was similar for similar countries. Firstky the countries are grouped into clusters
based on the chosen measures of pandemic. Clustering is performed using the *Dynamic Time Warping* method implemented in the `dtwclust`[[2]](#2) R package.
Then, user can inspect both the dendrograms of obtained clusterings and cluster assignments of time series. 
In the end user can visually examine if the chosen World Bank indicators differ for each cluster.


### 4. Vaccinations

This section can be generated only for periods which include the period after 2021-01-02 for which 
vaccination data is available. It basically compares the speed of vaccination process across countries.
Plots for both absolute counts of doses administered and per 100k population are provided.


[^1]: https://covid19datahub.io/

## References
<a id="1">[1]</a> 
Guidotti, E., Ardia, D., (2020), "COVID-19 Data Hub", 
Journal of Open Source Software 5(51):2376, 
doi: 10.21105/joss.02376.

<a id="2">[2]</a> 
Sarda-Espinosa A (2019). dtwclust: Time Series Clustering Along with Optimizations for the Dynamic Time Warping Distance. R package version 5.5.6, [link](https://CRAN.R-project.org/package=dtwclust)

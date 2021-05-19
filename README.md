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

## Report's structure

The report has three main sections and one optional section which is available only for selected periods titled as:

0. Descriptive statistics
1. Countries reactions
2. Differences in countries vs. differences in COVID
3. Vaccinations (optional)

The following paragraphs describe each of the sections in detail.

### 0. Descriptive statistics




[^1]: https://covid19datahub.io/

## References
<a id="1">[1]</a> 
Guidotti, E., Ardia, D., (2020), "COVID-19 Data Hub", 
Journal of Open Source Software 5(51):2376, 
doi: 10.21105/joss.02376.

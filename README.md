## Readme / Leeme / Lis-moi

This is a public repository with the original data and preliminary analysis used in the prepublication:

_Loss of habitat and connectivity for the Spectacled Bear Tremarctos ornatus in Colombia, and evaluation of the role of Protected Areas and communal territories in its conservation_

The project is under development and is being executed by Cristian A. Cruz-Rodríguez, Sergio Rojas, Maria C. Machado-Aguílera y Diego A. Zarrate-Charry

## Contents

The dataset contains

- 00-rawData: The original Data used in the publication
- 01-scripts Contains the file "Script_connectivity_andean_bear.R" with the steps to create the resources for the manuscript
- 02-outData: It contains the data obtained after applying the analysis [it is developing]
- 03 Figures: It has the figures used in the manuscript 
- 04-Manuscript: Contains the R Markdown with the manuscript in the "manuscript.Rmd" file. Also, have the bibliography in "mybibifile.bib", and the Cumulative Layout Shift in "elsarticle.cls" file.
- renv: It has the local storage created to reproducibility the data. See instructions after.

## Instructions

To reproduce the information described in the publication you need to the "rawData" folder with the dataset "BM_all_data2.csv", and the files "connectivity_andean_bear.Rproj" and "Script_connectivity_andean_bear.r"

Open the _"connectivity_andean_bear.Rproj"_ and after _"Script_connectivity_andean_bear.r"_ file and follow the instructions indicated there.

To guarantee that the tables and figures are generated correctly, We encourage the use of the renv package to obtain the same version used to create the graphical outputs. For this it can follow the instructions described as follows.

Install _renv_ package, for this use the following commands:
a. install.packages("remotes") 
b. remotes::install_github("rstudio/renv")

Once _renv_ is installed, you can restore the project and the libraries used. To do this you must use the command "renv:restore".

Open the "connectivity_andean_bear.Rproj" and after _"Script_connectivity_andean_bear.r"_ file and follow the instructions indicated there.

NOTE: The script where designed using MacOS. Vetting for reproducibility with Microsoft Windows and Linux is in progress.

## Repository Structure

The following tree represents the files that are organized in this repository

```
project_root/
├── 00-rawData
│   ├── BM_all_data2.csv
│   └── datadictionary.csv
├── 01-scripts
│   └── Script_connectivity_andean_bear.R
├── 02-outData
├── 03-figures
│   ├── Figure1.png
│   ├── Figure1.tif
│   └── figure2.pdf
├── 04-manuscript
│   ├── elsarticle.cls
│   ├── manuscript.Rmd
│   └── mybibfile.bib
├── README.md
├── connectivity_andean_bear.Rproj
├── renv
│   ├── activate.R
│   ├── library
│   ├── settings.json
│   └── staging
└── renv.lock
```

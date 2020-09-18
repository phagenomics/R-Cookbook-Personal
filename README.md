# R-Cookbook-Personal
Personal R-Cookbook. 

This is a short cookbook with instructions to run some basic stuff on R. 

[HeatMap.R](SCRIPTS/HeatMap.R)

This is a basic R scripts that generates a heatmap. Input is a table of species and gene abundances. 

[PanGenome.R](SCRIPTS/PaneGenome.R)

This is a basic R script that takes as an input a table of species or genes and returns a collectors curve (or pan Genome if tables is genes)
and a curve with the core genome or number of species/genes shared by all samples. 

[Seasonality.R](SCRIPTS/Seasonality.R)

This R script takes as an input a table of abundances for species/genes and returns the distances of all vs all organized as a fucntion of the time gape between sampling points. 

[LinerTimeSeries.R](SCRIPTS/LinearTimeSeries.R)

This is similar as above but it plots all against all and not only organized by different pre-secified time gaps. 

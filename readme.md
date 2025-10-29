This folder contains an R script that quickly and automatically processes large amounts of data from an ImageJ macro.



**FIJIMacro.txt**



This file contains some commands for using the ImageJ software in order to extract descriptive measures from a video file. The input file is a .lif video file from TIRF-M. You have to manually detect the exocytosis events by drawing circles around them. The setTool function measures values such as mean, minimum, maximum and median fluorescence intensity during time. The output file is a .csv file with the parameters listed in columns and time listed in rows.



**Script.R**



This R script performs an automatic extraction of measures of interest from .csv files. The input files are the.csv files provided by the previous ImageJ macro. All the files must be in a unique directory. For each file, the script retrieves the columns of interest named "Mean1", "Mean2", etc., and calculates a normalized intensity in function of time. The output is a file containing the columns "time" and "normalized intensity" calculated for each input file.



**TestR directory**



The TestR directory contains 2 example files in .csv format on which the R script can be run. Each file contains time and measures in rows.


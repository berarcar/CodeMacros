# CodeMacros

This folder contains a R script allowing to quickly and automatically process a large amount of data from an ImageJ macro.

FIJIMacro.txt

This file contains some commands to use the ImageJ software in order to extract descriptive measures from a video file. The input file is a video in .lif format where you can see a lot of vesicles. You have to manually detect the vesicles by drawing circles around them. The setTool function mesure a lot of values like mean, min, max, median. The output file is a .csv file with all the vesicles in rows and all the measures in columns.
 
Script.R

This R script performs an automatic extraction of measures of interest from .csv files.
The input files are the.csv files given by ImageJ. 
All the files must be in a unique directory. For each file, the script retrieves the columns of interest named "Mean1", "Mean2", etc., and calculates a normalized intensity in function of time. 
The output is a file filled with the colums "time" and "normalized intensities" calculted for each input file.

TestR directory

The TestR directory contains 2 examples files in .csv format on which the R script can be run. Each file contains the vesicles in row and all the measures in column.

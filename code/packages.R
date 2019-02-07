#This line of code installs the pacman page if you do not have it installed - if you do, it simply loads the package
if (!require(pacman)) install.packages("pacman")

#Add all packages here
pacman::p_load('readr', 'tidyr', 'dplyr', 'stringr')

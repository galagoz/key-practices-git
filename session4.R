###########################
Session 4
Gokberk Alagoz
###########################

# 1. Prepare Environment ------------
#Set up your project by loading your packages, e.g.:
library(package)

# 2. Load Data  ---------------------
#Set the working directory and load the data, e.g.:
setwd("directory")
data <- read.delim("data.csv", header = TRUE, sep = ",")

# 3. Data Preparation ---------------
# Make variables ready to work on, e.g.:
data <- data %>%
  select(ppID, condition, trial, RT) %>%
  mutate(condition = as.factor(condition), target = as.factor(target))

# Remove NAs
data <- na.omit(data)

# Explore data, e.g.:
summary(data)

# 4. Data Analysis ------------------
# Analysis (can be a simple analysis), e.g. a one-way ANOVA, within-subjects:
anovaRTbycategory <- aov(RT ~category+error(ppID/category), data = analysis_anova)
summary(anovaRTbycategory)
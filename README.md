# Exploratory-Data-Analysis-on-Resume-data

### Project Description:
Employers use resumes to get a deeper understanding of candidate skills, strengths and experience. Your resume should reflect achievements, awards, education, experience and any other outstanding accomplishments that align with your career path and goals.

### About the Dataset:
### Data description:
This is a cross-section data about resume, call-back and employer information for 4,870 fictitious
resumes sent in response to employment advertisements in Chicago and Boston in 2001, in a
randomized controlled experiment.

### Data preprocessing:
- Firstly, the data set was imported using read.csv. The original dataset is read as Datafinal .
- To make better analysis, the  categorical variables “yes and no” were changed to numerical values of 1 and 0 respectively in excel using find and replace. This data is imported and read as Datafinal1.
- In order to find if there are missing values, [which(is.na(Datafinal))] was used. But, it gave the output 0 indicating there aren’t any missing values.
- By using str(Datafinal) , a compact structure of the dataset was obtained, which makes the further analysis simple based on if the variable is numeric or categorical.
- Other commands like head(Datafinal) to obtain the initial rows, summary(Datafinal) to produce result summaries of various model fitting functions also were used.

### Methodologies used:
- Filtering using dplyr library.
- Visualizations using bar graphs, histograms and box plot.
- Finding relationships using correlation matrix and chi-square test.

### Conclusion:
- Performing “Exploratory Data analysis using R” on the resume dataset using libraries like
dplyr(), tidyr(), ggplot2(), corrplot(), Hmisc(), PerformanceAnalytic() , various statistical and
visualization methods, we have drawn numerous conclusions and inferences.
- The baseline of all the analysis techniques is whether a candidate who has applied for a particular
job gets a call back or not. Visualization techniques like bar plots, histogram, box plot,
scatterplot and statistical tools like chi-square test and correlation were used, which helped in
finding which variables are highly responsible for getting a call back for the interview.

### Future Prospects:
The future prospect of this analysis can be to design a predictive model that helps predict if a
candidate has to be called for the interview or not by considering all inferences drawn from
Exploratory data analysis of the Resume names dataset


# Project Overview

Our analysis focuses on two questions within the field of racial and ethnic politics.
1. Are Americans who believe that their race is important to their identity more likely to
be interested in politics than those that are not?
2. How do personal experiences with racism, in combination with demographic factors such
as race, gender, and education, influence the importance respondents place on policies
aimed at addressing racial and ethnic discrimination, controlling for other social and
political factors?
To investigate these two research questions, we used survey data from the 2020 Collaborative
Multi-Racial Post-Election Survey (CMPS). 

# Methods

To model the outcome variable, interest in participating in politics, in the first research question, we will use an **ordinal logistic regression** with predictors including the importance of
belonging to a racial group to one’s identity, race, age, educational attainment, and political
party affiliation. The outcome variable has 4 ordered levels: “Not at all interested in politics”,
“Not that interested in politics”, “Somewhat interested”, and “Very interested in politics”.
We will also include an interaction term between gender and the importance of belonging to
a racial group to one’s identity to assess whether the effect of the importance of belonging to
a racial group on one’s identity differs based on one’s gender identity. To assess the model
we will use a confusion matrix to compare predicted and observed values, and compare the
model’s accuracy and no information rate. Finally, we will conduct a Brant test to provide
additional evidence regarding whether the proportional odds assumption was violated.

For the second research question, which examines the importance placed on anti-discrimination
policies, we will use a **binomial logistic regression**. The predictors include race, gender identity,
sexual orientation, age, education, community type (i.e. rurality), experiences with racism, and
perceptions of racism affecting different groups. To further explore intersectionality theory,
we will develop a second model that includes an interaction term between gender and race.
After identifying the better-performing model, we will evaluate its performance using a range
of metrics, including the confusion matrix, accuracy, and other relevant indicators.

# Results

In this analysis, we investigated whether valuing belonging in a racial group can influence a
respondent’s interest in politics. We found that the higher levels of importance an individual
placed in belonging to their specific racial group (reporting that belonging to their group was
“Very important” or “Extremely important”) had a significant positive effect on their interest
in politics when compared to male respondents who did not place a high level of importance
on belonging to their specific racial group. Further research is needed to understand how an
individual’s racial belonging can impact their political participation. Following the resource
model of participation, age and increases in educational attainment appeared to be associated
with higher odds of reporting a higher level of interest in politics. Individuals who graduated
from college had much higher odds of reporting a higher level of interest in politics than
individuals with no college experience. This follows findings that educational attainment can
lead to increases in political participation [8], and that older Americans vote at higher rates
than younger Americans [9].
For our second question, we analyzed how personal experiences with racism influence respondents’ prioritization of policies addressing racial and ethnic discrimination. Our findings
highlight the significant impact of race, gender, and lived experiences with discrimination,
as well as the critical role of perceptions of racism against various groups in shaping public
attitudes. These results underscore the complex social dynamics that drive policy preferences
and provide valuable insights for designing targeted advocacy and policy efforts to address the
unique experiences and needs of marginalized communities

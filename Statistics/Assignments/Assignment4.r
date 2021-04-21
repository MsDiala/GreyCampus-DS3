# I. Data: The World Values Survey is an ongoing worldwide survey that polls the world
# population about perceptions of life, work, family, politics, etc. The most recent
# phase of the survey that polled 77,882 people from 57 countries estimates that
# 36.2% of the world's population agrees with the statement "Men should have more
# right to a job than women." The survey also estimates that 13.8% of people have
# a university degree or higher and that 3.6% of people fit both criteria.

# Question 1: is agreeing with the statement "Men should have more right to a job 
# than women" and having a university degree or higher disjoint event?

#The events are not disjoint as 3.6% of respondents have higher degree and agree with 
# the statement 'Men should have more right to a job than women'

# Given:
# A: Event that people agree to the given statement.
# B: Event that people have university degree or higher. 
# N = Total number of people surveyed = 77,882
population = 77882
# P(A) = Probability of people agreeing with given statement = 0.362
prob_A = 0.362 
# P(B) = Probability of people who have university degree or higher = 0.138
prob_B = 0.138
# P(AՈB) = Number of people agreeing with given statement and have university or higher degree = 0.036
prob_A_and_B = 0.036
# Probability of A and B isn't zero, thus the events are not disjoint
#prob_neither = 0.464
prob_neither = 1- prob_A - prob_A_and_B - prob_B
prob_neither 

# Question 2: Draw a Venn diagram summarizing the variables and their associated 
# probabilities.
# A: Event that people agree to the given statement.
# B: Event that people have university degree or higher.
install.packages("VennDiagram")
library(VennDiagram)
grid.newpage()
draw.pairwise.venn(
  area1 = prob_A, area2 = prob_B, cross.area = prob_A_and_B,
  category = c('Agrees with statement', 'Has university degree'),
  lty = rep("blank"), fill = c("light blue", "pink"),
  alpha = rep(0.5, 2), cat.pos = c(0, 0), cat.dist = rep(0.025, 2)
)

# Question 3: What is the probability that a randomly drawn person has a 
# university degree or higher or agrees with the statement about men having 
# more right to a job than women?


# P(AUB) = Probability that a randomly drawn person has a university degree or higher or agrees with 
# the statement about men having more right to a job than women.
#  P(AUB) = P(A)+P(B)-P(AՈB)
prob_A_or_B = prob_A + prob_B - prob_A_and_B  
#  = 0.362 + 0.138 – 0.036
#  = 0.464	
prob_A_or_B 

# Question 4: What percent of the world population do not have a university degree 
# and disagree with the statement about men having more right to a job than women?

#Percent of the world population do not have a university degree and disagree with the statement about men having more right to a job than women = 53.6%.
prob_neither = 1- prob_A - prob_A_and_B - prob_B
#P(B’ՈA’) = P(AUB)’ = 1 – P(AUB) = 1 – 0.464 = 0.536
#Therefore, % of people = (0.536) *100 = 53.6%
prob_neither 

# Question 5: Does it appear that the event that someone agrees with the statement 
# is independent of the event that they have a university degree or higher?

#independent means P(A and B) = P(A)*P(B)
# P(AՈB) = 0.036 and P(A)*P(B) = 0.362*0.138 = 0.0499
# Therefore, the events A and B are not independent.

# P(A and B) = prob_A_and_B = 0.036
prob_A *prob_B #0.049956 = P(A)*P(B)
#P(A)*P(B)!=P(A and B), thus the two events are not independent

# Question 6: What is the probability that at least 1 in 5 randomly selected 
# people to agree with the statement about men having more right to a job than women?

# P(at least 1 in 5 people agree) = 1- P(none out of 5 agree)
#  = 1 – P(person disagree)^5
#  = 1-  (1-0.362)^5
#  = 1- 0.638^5
#  = 0.8942

prob_one_five = 1 - (1-prob_A)^5
prob_one_five #prob_one_five = 0.8942931



# II.Data: As of 2009, Swaziland had the highest HIV prevalence in the world. 
# 25.9% of this country's population is infected with HIV. The ELISA test is 
# one of the first and most accurate tests for HIV. For those who carry HIV, 
# the ELISA test is 99.7% accurate. For those who do not carry HIV, the test 
# is 92.6% accurate. 

# Question1: If an individual from Swaziland has tested positive, 
# what is the probability that he carries HIV? Create a tree diagram to calculate 
# the probability.

# A = Event that the person selected has HIV.
# B = Event that the person is tested Positive.
# P(A) =Probability that the person selected has HIV = 0.259
P_hiv = 0.259
p_not_hiv = 1- P_hiv
# P(B|A)=Probability that the person tested positive given that he had ، HIV= 0.997
p_pos_given_hiv = 0.997

p_neg_not_hiv = 0.926
# P(B’|A’) = Probability that the person doesn’t test positive given that he did not have  HIV = 0.926
p_neg_given_hiv = 1- p_pos_given_hiv

# P(A|B) = An individual from Swaziland has tested positive, then the probability 
#that he carries HIV =?

p_pos_not_hiv = 1- p_neg_not_hiv

p_hiv_and_pos = P_hiv*p_pos_given_hiv
p_hiv_and_neg = p_hiv*p_neg_given_hiv

p_not_hiv_and_pos = p_not_hiv*p_pos_not_hiv
p_not_hiv_and_neg = p_not_hiv*p_neg_not_hiv

# Required Probability,
# P(A|B) = P(A and B) =  0.2582  = 0.8249

p_positve = p_hiv_and_pos + p_not_hiv_and_pos
p_hiv_given_negative = p_hiv_and_pos/p_positve
p_hiv_given_negative # p_hiv_given_negative = 0.8248434

# Therefore, if an individual from Swaziland has tested positive, then the probability that he carries HIV is 0.8249.


# Question 2: According to a 2013 Gallup poll, worldwide only 13% of employees are 
# engaged at work (psychologically committed to their jobs and likely to be making 
# positive contributions to their organizations). Among a random 
# sample of 10 employees, what is the probability that 8 of them are engaged at work?

# the given data follows binomial distribution with probability of success i.e., employers being engaged at work is 0.13. 
# Let, X = Number of employers engaged in work.
# n=10 and x= 8

dbinom(8, 10, 0.13)
# Ans The probability that 8 of them are engaged at work is 2.77842e-06.


# Question 3: Recent study: “Facebook users get more than they give”
# 
# - friend requests: 40% made, 63% received at least one
# - likes: liked 14 times, had their content “liked” 20 times, on average
# - messages: sent 9 messages, received 12, on average
# - tags:12% tagged a friend in a photo, but 35% tagged other findings:
# - 25% considered power users
# - average Facebook user has 245 friends
# - P(70 or more power user friends) = ?

# X = Number of power user friends
# The data represents binomial distribution, where probability of success is 0.25.
# Here, n=245, p = 0.25 , q = 0.75 

sum(dbinom(70:245, size = 245, p = 0.25))

# Question 4: According to a 2014 Gallup poll, 56% of uninsured Americans who plan 
# to get health insurance say they will do so through a government health insurance 
# exchange. What is the probability that in a random sample of 10 people exactly 6 
# plan to get health insurance through a government health insurance exchange?

# X = Number of people who plan to get health insurance through a government 
#        health insurance exchange.

# The data represents Binomial distribution.

# n = 10, x = 6 and p = 0.56

# The probability that in a random sample of 10 people exactly 6 plan to get health insurance through a government health insurance exchange is, 0.2427.

dbinom(6, 10, 0.56)
# Ans = 0.2427494


#DONE ^_^
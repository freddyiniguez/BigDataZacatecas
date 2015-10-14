# * Chapter 3, Foundations for your research
#   - The difference between Experiments and Observational Studies
#   - A 12-Step Methodology for Planning and Answering Research Questions
#   - A 6-Step Subset of that Methodology for Quicker Problem Solving
#   - The Central Limit Theorem and Why it's Important
#   - Samples, Error, and P-Values... and a Word of Caution!

# Humans not good selecting something in a randomness way!
choices <- c(1, 2, 3, 0)
barplot(choices, main = "A pretty fast survey about randomness!", ylab = "frequencies", names.arg = c("1", "2", "3", "4"), sub = "We ask 5 people to random select a number between 1 and 4.")

# * Individual events are not predictable (if you roll a die, you don't know what number will fall) 
# * but it is possible to determine what will happen collectively over many events (if you roll a die one thounsands times, 
# * you can find that distribution of possible values is uniform.).
# * Let's simulate this situation to represent a randomness event.

# * Random events are individually not predictable.
# * The Law of Long Numbers (LLN) says that when you repeat many times an event you will get an expected value, even is every individually event is complete 'random'.

# * It is too much complicated if we study the entire population of an event. For example, if we are examining 
# * the possibilities to flip a coin and get a head, it is much more complicated and it will take a long time to study all the population of coins.
# * So, we often infer some things about the entire population and get a smaller sample of it.
# * This gives us a great benefit to obtain statistical test, knowing what happen to an entire population just observing a much smaller sample.
# * As a rule, samples must be smaller than the population. You eventually would need to confirm than your sample represents less than the 10% of the population.

# * In order to get statstical references, it is important to select a sample instead the entire population. BUT, this sample must be a fiable representation of the population.
# * There exists some techniques to select a random (and representative) sample of a population:
#       - Simple Random Sample (SRS): this technique means to select a sample in which every member of the population has the same probability to be choosen.
#       - Systematic Sampling: This method indicates that to conforn a sample, you first neew to calculate the sampling fraction by taking
#         the first nth number (the total number of the sample) and then taking every nth next number.
#       - Stratified Sampling: somethimes, neither SRS or Systematic Sampling get a really representative sample of the population.
#         So, to be sure that we get a really representative sample, we first need to classified our entire population into groups and then apply SRS to those groups.
#       - Cluster Sampling: this technique is pretty similare to stratified sampling, with the difference that is often more natural to apply when the population is already separated in groups.
#         So, as the same way, we apply a SRS or a systematic sampling of each cluster and then join the results to obtain the full sample.
#       - Convenience Sample: this technique is applied when you have no way to collect a sample of your entire population and you only are
#         able to get a non-representative sample with the available data.
#       - Vountary Response Sample: this kind of method to collect information about a population is concerned about those samples that are collected
#         because the people or things you are analizing has offer themselves. This can be a problem because these people could the be the ones who most like to participate,
#         or the most strong or better in a specific subject. 
# * The main reason we shoudl elect the most appropiate technique to get a representative and random sample of our population is because we want to prevent bias.
# * We get bias when the data collected systematically favors to a certain outcomes over others.
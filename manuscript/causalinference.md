
# Causal Analysis: Basic Concepts

In previous chapters we have discussed to primary kinds of formal
analyses. Associational analyses allow us to describe correlations
between key predictors and outcomes while adjusting for potential
confounding factors. Prediction analyses allow us to build models that
can estimate outcome values for future observations; there is typically
no distinction between key predictors or confounders there.

There is another type of analysis that we might want to do that we will
call a *causal analysis*. In these analyses we want to make inference
about what might be the effect on an outcome of *changing* a key
predictor and setting it to be a different value. These *causal
inferences* are often desired because they can lead us to identify
treatments or interventions that can help us or improve our lives in
different ways. Leaders of organizations are often interested in knowing
what are the various “levers” at their disposal that they can adjust in
order to make an outcome change in a particular direction. For example,
a CEO of a company might want to know if changing the advertisement for
a product will increase its sales or if it might be better to lower the
price. Causal analyses can sometimes be useful for identifying such
targets (or levers) of intervention.

Conceptually, the simplest scenario where we might draw a causal
inference is when we have data from an experiment where we actively
controlled something. For example,

-   Laboratory experiments where we want to know how a certain type of
    cell grows under different environmental conditions that we directly
    control;

-   Agricultural field experiments where we specifically plant crops
    with different fertilizer mixes in order to determine which
    fertilizer combination gives the largest yield;

-   Clinical trials where we study whether a new drug is effective by
    randomizing patients to receive either a placebo or an experimental
    drug.

In each of these cases, we as scientists or experimenters manipulated
something and compared the outcome to some alternative. If you want to
know what is the effect of manipulating something, the ideal data come
from an experiment where you manipulated something. Drawing causal
inferences from such an experiment will then require making some
assumptions about how the data were generated, which we will detail
later in this chapter.

One key challenge with making causal inferences is that we often have
data from a study where nothing was manipulated. Such as study is often
referred to as an *observational study*, because we merely observe the
predictors and outcomes, as opposed to directly manipulating them as in
the examples above. With observational studies, it can be a challenge to
make causal inferences from the data without making unrealistic
assumptions. Although some statistical techniques have been developed to
help with mitigating the need for unrealistic assumptions, no
statistical technique is available that can guarantee the validity of a
causal inference.

Two key questions we want to address in this Chapter are:

-   **What does it mean for something to *cause* something else?** Most
    people have some intuitive sense of what this means in the real
    world. But for the sake of doing causal analyses, it is useful to
    have a precise definition of what this means.

-   **When can we conclude that something causes something else?** This
    is a difficult question and it’s the key one we want to answer when
    we’re doing causal analyses. Making conclusions about causal effects
    requires important assumptions and requires an understanding of the
    broader scientific process.

## Accumulation of Evidence

The phrase “causal inference” has at this point become shorthand for a
specific set of statistical methods that are grounded in a framework
that supports drawing conclusions about causal relationships between two
factors, rather than just correlations (or associations) between two
factors. While it’s understandable how the meaning of the phrase has
evolved in this way, it’s important to take a step back and consider the
broader meaning of this phrase. Simply put, it refers to inferring a
causal relationship between two factors. And the basis on which we might
infer a causal relationship extends well beyond the specific subfield of
statistics referred to as “causal inference.” This is because drawing a
conclusion about the nature of the relationship between two factors is
not based on the use of any single technique or method or any single
study. Instead, it is the overall body of research and more
specifically, the evidence produced by the body of research, that
supports (or not) a causal relationship between two factors.

Thus, we infer causality by considering the totality of the evidence
that has been generated about the nature of the relationship between the
two factors, and assess the strength of the evidence to inform the
degree of confidence we have in whether the relationship is causal. To
the extent that employing causal inference techniques improves the
quality or strength of the evidence available, this is a good thing.

Let’s consider the example of whether exposure to mouse allergen causes
asthma exacerbations. We may have a single cross-sectional study that
finds an association between mouse allergen levels in home dust and
asthma exacerbations. This study alone does not provide strong evidence
of that mouse allergen exposure *causes* asthma exacerbations; instead,
it demonstrates that in this particular study, there is a correlation
between the two. Inferring cause from this kind of study would require
making a series of assumptions that are unlikely to be true in this
setting. That is why we say the study does not provide strong evidence.

Now imagine that a subsequent study was done in a different population
that showed that mouse allergen exposure was associated with asthma
exacerbations, but only among study participants who had a positive
allergy test to mouse. Importantly, we can interpret the strength of
evidence that this study contributes to the overall body of evidence
about this relationship because of our understanding of the biology of
allergies. That is, it is well understood that only people who have
allergic antibodies (identified through allergy testing) are susceptible
to upper and lower respiratory symptoms from being exposed to an
allergen. Thus, the fact that the association between mouse allergen
exposure and risk of asthma exacerbations is only observed among those
who have a positive allergy test to mouse, provides stronger evidence of
a causal relationship between mouse allergen exposure and asthma because
this is evidence that supports a biologic mechanism – and suggests that
mouse allergen is not simply a marker of something else that is causing
exacerbations, such as poor health care access, since the effects of
poor health care access on asthma exacerbation risk should not be
observed only among those who have a positive allergy test to mouse.

Next, imagine a study in which reductions in mouse allergen levels in
home dust were associated with reduction in the risk of asthma
exacerbations. Now this third study adds to the growing body of evidence
about this particular relationship and adds strength to the evidence
that the relationship is causal because children with asthma who were
also allergic to mice had reductions in their risk of exacerbations that
were correlated with the degree of reduction in mouse allergen levels
that they experienced. This was a prospective cohort study and so this
was not a randomized clinical trial, so contributes less strong causal
evidence than an RCT to the body of evidence about mouse allergen and
asthma exacerbations, but observing dose-response relationships between
mouse allergen reduction and asthma exacerbation risk within asthmatic
children does add strength to this body of evidence.

This is certainly a simplistic series of examples, but hopefully
highlights that inferring causality is a broader goal that supersedes
any particular method or single study. It’s also worth noting that none
of the above studies explicitly used “causal inference” methods, yet we
made a causal inference from the body of evidence generated by the
studies. Conversely, a single observational study using “causal
inference” methods would rarely be sufficient in and of itself to make
causal inferences.

## Causal Analysis: The Idea

Causal language is used in everyday writing and speech, typically
without much thought. One might say one of the following statements:

-   “The light turned on because I flipped the switch”

-   “The ibuprofen made my headache go away”

-   “I got a good job because I graduated from UT Austin”

While such statements might seem reasonable, it is worth examining them
more closely. One thing to note about each statement is the lack of
comparison in each of them. Each of the statements seems to have an
implied comparison that is seemingly obvious.

For example, the statement “The light turned on because I flipped the
switch” might be implicitly being compared to whether the light would
turn on if I *hadn’t flipped the switch*. So the alternative scenario is
one in which I stood there not flipping the light switch. The question
then is what would have happened with the light in that scenario where
the switch is not flipped? It seems clear, based on a basic knowledge of
electricity and physics, that the light would not turn on.

We can revise each of the causal statements above to include an
alternative scenario that serves as a comparison:

-   “The light turned on because I flipped the switch…compared to if I
    had not flipped the switch”

-   “The ibuprofen made my headache go away…compared to if I had taken
    no medicine”

-   “I got a good job because I graduated from UT Austin…compared to if
    I had not attended UT Austin”

In each of these scenarios, the conclusion seems fairly straightforward.
We know ibuprofen can help with headaches and so compared to taking
nothing, it seems reasonable to say that the ibuprofen caused my
headache to go away. But what if we changed that statement to say

-   “The ibuprofen made my headache go away…compared to if I had taken
    Tylenol”?

Well, now we know that Tylenol and ibuprofen are equally likely to make
a headache go away. Therefore, we might conclude that the ibuprofen did
*not* have an effect on my headache compared to what might have happened
if I’d taken a Tylenol because although ibuprofen is better than
nothing, it’s not necessarily better than Tylenol. In this case, we
might conclude that *taking medicine* is better than taking nothing but
whether we take ibuprofen or Tylenol is not quite so important.

How about the last statement about getting a job after graduating from
college? Graduating from college seems like it should lead to getting a
good job. But what does it mean to *not attend UT Austin*? That
“alternative scenario” includes a variety of possible activities that
are not specified here. For example, we could change that statement to

-   “I got a good job because I graduated from UT Austin…compared to if
    I had graduated from Texas A&M”.

Now, UT Austin and Texas A&M are both good colleges. Without any
specific knowledge, it’s not clear that my chances of getting a good job
are any better after graduating from one college or the other.

In everyday conversation we often make use of causal language without
explicit reference to a comparison or alternate scenario. In many cases,
that alternate scenario may be obvious and does not need to be said.
However, even in everyday situations, different people may not agree on
what is the implied alternate scenario. In scientific settings, it is
critical to specify the alternate scenario to which a given intervention
or action is being compared.

## Potential Outcomes Framework

The primary framework that statisticians use to describe what it means
for one thing to cause something else is known as the *potential
outcomes framework*. This framework provides a systematic notation for
describing outcomes of experiments *before* we observe them and for
defining what is a *causal effect*. In addition, it provides a set of
assumptions that need to hold in order to conclude that one thing causes
another thing, i.e. to *infer* a causal effect.

The simplest version of the potential outcomes framework considers an
intervention that has two levels. Think of the example with ibuprofen
versus taking nothing. That intervention (i.e. “taking medicine”) has
two possibilities:

1.  Take the ibuprofen and observe the state of the headache

2.  Take no medicine and similarly observe the state of the headache

Often, when thinking about interventions or treatments, we think of one
level of the intervention as being the “active” or “primary” level while
the other level is the “inactive” or “control” level. In this example,
we might think of taking ibuprofen as the active level and taking
nothing as the control level.

In addition to specifying an intervention, we also need to specify an
outcome. In the simplest case, where the intervention only has two
levels, we have to imagine what the outcome would be under each of the
intervention scenarios. These are the *potential outcomes*. Of course,
we do not yet know what will happen under either scenario but we can
imagine abstractly what they might be. In the headache example we might
consider using a “headache score”, where a score of 1 indicates “severe
pain” and a score of 10 indicates “no pain”. The potential outcomes
questions then are what would the headache score be under the ibuprofen
scenario and what would the headache score be under the “no medicine”
scenario? Ultimately, we are interested in the difference of the
outcomes between these two scenarios. That difference is the *causal
effect* of taking ibuprofen versus taking no medicine.

We can generalize the concept of potential outcomes and causal effects
by introducing a little mathematical notation. The first concept we will
introduce is the concept of *units* on which we do interventions and we
observe outcomes. The units are very often going to be individual
people, but they may be other things like communities in the United
States or products sold by a company.

We will use *X* to refer to the intervention and *Y* to refer to the
outcome. With the intervention, we will say that

-   *X* = 0 indicates one intervention level (e.g. “control”)

-   *X* = 1 indicates another intervention level (e.g. “active” or
    “primary”)

The outcome is represented by *Y* and we say that

-   *Y*(0) is the outcome observed with intervention *X* = 0

-   *Y*(1) is the outcome observed with intervention *X* = 1 on the
    *same unit*

Here, *Y*(0) and *Y*(1) are the potential outcomes. Finally, a *causal*
effect is defined as

-   *D* = *Y*(1) − *Y*(0), which is the difference in potential outcomes
    between the two intervention levels on the same unit.

Continuing the example from above, we would say that

-   *X* = 0 indicates the intervention level of taking “no medicine”

-   *X* = 1 indicates the intervention level of taking ibuprofen

For the potential outcomes, we have

-   *Y*(0) the headache score when taking no medicine

-   *Y*(1) the headache score when taking ibuprofen

The causal effect is then *D* = *Y*(1) − *Y*(0), which is the difference
in headache score between taking ibuprofen and taking no medicine.

One point to emphasize so far is that when we describe the intervention
and the potential outcomes in this section, we imagine them all
happening to the same unit. So *Y*(0) is the headache score when a
person takes no medicine and *Y*(1) is the headache score when the *same
person* takes ibuprofen. We will highlight the implications of this
framework in the next section.

### An Impossible Experiment

Let’s consider a different example based on the following statement made
previously:

> “I got a good job because I graduated from UT Austin…compared to if I
> had graduated from Texas A&M”

How would we describe this using the potential outcomes framework? First
we need to define an outcome, which is a bit vague in the statement
above. What does it mean to have a “good job”? One way we can make this
more specific is by focusing on the salary that the job offers.
Therefore, we can refine our statement to be

> “I got a job with a higher salary because I graduated from UT
> Austin…compared to if I had graduated from Texas A&M”

Our outcome is then

-   *Y*= the salary that I make at my first job after college.

We have two different intervention levels:

-   *X* = 1 indicates that I graduated from UT Austin

-   *X* = 0 indicates that I graduated from Texas A&M

Our potential outcomes are now

-   *Y*(1) is the salary that I make at my first job after graduating
    from UT Austin

-   *Y*(0) is the salary that I make at my first job after graduating
    from Texas A&M

The causal effect on my salary of attending UT Austin versus Texas A&M
is then *D* = *Y*(1) − *Y*(0), i.e. the difference in my salaries.

One problem with this entire narrative so far is that it assumes that I
can attend UT Austin and Texas A&M *at the same time*. If we suspend
reality for just a second, we can assume that two identical versions of
me attended different colleges and obtained jobs with different
salaries. But of course, this is not possible in reality, so as a result
it is *not possible* to compute the causal effect *D* for me as an
individual. This is known in the literature as the “fundamental problem
of causal inference.”

So what are we supposed to do now? The next section presents a possible
(but problematic) alternative.

### A Possible Experiment

Let’s consider the same example as in the previous section but with a
few modifications. First, instead of just focusing on me and my
outcomes, let’s include me and my friend who is also going to college at
the same time as me. The outcome that we will look is still our salaries
after college, so the outcome will be modified to be

-   *Y*<sub>1</sub>= the salary that I make at my first job after
    college.

-   *Y*<sub>2</sub>= the salary that my friend makes at his first job
    after college.

We still have two different intervention levels:

-   *X* = 1 indicates graduating from UT Austin

-   *X* = 0 indicates graduating from Texas A&M

Our potential outcomes are now

-   *Y*<sub>1</sub>(1) is the salary that I make at my first job after
    graduating from UT Austin

-   *Y*<sub>2</sub>(0) is the salary that my friend makes at his first
    job after graduating from Texas A&M

Let’s define the following difference:
*D*<sup>⋆</sup> = *Y*<sub>1</sub>(1) − *Y*<sub>2</sub>(0) is the
difference between my salary and my friend’s salary after college.

Is *D*<sup>⋆</sup> a causal effect? In general, the answer is no,
because it is a difference that is defined on *two different units*,
i.e. me and my friend. It is not a difference that is defined on the
*same* unit as in the previous section. Therefore, it does not conform
to the definition of a causal effect.

If we wanted to define a genuine causal effect we could define either

*D*<sub>1</sub> = *Y*<sub>1</sub>(1) − *Y*<sub>1</sub>(0)

which would be the causal effect for me, or we could define

*D*<sub>2</sub> = *Y*<sub>2</sub>(1) − *Y*<sub>2</sub>(0)

which would be the causal effect for my friend. However, in the first
case we do not actually observe *Y*<sub>1</sub>(0), which is my salary
when I graduate from Texas A&M, and in the second case we do not observe
*Y*<sub>2</sub>(1), which is my friend’s salary when he graduates from
UT Austin. Therefore, once again we cannot calculate either
*D*<sub>1</sub> or *D*<sub>2</sub> because of the fundamental problem of
causal inference.

If we had concluded that *D*<sup>⋆</sup> was a causal effect, then in
general we would have been making an inappropriate conclusion. However,
at this point it’s not immediately clear why, other than it violates the
definition of a causal effect. The general reason is because my friend
and I are *different* and the ways in which we are different can cause
problems when drawing causal conclusions. In the following sections, we
will talk more about why comparing different units can cause problems in
making causal inferences.

## Estimating Causal Effects

At this point you might be wondering what the point of all this is if we
cannot actually compute any causal effects. This is true for individual
units because of the fundamental problem of causal inference. However,
there are other quantities that we can define that are valuable and are
possible to compute from observed data.

One such quantity is the **average causal effect**, which as the name
would imply, involves averaging causal effects across many units.
Estimating the average causal effect involves combining (i.e. averaging)
information from many different units. Because we are comparing across
units, this would suggest that we are violating the definition of a
causal effect. However, averaging across people is okay if we can assume
that the different units are *similar* or *comparable*.

For example, suppose that in the example in the previous section,
instead of comparing me and my friend, we compared me to my identical
twin brother. My twin brother and I are not the same person, but given
that we have the same genetics, grew up in the same household, had the
same parents, and share the same appearance, we are arguably more
similar to each other than I am to my friend. However, given the rarity
of identical twins, this is probably not the ideal example to
generalize.

A perhaps better example might be a randomized intervention trial where
people are chosen randomly (say, by flipping a fair coin) to receive one
of two intervention levels, an active intervention and a control. If we
were to compare the group that received the active intervention to the
group that received the control, we might expect the two groups to be
comparable because the fair coin has no idea about any of the
characteristics of the people in the study. By contrast, suppose we gave
all of the taller people the active intervention and all of the shorter
people the control intervention. Then at a minimum, the group that
received the active intervention would be taller than the group that
received the control intervention.

From a statistical perspective, two groups of units are comparable if on
average, they are the same on every characteristic that you might
measure or observe. Because we are talking about groups of units and not
individual units, we will be making comparisons of averages instead of
making direct comparisons. Using this concept, we can define an
**average causal effect** as a difference in average outcomes between
two groups that received different intervention levels but are otherwise
comparable. In practice, we often estimate the average causal effect and
use that as our best estimate of the individual causal effect.

### Mathematical Definition

We can define the average causal effect a bit more precisely using
statistical notation. Given the potential outcomes *Y*<sub>*i*</sub>(1)
and *Y*<sub>*i*</sub>(0) corresponding to two different intervention
levels for person *i* in a population, then the average causal effect is

*A**C**E* = 𝔼\[*Y*<sub>*i*</sub>(1)−*Y*<sub>*i*</sub>(0)\]
where the expectation is taken over the entire population. Again, this
quantity is not directly estimable because it requires observing two
outcomes on the same person.

If we have *n* observations and observe outcomes
*Y*<sub>1</sub>, …, *Y*<sub>*n*</sub> and intervention levels
*X*<sub>1</sub>, …, *X*<sub>*n*</sub> where *X*<sub>*i*</sub> is equal
to 1 or 0, then a different quantity that we can estimate is
𝔼\[*Y*<sub>*i*</sub>∣*X*<sub>*i*</sub>=1\] − 𝔼\[*Y*<sub>*i*</sub>∣*X*<sub>*i*</sub>=0\],
where again the expectation is taken over the entire population. This
difference is the difference in mean between the group of people who
received the active intervention and the group of people who received
the control. If these two groups are comparable, then this quantity is
equal to the average causal effect. If the groups are *not* comparable,
than this difference is not equal to the average causal effect and is
interpreted as an association between *X* and *Y*.

With an set of data on *n* individuals, we can estimate this quantity as

$$
\widehat{ACE} = \frac{1}{n}\sum\_{i=1}^n Y_i X_i - \frac{1}{n}\sum\_{i=1}^n Y_i(1-X_i),
$$
again assuming that the group for which *X*<sub>*i*</sub> = 1 and the
group for which *X*<sub>*i*</sub> = 0 are comparable.

## Types of Studies: Considering Comparable Groups

In this section we provide three real-world examples from our own work
that demonstrate different kinds of studies that can be done and the
kinds of evidence they can generate. In particular, each study raises a
causal question and we have to determine whether the evidence from the
study justifies making a causal conclusion.

### The PREACH Randomized Trial of Air Cleaners and Asthma

The [Particulate Reduction Education in City Homes
(PREACH)](https://jamanetwork.com/journals/jamapediatrics/article-abstract/1107571)
study was a randomized intervention that examined the effectiveness of
using indoor air cleaners to improve asthma morbidity in children who
lived with a smoker. The study had one group that was randomized to
receive an educational module about indoor air pollution and its
relationship with asthma (the “control” intervention) and another group
that received an air cleaner in their home in addition to the
educational module (the “active” intervention). One of the outcomes that
was examined was the number of “symptom-free days”, which is the number
of days in the past two weeks that the study participant did not
experience any symptoms (higher is better). Note that the study actually
had a third intervention level that involved a health coach, but we will
ignore that for this example.

The study found that after six months, on average, the group that
received the air cleaners plus the educational module experienced about
1.3 more symptom-free days than the group that only received the
educational module. Based on this information, one might be inclined to
conclude that “The use of air cleaner in the homes caused symptom-free
days to increase, on average, across the study participants.” Is this a
reasonable conclusion?

Here the comparison being made is between a group that received an
educational module and a group that received an air cleaner and an
educational module. The first question we might ask is whether these two
groups are comparable? In this example, where the individual people were
randomized to receive either intervention level, we can be reasonably
sure that the two groups are comparable, so that on average, we expect
them to be fairly close, with the exception of what intervention the
received, of course.

According to Table 1 from the paper, before the study started (but after
people were randomized to groups),

-   50% of the control group was male while 59% of the air cleaner group
    was male;
-   The average age of the control group was 9.2 years old while the
    averate age of the air cleaner group was 9 years old;
-   89% of the control group used Medicaid or some other public
    insurance program while 88% of the air cleaner group used public
    insurance
-   32% of the control group had severe persistent asthma while 29% of
    the air cleaner group ahd severe persistent asthma.

As you can see from these four characteristics, the percentages between
the two groups are not identical, but they are relatively close.

Now, our definition of “comparable” did not say that the groups had to
be similar on average for just four characteristics, but for *all*
characteristics. How can we know if they are similar for all
characteristics if we cannot possibily measure everything? This is where
we can rely on the randomization in the assignment of the intervention
levels. Because the randomization scheme is indifferent to any study
participant characteristics, we can be reasonably sure that both groups,
on average, will have similar characteristics, even for things that we
do not measure.

### Coarse Particulate Matter and Asthma

“In areas where we observe high levels of air pollution, we also observe
high rates of asthma prevalence. Therefore, we conclude air pollution
causes asthma.”

### The Mobility Asthma Project

“Families that moved experienced fewer asthma exacerbations. Therefore,
moving caused an improvement in asthma morbidity.”

## Potential vs. Observed Outcomes

In this section we will build on the example given previously comparing
people taking ibuprofen (intevention level *X* = 1) versus no medicine
(*X* = 0) to deal with a headache. The outcome that we will observe is a
self-reported headache score that ranges from 1 to 10, where 1 indicates
severe pain and 10 indicates no pain at all, so higher is preferable.
(Note, this example is adapted slightly from Imbens & Rubin, 2015.)

### An Imaginary World

In this example we will have hypothetical outcomes for four different
patients. If we imagine for a moment that we can observe all the
potential outcomes, then the data we collect might look like the table
below.

<table>
<colgroup>
<col style="width: 8%" />
<col style="width: 27%" />
<col style="width: 32%" />
<col style="width: 32%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: center;">Patient</th>
<th style="text-align: right;">Headache score w/no medicine <span
class="math inline"><em>Y</em><sub><em>i</em></sub>(0)</span></th>
<th style="text-align: right;">Headache score w/ibuprofen <span
class="math inline"><em>Y</em><sub><em>i</em></sub>(1)</span></th>
<th style="text-align: right;">Causal effect <span
class="math inline"><em>Y</em><sub><em>i</em></sub>(1) − <em>Y</em><sub><em>i</em></sub>(0)</span></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: center;">1</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">6</td>
</tr>
<tr class="even">
<td style="text-align: center;">2</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;"><span
class="math inline"> − 1</span></td>
</tr>
<tr class="odd">
<td style="text-align: center;">3</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">4</td>
</tr>
<tr class="even">
<td style="text-align: center;">4</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;"><span
class="math inline"> − 1</span></td>
</tr>
<tr class="odd">
<td style="text-align: center;">Average</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">2</td>
</tr>
</tbody>
</table>

Notice here that we can compute all the causal effets because we have
observed all the potential outcomes (by briefly suspending reality!). On
average, in the table above, it seems that the ibuprofen causes headache
scores to go up by 2 points, which is an improvement. This can be seen
by comparing the third column, the average of *Y*<sub>*i*</sub>(1)
values, to the second column, the average of *Y*<sub>*i*</sub>(0)
values. (We can reach the same conclusion by simply taking the average
of the fourth column.) We show the table above to illustrate what the
data would look like if we could observe everything that we wanted to
observe. In this imaginary situation, causal inference is
straightforward.

The key thing to remember here is that what makes this imaginary example
special is that everyone received *both* intervention levels
simultaneously (which allowed us to compute the causal effect). In other
words, we did not have to choose who got intervention level 1 and who
got intervention level 0. Everyone got both at the same time.

### The Real World: Assigning the Intervention Level

In the real world everyone can only receive one intervention level at a
given moment in time, and so there must be some process that determines
who is *assigned* to which intervention. Understanding the nature of
this process is critical to being able to make causal inferences from
real world data.

In the simplest case with a randomized clinical trial (as in the PREACH
example above), people are assigned to different intervention levels by
flipping a fair coin. When the coin comes up heads, the person gets the
active intervention and when the coin comes up tails, the person gets
the control. This process is easy to understand, and more importantly,
it does not depend on any characteristics of the patients. The coin is
oblivious to all information about the patients or the people doing the
study.

Now let’s consider that we know that some of the patients are prone to
severe headaches and for those people who are prone to severe headaches,
we are more likely to tell them to take ibuprofen. Similarly, for people
who we know are *not* prone to severe headaches, we are more likely to
tell them to take no medicine and just wait for the headache to go away.

The table below augments the previous table above and adds a column
indicating whether the patient is prone to severe headaches (column 5) .
The table then shows which intervention level was assigned to that
patient (column 6) and what the observed outcome was for that patient
and intervention level (column 7).

<table>
<colgroup>
<col style="width: 8%" />
<col style="width: 30%" />
<col style="width: 35%" />
<col style="width: 8%" />
<col style="width: 8%" />
<col style="width: 7%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: center;">Patient</th>
<th style="text-align: right;">Headache score w/no medicine <span
class="math inline"><em>Y</em><sub><em>i</em></sub>(0)</span></th>
<th style="text-align: right;">Headache score w/ibuprofen <span
class="math inline"><em>Y</em><sub><em>i</em></sub>(1)</span></th>
<th style="text-align: center;">Prone to severe headaches</th>
<th style="text-align: center;">Observed treatment</th>
<th style="text-align: right;">Observed Outcome</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: center;">1</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">7</td>
<td style="text-align: center;">Yes</td>
<td style="text-align: center;">Ibuprofen</td>
<td style="text-align: right;">7</td>
</tr>
<tr class="even">
<td style="text-align: center;">2</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">5</td>
<td style="text-align: center;">No</td>
<td style="text-align: center;">No medicine</td>
<td style="text-align: right;">6</td>
</tr>
<tr class="odd">
<td style="text-align: center;">3</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">5</td>
<td style="text-align: center;">Yes</td>
<td style="text-align: center;">Ibuprofen</td>
<td style="text-align: right;">5</td>
</tr>
<tr class="even">
<td style="text-align: center;">4</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">7</td>
<td style="text-align: center;">No</td>
<td style="text-align: center;">No medicine</td>
<td style="text-align: right;">8</td>
</tr>
</tbody>
</table>

Now let’s see what happens if we try to estimate the effect of taking
ibuprofen from this table, where individual patients are assigned to an
intervention level based on their proneness to severe headaches. If we
take the average of the headache scores for the patients who received
ibuprofen, we get (7+5)/2 = 6. If we take the average of the headache
scores for the patients who took no medicine, we get (6+8)/2 = 7. The
difference between these two averages is then 6 − 7 =  − 1. According to
this analysis, taking ibuprofen results in an average *decrease* in
headache score by 1 point. How does this analysis differ from the
previous one where the average causal effect was an *increase* in
headache score by 2 points?

The short answer is that what we have estimated in this analysis is
*not* the average causal effect. The reason is that the group that
received ibuprofen and the group that took no medicine are *not*
comparable. We know from the table above that they differ in their
proneness to severe headaches. Because of the way that each patient was
assigned to their intervention level, the group receiving ibuprofen is
more prone to severe headaches than the group that was assigned to
receive no medicine.

What this analysis estimates is an *association* between taking
ibuprofen and headache scores (relative to taking no medicine), not a
causal effect. Associations can sometimes be useful, but they do not
tell us the effect of giving someone ibuprofen versus giving someone no
medicine.

### Missing Data

The table below illustrates how the fundamental problem of causal
inference prevents us from drawing the correct conclusion using only the
observed data.

<table style="width:100%;">
<colgroup>
<col style="width: 8%" />
<col style="width: 8%" />
<col style="width: 8%" />
<col style="width: 28%" />
<col style="width: 32%" />
<col style="width: 13%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: center;">Prone to severe headaches</th>
<th style="text-align: center;">Patient</th>
<th style="text-align: center;">Headache score w/no medicine <span
class="math inline"><em>Y</em><sub><em>i</em></sub>(0)</span></th>
<th style="text-align: right;">Headache score w/ibuprofen <span
class="math inline"><em>Y</em><sub><em>i</em></sub>(1)</span></th>
<th style="text-align: right;">Causal effect <span
class="math inline"><em>Y</em><sub><em>i</em></sub>(1) − <em>Y</em><sub><em>i</em></sub>(0)</span></th>
<th style="text-align: right;"></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: center;">Yes</td>
<td style="text-align: center;">1</td>
<td style="text-align: center;">?</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">?</td>
<td style="text-align: right;"></td>
</tr>
<tr class="even">
<td style="text-align: center;">No</td>
<td style="text-align: center;">2</td>
<td style="text-align: center;">6</td>
<td style="text-align: right;">?</td>
<td style="text-align: right;">?</td>
<td style="text-align: right;"></td>
</tr>
<tr class="odd">
<td style="text-align: center;">Yes</td>
<td style="text-align: center;">3</td>
<td style="text-align: center;">?</td>
<td style="text-align: right;">5</td>
<td style="text-align: right;">?</td>
<td style="text-align: right;"></td>
</tr>
<tr class="even">
<td style="text-align: center;">No</td>
<td style="text-align: center;">4</td>
<td style="text-align: center;">8</td>
<td style="text-align: right;">?</td>
<td style="text-align: right;">?</td>
<td style="text-align: right;"></td>
</tr>
</tbody>
</table>

In the table, we see that the patients who were prone to severe
headaches (patients 1 and 3) all received ibuprofen and so their outcome
when taking no medicine is not observed or “missing”, as indicated by
the “?”. Similarly, the patients not prone to severe headaches (patients
2 and 4) took no medicine, and their outcomes when taking ibuprofen are
also “missing”. As a result, causal effects cannot be computed for any
of the patients, and we cannot compute the average causal effect as a
result.

One thing that is worth considering is if there were a way to somehow
fill in the missing data in the table above, we might then be able to
compute causal effects. However, developing a way to fill in that
missing data is not exactly straightforward and may depend on the
specifics of the problem being studied.

## Confounding

In the previous section, the characteristic of being “prone to severe
headaches” was a **confounding variable** or **confounder** for the
relationship between medication usage and headache score. A confounder
is any characteristic, attribute, or feature that determines both the
outcome and the intervention of interest. In this example, the proneness
to severe headaches affected the outcome because people who are prone to
severe headaches likely have lower headache scores. Similarly, proneness
to severe headaches affected the intervention because it was used to
assign the intervention level (ibuprofen vs. no medicine).

When confounders are present it can be difficult or impossible to
estimate causal effects. In the example above, there is no way to know
if any effect observed is because of the difference in medication usage
or because of the patients’ proneness to severe headaches. This is
because the proneness to severe headaches and medication usage are
perfectly correlated in this case.

One possible strategy when confounders are present is to find some way
to control for them to eliminate their effect. For example, in the
example above, we could have restricted our analysis to only looked at
people who were *not* prone to severe headaches. That would eliminate
any variation in the patients that could be attributable to that
characterstic. However, the problem with doing that in this example is
that we didn’t have any data on people who were not prone to severe
headaches *and* took ibuprofen. This is a general challenge when trying
to control for confounding variables: We may not have sufficient data to
answer the question at hand once we control for all the confounders.

Measured vs. hidden confounders.

One important aspect to note about confounders is that variables or
characteristics are not inherently confounders. Rather a variable can
only be a confounder when considered in the context of another causal
relationship. So “proneness to severe headaches” can be a confounder in
the context of the medication-headache relationship. But “proneness to
severe headaches” is not a confounder all by itself. Indeed, it doesn’t
make sense to call a variable a confounder without reference to a
specific causal relationship of interest.

## Causal Inference Assumptions

After all this, we can state the key assumptions that are needed in
order make causal inferences or conclusions from the data we analyze.
These assumptions are in regards to the process that generates the data
and the manner in which intervention levels are assigned to individual
units in the sample.

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Name of Assumption</th>
<th style="text-align: left;">Definition</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><strong>Stable unit treatment value
assumption (SUTVA)</strong></td>
<td style="text-align: left;">This assumption requires that the
intervention level received by one unit does not affect the intervention
level received by another unit. So if I receive intervention level 1,
knowing that doesn’t have any bearing on whether another subject in the
study receives intervention level 1 or 0.</td>
</tr>
<tr class="even">
<td style="text-align: left;"><strong>Positivity</strong></td>
<td style="text-align: left;">This assumption says that every unit in
the study sample has some non-zero probability of receiving either
intervention level.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><strong>Ignorability</strong></td>
<td style="text-align: left;">This assumption states that there are no
hidden confounders</td>
</tr>
</tbody>
</table>

The first two assumptions are often satisfied in fairly common analysis
scenarios. However, the third assumption is the most difficult one to
verify, if it is even possible. Below we show some examples of how each
of these assumptions could be violated.

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Assumption</th>
<th style="text-align: left;">Example of Violation</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">SUTVA</td>
<td style="text-align: left;">A study where the units have the potential
to communicate with each other could result in a SUTVA violation. For
example, if I take a medication and experience bad side effects, I might
discourage my friend from taking the same medicine, thereby affecting
the likelihood that she would take the medicine.</td>
</tr>
<tr class="even">
<td style="text-align: left;">Positivity</td>
<td style="text-align: left;">Any study where a sub-group of people
simply cannot be assigned to an intervention level. For example, in a
study of two drugs (call them drug A and drug B), you might have some
people who are allergic to drug A. Therefore, there is no chance that
those people would be assigned to receive drug A.</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Ignorability</td>
<td style="text-align: left;">Any observational study where the
assignment of intervention levels was not directly controlled has the
potential to have hidden confounders, hence violating ignorability. It
is the job of the analyst to argue ignorability holds in such settings
based on a thorough understanding of how the data are generated.</td>
</tr>
</tbody>
</table>

We can revisit the examples from above—the PREACH study, the coarse
particulate matter and asthma study, and the Mobility Asthma Project—to
see how well they satisfy these requirements.

### PREACH Study

### Coarse Particulate Matter and Asthma Study

### Mobility Asthma Project

## Questions and Exercises

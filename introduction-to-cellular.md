---
title: "Cellular:"
subtitle: "A proposal for less awful spreadsheets"
author: "James Geddes"
date: "May 2016"
theme: ati
transition: fade
transitionSpeed: fast
controls: !!str false
center: true
...

The West Coast Mainline débacle
-------------------------------

![Photo: Aaron Roberts https://www.flickr.com/photos/aaronsrailwayphots/ (CC BY-NC 2.0)](images/virgin-train.jpg)

<div class="notes">

In 2012, the franchise to run the train service on the West Coast intercity
routes, at that time run by Virgin, was sent out to tender. Bidding companies
submitted details of their bid, including detailed financial projections, to the
Department for Transport. A company called FirstGroup won the bid and Virgin
promptly launched a legal challenge.

As a result of the challenge, the award was scrapped. Three civil servants were
suspended. Apparently at least £40m was paid to the bidders in compensation. A
review found "significant technical flaws" in the way the bidding process was
run. 

At the heart of those technical flaws appears to have been a large spreadsheet. 
</div>

It's not just government
------------------------

<div class="notes">
Here's another example.

There were several problems with Reinhart and Rogoff's paper, some of which were
simply debatable assumptions, and these had a greater effect on the result than
the spreadsheet error. However, it was unarguable that there was a spreadsheet
error. It was an illuminating one, and we'll take a look at it later.
</div>

<hr/>
Carmen M. Reinhart, Kenneth S. Rogoff (2010). "Growth in a Time of
    Debt". *American Economic Review* **100** (2): 573–78.

<hr/>

> “George Osborne’s favourite ‘godfathers of austerity’ economists admit to
> making error in research” — the *Mirror*

> “The Rogoff-Reinhart data scandal reminds us economists aren’t gods” — *The Guardian*

> “The Excel Depression” — Paul Krugman

And some limitations are fundamental
------------------------------------

![Source: DECC, Performance and Impact of the Feed-In Tariff Scheme: Review of Evidence](images/FIT_Evidence_Review.png){width=80%}

<div class="notes">
1. Where is the uncertainty?

2. What should we do in year 2? 
</div>

-------------------------------------------------------------------------------

![Cartoon by Randall Munroe, http://xkcd.com/1667/ (cc by-nc 2.5)](images/algorithms.png)

<div class="notes"> 

Hello. My name is James Geddes and I have some bad news for you: the world runs on
Excel.

From 2002 to 2009 I was a strategy consultant. I helped some of the largest
companies in the world make decisions. I helped an airline open a new
transatlantic route; I helped a mining company improve the performance of their
mines; I even had the privilege of helping a chain of pubs set the price of
beer.

How did I know what to advise our clients? I built models. A model is a
mathematical simplification of the world. It keeps you honest. It lets you test
out your ideas. If I make such-and-such a change, what will happen to my
profits?

I worked for one of the most prestigious stategy consulting firms. We pride
ourselves on our quantitative focus. We must use some pretty amazing modelling
tools, right? Well, we used Excel. Excel *is* pretty amazing in some ways --
it's amazing because *everyone can use it*. It's less amazing in other ways.

From 2009 to 2014 I worked at the Department of Energy and Climate Change. I
worked with a team attempting to answer the question, how do we reduce the UK's
greenhouse gas emissions by 80% over the next 40 years? To answer this question,
we built a model: I was the architect of this model although you could say that
the godfather of the model was David MacKay. The model simulated the entire
energy system of the UK for 40 years. We must have used some pretty complex
software, right? Well, we used Excel. It *was* a pretty sophisticated Excel
model in some ways. Less so in others.

Directly as a result of the West Coast mainline debacle, the government produced
a review -- the MacPherson review -- to explain how to build and quality assure
models properly. That review cited the 2050 model as one of its examples of how
to do it right.

Government runs on Excel. That's what government analysts use. Often, of course,
analysis is outsourced to a technical consulting company. *They* might use
linear programming or something. But in government: Excel. 

Later on, we helped other governments build their own versions of the
model. China build one, India built one, even Wallonia built one. Each time we
helped a country build their model we would reconstruct our enormous Excel
spreadsheet, painfully making hundreds of manual changes, introducing errors as
we did so.

Well, I've had enough. I never want to build another Excel model again. Cellular
is my plan.

Visicalc (1979) was the “killer app” for the Apple II. You bought an Apple II because you wanted to run Visicalc. Lotus 1-2-3 was the killer app for PCs. 
Microsoft Multiplan -- 1982
Lotus 1-2-3 -- 1983
Excel Mac -- 1985
Excel Windows -- 1987
Quattro Pro -- 1988 (Intended to compete with Lotus, still available from Corel(!))
Improv -- 1991 (Innovative -- separated data, view, and formulas)
Analytica -- 1996
Google -- 2006

</div>

-------------------------------------------------------------------------------

<!-- ========================= TABLE OF CONTENTS ========================== -->

* [A brief history of spreadsheets](#a-brief-history-of-spreadsheets)

* [What kind of models are spreadsheet models?](#what-kind-of-models-are-spreadsheet-models)

* Cellular

* Challenges

<!-- ====================================================================== -->

A brief history of spreadsheets
-------------------------------

![](images/spreadsheet-history.png)

VisiCalc: the first ‘killer app’
--------------------------------

![Screenshot of VisiCalc on the Apple II. Photo: apple2history.org](images/Visicalc.jpg)

Excel has been dominant for 20 years
------------------------------------

![A history of spreadsheets. Source: Google ngrams.](images/spreadsheet-ngrams.png)

<div class="notes">
Excel has, perhaps, on the order of 750 million users.
</div>


What kind of models are spreadsheet models?
-------------------------------------------

<!-- ==================	SPREADSHEETS =================== -->

-----------------

![Reinhart and Rogoff’s spreadsheet. Source: Thomas Herndon, Michael Ash, and Robert Pollin via Mike Konczal](images/reinhart_rogoff_ss.png){width=60%}

<div class="notes">
* NB: Spreadsheet error was not the only issue taken with the paper. But it's a
  good example of the sort of errors that occur. 

* First, some structures that we see often in a spreadsheet:
   - A set of values down the left; a set of values across the top; and in the
     intersections values whose meaning is codified by the product of the row
     and column headers.
	 
	 There are many ways to lay out a spreadsheet; this is one of them. It has
     the virtue of being structured and of conforming to the two dimensions
     available.
	 
   - A expression whose arguments are a set of related data.

* There are also some problems common to spreadsheets:
   - Metadata (formatting) used to convey meaning -- where is the key? Is it
     important? 
   
   - Inputs, intermediate values, and outputs mixed up. A well-designed
     spreadsheet has a linear ordering of data flow: eg, top to bottom. Here is
     not clear what the "maximum" etc fields at the top are.

   - Hidden columns. What's going on in there?
   
   - And of course the major problem with this spreadsheet, which is a simple
     formula error. 

* How can we fix this kind of error? 

</div>


Spreadsheets are:
-----------------

Explicit |
Understandable |
Manageable

*but*

Simplistic |
Single-user |
Not robust |

--------

Divide and conquer

Don't repeat yourself

Say what you mean

--------

Other proposals
---------------

Gencell

User-centred functions

ModelSheet Authoring

Tabular

Improv

Felienne

<div class="notes">
One good question to ask is: what haven't these succeeded?

* Maybe they will, just not yet?

* They involve changing the spreadsheet model

* They involve extensions to Excel (breaks collaboration)
</div>

Our challenge
-------------

1. What kind of models are spreadsheets used for?

2. Why do people use spreadsheets?

3. How do we keep (1) without losing (2)?

Proposal
--------

Spreadsheets are a programming language -> Extend this

Spreadsheets are interactive -> So are modern languages

It's hard to format tables -> Make this easy!

Probability is impossible -> Make it possible


What kind of language are spreadsheets?
---------------------------------------



Uncertainty
-----------


Inference
---------




Other kinds of models
---------------------

* Maximisation

* Dynamic simulation

* Agent-based simulation

* Equilibrium-finding

* “Full” Bayesian inference




	
Challenges
----------


And that's before we get to uncertainty ...
[David's example]

Why do we use Excel, anyway?
- * can start small! (Try making a list on MS SQL Server)
- can do calculations! (Don't need to know abstractions)
- can format results! 
- can link into 
- it's an end-user programming tool



What is modelling?





Can we do better?
- All the ways people are trying to fix this ...



What's wrong?
- copy/paste
- 



What is an Excel model, really?

Ideas for cellular
- DAG

Next steps
----------

* Timing ...

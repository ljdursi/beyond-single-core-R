Beyond Single Core: Parallel Analysis in R
===================

R is a great environment for interactive analysis on your desktop, but when your data needs outgrow your 
personal computer, it's not clear what to do next.

This is material for a short overview scalable data analysis in R.  It covers:

* How to think about parallelism and scalability in data analysis
* The standard parallel package, including what was the snow and multicore facilities, 
using [airline data](http://stat-computing.org/dataexpo/2009/the-data.html) as an example
* The [foreach](http://cran.r-project.org/web/packages/foreach/index.html) package, using 
airline data and simple stock data;
* A summary of best practices.

Included in the materials, though not in the talk, are some more advanced methods:
* The [bigmemory](http://cran.r-project.org/web/packages/bigmemory/index.html) package for out-of-core computation on large data matrices, with a simple physical sciences example;
* The [Rdsm](http://cran.r-project.org/web/packages/Rdsm/index.html) package for shared memory; and
* a brief introduction to the powerful [pbdR](http://r-pbd.org) pacakges for extremely large-scale computation.


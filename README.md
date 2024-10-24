# Assignment 8: Spatial Autocorrelation and Interpolation

Exploring and exploiting spatial autocorrelation in our data is an important tool for interpolating missing values in geographic data. It's also an important diagnostic to check before additional statistical analyses. You'll get to try some of that out here. We'll the cost of natural disasters dataset fromm 1999-2020 (described in [this paper](https://www.nature.com/articles/s41597-023-01955-0) and available at `/assignment07/ics209-plus-wf_incidents_1999to2020.csv` folder and focusing on the data describing the structures lost to natural disaster (`STR_DESTROYED_TOTAL`). We'll use this data to:

* Plot the Ripley's K envelope for a point dataset
* Use nearest-neighbors as a means of estimating Moran's I
* Generate several spatial field interpolations
* Krige data based on spatial patterns and semivariance

## Instructions

1. After you've joined the assignment repository, you should have this file (named Readme.md) inside of a R project named assignment-8-xx where xx is your github username (or initials).

2. Once you've verified that you've correctly cloned the assignment repository, create a new Quarto document. Name this file assignment-8-xxx.qmd and give it a title (like M Williamson Assignment 8). Make sure that you select the html output option (Quarto can do a lot of cool things, but the html format is the least-likely to cause you additional headaches). We'll be using Quarto throughout the course so it's worth checking out the other tutorials in the getting started section.

3. Copy the questions below into your document and change the color of their text.

4. Save the changes and make your first commit!

5. Answer the questions making sure save and commit at least 3 more times (having 4 commits is part of the assignment).

6. Render the document to html (you should now have at least 3 files in the repository: Readme.md, assignment-8-xx.qmd, and assignment-8-xx.html). Commit these changes and push them to the repository on GitHub. You should see the files there when you go to github.com.


## The Assignment

1. Read in the disasters dataset, convert it to points, filter it to those disasters in Idaho, and select any relevant columns. You'll also need to use `tigris::county()` to download a county shapefile for Idaho. Make sure your data are projected correctly
2. Generate the Ripley's K curves for the disaster dataset. What do you think? Is there evidence that the data is spatially autocorrelated?
3. Use the nearest-neighbor approach that we used in class to estimate the lagged values for the disaster dataset and estimate the slope of the line describing Moran's I statistic.
4. Now use the permutation approach to compare your measured value to one generated from multiple simulations. Generate the plot of the data. Do you see more evidence of spatial autocorrelation?
5. Generate the 0th, 1st, and 2nd order spatial trend surfaces for the data. Is there evidence for a second order trend? How can you tell?
6. Now use the spatial trend surface to perform some ordinary kriging. You'll want to have a grid of ~15,000 points, fit 3 different experimental variogram functions (see the `vgm` function helpfile to learn more about the shapes available to you). Plot your variogram fits. Which one would you choose? Why?
7. Using your spatial trend model and your fitted variogram, krige the data and generate a map of the interpolated value and a map of the error.


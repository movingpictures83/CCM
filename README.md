# CCM
# Language: R
# Input: CSV (time-series abundances)
# Output: CSV (causality statistics)
# Tested with: PluMA 1.0, R 3.2.5

PluMA plugin that runs the Convergent Cross Mapping algorithm (CCM, Sugihara et al 2012)
for detecting causality in complex ecosystems.

The plugin accepts
as input time series data in a CSV file formatted in the following way:

"data1","data2",
"timepoint1","value for data1","value for data2",
"timepoint2","value for data1","value for data2",
...

The plugin will then output in CSV format a series of statistics that estimate, at every timepoint, the ability of data set 1 to predict values in data set 2.   These include:

rho: The correlation coefficient between observed values in data set 2, and those predicted by the model
mae: The mean absolute error between observed values in data set 2, and thos
e predicted by the model
rmse: The root mean square error between observed values in data set 2, and thos
e predicted by the model


Note: example data (chicken_egg.csv) was assembled from the ChickEgg dataset
of the lmtest library.  That library is not required for this plugin, since we are using
a CSV file.

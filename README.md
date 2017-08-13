================================================================== Human
Activity Recognition Using Smartphones Dataset Updated Version Coursera
project for Getting and Cleaning Data course
==================================================================
Vladas Alesius
==================================================================

For this task, data from experiment (see [1]) to measure human physical
activity was used for further processing. A group of 30 19-48 years old
volunteers took part in an experiment to measure characteristics of
human physical activity.\
Every participant engaged in six activities (WALKING, WALKING\_UPSTAIRS,
WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing Samsung Galaxy S
II smartphone on the waist.

The below explanation of measuring and processing experiment features is
from README file of the initial data set:

"Using its embedded accelerometer and gyroscope, we captured 3-axial
linear acceleration and 3-axial angular velocity at a constant rate of
50Hz. The experiments have been video-recorded to label the data
manually. The obtained dataset has been randomly partitioned into two
sets, where 70% of the volunteers was selected for generating the
training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by
applying noise filters and then sampled in fixed-width sliding windows
of 2.56 sec and 50% overlap (128 readings/window). The sensor
acceleration signal, which has gravitational and body motion components,
was separated using a Butterworth low-pass filter into body acceleration
and gravity. The gravitational force is assumed to have only low
frequency components, therefore a filter with 0.3 Hz cutoff frequency
was used. From each window, a vector of features was obtained by
calculating variables from the time and frequency domain."

Each record in the final data set (please see below) contains these features:
=============================================================================

-   An identifier of the subject who carried out the experiment (number
    from 1 to 30).
-   Its activity label (initially digits from 1 to 6, converted to
    meaningful names in later steps).
-   A 66-feature vector with average values for mean and standard
    deviation (std) values of time and frequency domain variables:
-   Triaxial acceleration from the accelerometer (total acceleration)
    and the estimated body acceleration.
-   Triaxial Angular velocity from the gyroscope.

Compared to initial data set, activity labels and variable names were
updated to make them more descriptive.

See 'codebook.md' file and explanatory files from initial data set for
further information.

The dataset includes the following files:
=========================================

-   'README.md' (this file)

-   'codebook.md': Explains the variables used on the feature vector.

-   'finaldataset.txt': Final data set with averages for mean and
    standard deviations (std) of features explained in 'codebook.md'
    (uploaded in Coursera).

-   'run\_analysis.R' contains an R script which performs these actions:
-   merges 'train' and 'test' datasets from the initial data;
-   extracts mean and std variables;
-   changes activity labels from numbers to descriptive names,
    additionally changing them from initial ones, removing underscores
    and uppercase letters;
-   renames variables, changing all letters to lowercase and removing
    non-alphanumeric symbols;
-   computes their averages for every pair of subject and activity, and
    exports the new data set to a separate file (see file
    'finaldataset.txt'). Please notice comments in the code, explaining
    actions step by step.

Notes:
======

-   Features are normalized and bounded within [-1,1].
-   Each feature vector is a row on 'finaldataset.txt' file.

References:
===========

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge
L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a
Multiclass Hardware-Friendly Support Vector Machine. International
Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz,
Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or
explicit can be addressed to the authors or their institutions for its
use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita.
November 2012.

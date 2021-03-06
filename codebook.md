Codebook
========

Below is a short description of features presented in 'finaldataset'
file.

The background for it is the research on human activity recognition (see
[1], 'README' file). Participants performed different physical
activities, and features of their movements were measured using Samsung
smartphones. The source of the description below is 'features\_info'
file from the initial data (see course page). Names of variables were
updated to reflect the changes made for this task.

The basis of features in this database are the 3-axial raw signals
timeaccelerationxyz and timegyroscopexyz, measured using an
accelerometer and a gyroscope. These time domain signals were measured
at a constant rate of 50 Hz. Then noise was removed from them using a
median filter and a 3rd order low pass Butterworth filter with a corner
frequency of 20 Hz. In a similar way, the acceleration signal was split
into body and gravity acceleration signals (timebodyaccelerationxyz and
timegravityaccelerationxyz) using another low pass Butterworth filter
with a corner frequency of 0.3 Hz.

Subsequently, 'jerk' signals were obtained from the body linear
acceleration and angular velocity derived in time
(timebodyaccelerationjerkxyz and timebodygyroscopejerkxyz). Also the
Euclidean norm was used to calculate the magnitude of these
three-dimensional acceleration and gyroscope signals\
(timebodyaccelerationmagnitude, timegravityaccelerationmagnitude,
timebodyaccelerationjerkmagnitude, timebodygyroscopemagnitude,
timebodygyroscopejerkmagnitude).

Finally a Fast Fourier Transform (FFT) was applied to some 'body'
signals producing these 'frequency' measurements:
frequencybodyaccelerationxyz, frequencybodyaccelerationjerkxyz,
frequencybodygyroscopexyz, frequencybodyaccelerationjerkmagnitude,
frequencybodygyroscopemagnitude, frequencybodygyroscopejerkmagnitude.

Signals described above were used to estimate variables of the feature
vector for each pattern:\
'xyz' is used to denote 3-axial signals in the X, Y and Z directions.

-   timebodyaccelerationxyz
-   timegravityaccelerationxyz
-   timebodyaccelerationjerkxyz
-   timebodygyroscopexyz
-   timebodygyroscopejerkxyz
-   timebodyaccelerationmagnitude
-   timegravityaccelerationmagnitude
-   timebodyaccelerationjerkmagnitude
-   timebodygyroscopemagnitude
-   timebodygyroscopejerkmagnitude
-   frequencybodyaccelerationxyz
-   frequencybodyaccelerationjerkxyz
-   frequencybodygyroscopexyz
-   frequencybodyaccelerationmagnitude
-   frequencybodyaccelerationjerkmagnitude
-   frequencybodygyroscopemagnitude
-   frequencybodygyroscopejerkmagnitude

Mean value (mean) and Standard deviation (std) were estimated from
signals listed above. For all these 66 variables, average values were
calculated for every pair of experiment subject and performed activity.

For more information, please check 'finaldataset.txt' file containing
the final data, 'README' file, and explanatory files for the initial
data set.

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

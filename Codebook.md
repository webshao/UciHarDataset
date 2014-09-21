## Codebook.md

### <span style="color: brown">Data Label Information</span>

The columns of the output tidy data file <i>selnum.txt</i> have the following meaning:

#### <span style="color: green">Category Columns</span>

* <b><i>subject</i></b> - code number for the subject
* <b><i>activity</i></b> - descriptive name of the activity

#### <span style="color: green">Feature Columns</span>

The naming of a feature column may have two or three parts separated by hyphens. The root part describes what is being measured. The second part denotes either the mean or standard deviation of the measurement for that activity, and the third part, if it exists, denotes the axial direction in terms of X, Y, or Z. The following list describes the root part of the feature variable name and its meaning. At the end of the raw data preparation phase, all of these features have been normalized to be within the range [-1, 1] for the purpose of data analysis, and therefore these measurements are unitless.

* <b><i>AvgTimeDomBodyLinAcc</i></b> : Average linear acceleration of the body motion along the specified axis of the phone measured in the time domain
* <b><i>AvgTimeDomGravityLinAcc</i></b> : Average linear acceleration of gravity along the specified axis of the phone measured in the time domain
* <b><i>AvgTimeDomBodyLinAccJerk</i></b> : Average linear acceleration of the jerking motion of the body along the specified axis of the phone measured in the time domain
* <b><i>AvgTimeDomBodyAngVel</i></b> : Average angular velocity of the body motion about the specified axis of the phone measured in the time domain
* <b><i>AvgTimeDomBodyAngVelJerk</i></b> : Average angular velocity of the jerking motion of the body about the specified axis of the phone measured in the time domain
* <b><i>AvgTimeDomBodyLinAccMag</i></b> : Average linear acceleration magnitude of the body motion measured in the time domain
* <b><i>AvgTimeDomGravityLinAccMag</i></b> : Average linear acceleration magnitude of gravity measured in the time domain
* <b><i>AvgTimeDomBodyLinAccJerkMag</i></b> : Average linear acceleration magnitude of the jerking motion of the body measured in the time domain
* <b><i>AvgTimeDomBodyAngVelMag</i></b> : Average angular velocity magnitude of the body motion measured in the time domain
* <b><i>AvgTimeDomBodyAngVelJerkMag</i></b> : Average angular velocity magnitude of the jerking motion of the body measured in the time domain
* <b><i>AvgFreqDomBodyLinAcc</i></b> : Average linear acceleration of the body motion along the specified axis of the phone measured in the frequency domain
* <b><i>AvgFreqDomBodyLinAccJerk</i></b> : Average linear acceleration of the jerking motion of the body along the specified axis of the phone measured in the frequency domain
* <b><i>AvgFreqDomBodyAngVel</i></b> : Average angular velocity of the body motion about the specified axis of the phone measured in the frequency domain
* <b><i>AvgFreqDomBodyLinAccMag</i></b> : Average linear acceleration magnitude of the body motion measured in the frequency domain
* <b><i>AvgFreqDomBodyLinAccJerkMag</i></b> : Average linear acceleration magnitude of the jerking motion of the body measured in the frequency domain
* <b><i>AvgFreqDomBodyAngVelMag</i></b> : Average angular velocity magnitude of the body motion measured in the frequency domain
* <b><i>AvgFreqDomBodyAngVelJerkMag</i></b> : Average angular velocity magnitude of the jerking motion of the body measured in the frequency domain

### <span style="color: brown">Script Procedural Notes</span>

* The <i>Inertial Signals</i> folders from the test and training data sets were excluded, for they are not used in arriving at the tidy data specified for this project
* The other raw data files, which are being used for generating the tidy data set, are described in <i>README.md</i>
* Activity codes in the data set (1-6) were replaced by the descriptive name of the activity (e.g. WALKING).
* New names of the feature columns are given, to make them more descriptive without resulting in something excessively long. The rules are as below:<br>- The repetitive <i>BodyBody</i> becomes <i>Body</i><br>- <i>Acc</i> becomes <i>LinAcc</i><br>- <i>Gyro</i> becomes <i>AngVel</i><br>- The prefix <i>t</i> becomes <i>TimeDom</i><br>- The prefix <i>f</i> becomes <i>FreqDom</i><br>
* The feature columns with names containing <i>mean()</i> and <i>std()</i> are the only ones used in accordance to the intention of the new tidy data set
* The fields containing the substring <i>meanFreq</i> are exclude since they do not seem to be the intended target, where each of the mean column has a pairing with standard deviation column, and is referring to the measurement in the root part of the variable itself
* The tidy data output is written out into space-delimited ".txt" format, just like the format in which the raw data was presented in  

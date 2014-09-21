## Codebook.md

### <span style="color: brown">Data Label Information</span>

The columns of the output tidy data file <i>selnum.txt</i> have the following meaning:

#### <span style="color: green">Category Columns</span>

* <i>subject</i> - code number for the subject
* <i>activity</i> - descriptive name of the activity

#### <span style="color: green">Feature Columns</span>

The naming of a feature column may have two or three parts (one or tow suffixes). The first suffix denotes either the mean or standard deviation of the measurement for that activity, and the second suffix, if it exists, denotes the axial direction in terms of X, Y, or Z. The following the root part of the feature variable name and its meaning.

* <i>AvgTimeDomBodyLinAcc</i> : Average time-domain derived linear acceleration of the body motion along the specified axis of the phone
* <i>AvgTimeDomGravityLinAcc</i> : Average time-domain derived linear acceleration of gravity along the specified axis of the phone
* <i>AvgTimeDomBodyLinAccJerk</i> : Average time-domain derived linear acceleration of the jerking motion of the body along the specified axis of the phone
* <i>AvgTimeDomBodyAngVel</i> : Average time-domain derived angular velocity of the body motion about the specified axis of the phone
* <i>AvgTimeDomBodyAngVelJerk</i> : Average time-domain derived angular velocity of the jerking motion of the body about the specified axis of the phone
* <i>AvgTimeDomBodyLinAccMag</i> : Average time-domain derived linear acceleration magnitude of the body motion
* <i>AvgTimeDomGravityLinAccMag</i> : Average time-domain derived linear acceleration magnitude of gravity
* <i>AvgTimeDomBodyLinAccJerkMag</i> : Average time-domain derived linear acceleration magnitude of the jerking motion of the body
* <i>AvgTimeDomBodyAngVelMag</i> : Average time-domain derived angular velocity magnitude of the body motion
* <i>AvgTimeDomBodyAngVelJerkMag</i> : Average time-domain derived angular velocity magnitude of the jerking motion of the body
* <i>AvgFreqDomBodyLinAcc</i> : Average frequency-domain derived linear acceleration of the body motion along the specified axis of the phone
* <i>AvgFreqDomBodyLinAccJerk</i> : Average frequency-domain derived linear acceleration of the jerking motion of the body along the specified axis of the phone
* <i>AvgFreqDomBodyAngVel</i> : Average frequency-domain derived angular velocity of the body motion about the specified axis of the phone
* <i>AvgFreqDomBodyLinAccMag</i> : Average frequency-domain derived linear acceleration magnitude of the body motion
* <i>AvgFreqDomBodyBodyLinAccJerkMag</i> : Average frequency-domain derived linear acceleration magnitude of the jerking motion of the body
* <i>AvgFreqDomBodyBodyAngVelMag</i> : Average frequency-domain derived angular velocity magnitude of the body motion
* <i>AvgFreqDomBodyBodyAngVelJerkMag</i> : Average frequency-domain derived angular velocity magnitude of the jerking motion of the body

### <span style="color: brown">Script Procedural Notes</span>

* The <i>Inertial Signals</i> folders from the test and training data sets were excluded, for they are not used in arriving at the tidy data specified for this project
* The other raw data files, which are being used for generating the tidy data set, are described in <i>README.md</i>
* Activity codes in the data set (1-6) were replaced by the descriptive name of the activity (e.g. WALKING).
* The new descriptive names of the feature columns are formed by the rules below:<br>- <i>Acc</i> becomes <i>LinAcc</i><br>- <i>Gyro</i> becomes <i>AngVel</i><br>- The prefix <i>t</i> becomes <i>TimeDom</i><br>- The prefix <i>f</i> becomes <i>FreqDom</i><br>
* The feature columns with names containing <i>mean()</i> and <i>std()</i> are the only ones used in accordance to the intention of the new tidy data set
* The fields containing the substring <i>meanFreq</i> are exclude since they do not seem to be the intended target, where each of the mean column has a pairing with standard deviation column, and is referring to the measurement in the root part of the variable itself
* The tidy data output is written out into space-separated ".txt" format, just like the format in which the raw data was represented in  

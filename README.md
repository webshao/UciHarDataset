## README.md

### <span style="color: brown">File Information</span>

#### <span style="color: green">Files added by the author</span>

* <i>run_analysis.R</i> - script used to generate the output summary data file
* <i>selsum.txt</i> - output summary data file, in spaced-separated format
* <i>Codebook.md</i> - code book for the output summary data file
* <i>README.md</i> - this file providing general information

#### <span style="color: green">Required files inherited form the original project folder

* <i>activity_labels.txt</i> - mapping of the activity codes (1-6) to descriptive activity labels
* <i>features.txt</i> - mapping of the feature codes (1-561) to descriptive labels of the features
* <i>test</i> - folder containing test data
* <i>test/subject_test.txt</i> - subject column of the test data
* <i>test/y_test.txt</i> - activity column of the test data
* <i>test/X_test.txt</i> - measurement columns of the test data
* <i>train</i> - folder containing training data
* <i>train/subject_train.txt</i> - subject column of the training data
* <i>train/y_train.txt</i> - activity column of the training data
* <i>train/X_train.txt</i> - measurement columns of the training data

### <span style="color: brown">Basic Setup Information</span>

The user would need to download the files from this Github repository via the <i>Download</i> button from the bottom of the right margin panel. Alternatively, the user may wish to fork it to their own Github account and clone it to the user's own local Git repository to obtain the files.

The only required extra R package to install is the <i>plyr</i> package, if the user has not already installed it. 

### <span style="color: brown">Basic Script Description</span>

The analysis script combines the test and training data sets into one master data set, and then changes the feature labels to make it more descriptive. The activity codes were transformed to descriptive activity names. Finally, the raw data is summarized using the average measurement under each subject for each activity, and outputted to a new tidy data set. Detailed comments are found in the <i>run_analysis.R</i> file.

### <span style="color: brown">Running the Script</span>

To run the script, open an R shell or R Studio. Make sure to set the working directory. For example, on Linux or Mac systems:

<blockquote><pre>
setwd("/home/thisuser/school/coursera/CleanData/UciHarDataSet/")
</pre></blockquote>

On Windows, be sure to have the double backslashes after the drive letter to avoid unintended escape sequence.

<blockquote><pre>
setwd("C:\\Users/thisuser/school/coursera/CleanData/HciHarDataSet/")
</pre></blockquote>

Run the script by clicking the <i>Source</i> button for the script editor window, or by running the source() command with the sole argument being the absolute location of the script.

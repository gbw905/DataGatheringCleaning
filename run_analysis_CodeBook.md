#Code Book: Run_Analysis
Prepared by Greg Watson, February 2015

##SCRIPT VALUES
Since the script runs as a function, run_analysis(), you will not see the variables in the R-Studio global environment. 
In case you need to know the location that the script looks for data, the script variables are listed here.
<table>
<th><td>Varialbe</td><td>Value </td></th>
<tr><td>activityLabelUrl    </td><td>"./UCI HAR Dataset/activity_labels.txt"</td></tr>
<tr><td>featuresLabelUrl    </td><td>".UCI HAR Dataset/features.txt"</td></tr>
<tr><td>outputUrl           </td><td>"./run_analysis.txt"</td></tr>
<tr><td>selFeatures         </td><td>chr [1:2] "mean" "std"</td></tr>
<tr><td>selFeaturesList     </td><td>chr [1:79]</td></tr>
<tr><td>selected_features-v </td><td>chr [1:79]</td></tr>
<tr><td>testActivitesUrl    </td><td>"./UCI HAR Dataset/test/y_test.txt"</td></tr>
<tr><td>testSubjUrl         </td><td>"./UCI HAR Dataset/test/subject_test.txt"</td></tr>
<tr><td>testUrl             </td><td>"./UCI HAR Dataset/test/X_test.txt"</td></tr>
<tr><td>trainActivitesUrl   </td><td>"./UCI HAR Dataset/train/y-train.txt"</td></tr>
<tr><td>trainSubjUrl        </td><td>"./UCI HAR Dataset/train/subject_train.txt"</td></tr>
<tr><td>trainUrl            </td><td>"./UCI HAR Dataset/train/X_train.txt"</td></tr>
</table>

##SCRIPT OUTPUT
The R script, run_analysis, produces a text file, 'run_analysis.txt' with the following characteristics
The data output is classes ‘data.table’ and 'data.frame':	180 obs. of  81 variables defined as follows:
<table>
<th><td>Field</td><td>Type</td><td>Description</td></th>
<tr><td>SubjectID                      </td><td>int</td><td>Sequence number created by the vendor to identify the person</td></tr>
<tr><td>Activity                       </td><td>Factor</td><td>6 levels "LAYING","SITTING","WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","STANDING"</td></tr>
<tr><td>tBodyAcc-mean()-X              </td><td>num</td><td>Mean body acceleration signal in X dimension</td></tr>
<tr><td>tBodyAcc-mean()-Y              </td><td>num</td><td>Mean body acceleration signal in Y dimension</td></tr>
<tr><td>tBodyAcc-mean()-Z              </td><td>num</td><td>Mean body acceleration signal in X dimension</td></tr>
<tr><td>tBodyAcc-std()-X               </td><td>num</td><td>Standard deviation of the body acceleration signal in X dimension</td></tr>
<tr><td>tBodyAcc-std()-Y               </td><td>num</td><td>Standard deviation of the body acceleration signal in Y dimension</td></tr>
<tr><td>tBodyAcc-std()-Z               </td><td>num</td><td>Standard deviation of the body acceleration signal in Z dimension</td></tr>
<tr><td>tGravityAcc-mean()-X           </td><td>num</td><td>Mean gravity acceleration signal in X dimension</td></tr>
<tr><td>tGravityAcc-mean()-Y           </td><td>num</td><td>Mean gravity acceleration signal in Y dimension</td></tr>
<tr><td>tGravityAcc-mean()-Z           </td><td>num</td><td>Mean gravity acceleration signal in X dimension</td></tr>
<tr><td>tGravityAcc-std()-X            </td><td>num</td><td>Standard deviation of the gravity acceleration signal in X dimension</td></tr>
<tr><td>tGravityAcc-std()-Y            </td><td>num</td><td>Standard deviation of the gravity acceleration signal in Y dimension</td></tr>
<tr><td>tGravityAcc-std()-Z            </td><td>num</td><td>Standard deviation of the gravity acceleration signal in Z dimension</td></tr>
<tr><td>tBodyAccJerk-mean()-X          </td><td>num</td><td>Mean body linear acceleration jerk signal in X dimension</td></tr>
<tr><td>tBodyAccJerk-mean()-Y          </td><td>num</td><td>Mean body linear acceleration jerk signal in Y dimension</td></tr>
<tr><td>tBodyAccJerk-mean()-Z          </td><td>num</td><td>Mean body linear acceleration jerk signal in Z dimension</td></tr>
<tr><td>tBodyAccJerk-std()-X           </td><td>num</td><td>Standard deviation of the linear acceleration jerk signal in X dimension</td></tr>
<tr><td>tBodyAccJerk-std()-Y           </td><td>num</td><td>Standard deviation of the linear acceleration jerk signal in Y dimension</td></tr>
<tr><td>tBodyAccJerk-std()-Z           </td><td>num</td><td>Standard deviation of the linear acceleration jerk signal in Z dimension</td></tr>
<tr><td>tBodyGyro-mean()-X             </td><td>num</td><td>Mean body gyroscope signal in X dimension</td></tr>
<tr><td>tBodyGyro-mean()-Y             </td><td>num</td><td>Mean body gyroscope signal in Y dimension</td></tr>
<tr><td>tBodyGyro-mean()-Z             </td><td>num</td><td>Mean body gyroscope signal in Z dimension</td></tr>
<tr><td>tBodyGyro-std()-X              </td><td>num</td><td>Standard deviation of the gyroscope signal in X dimension</td></tr>
<tr><td>tBodyGyro-std()-Y              </td><td>num</td><td>Standard deviation of the gyroscope signal in Y dimension</td></tr>
<tr><td>tBodyGyro-std()-Z              </td><td>num</td><td>Standard deviation of the gyroscope signal in Z dimension</td></tr>
<tr><td>tBodyGyroJerk-mean()-X         </td><td>num</td><td>Mean body angular velocity jerk signal in X dimension</td></tr>
<tr><td>tBodyGyroJerk-mean()-Y         </td><td>num</td><td>Mean body angular velocity jerk signal in Y dimension</td></tr>
<tr><td>tBodyGyroJerk-mean()-Z         </td><td>num</td><td>Mean body angular velocity jerk signal in Z dimension</td></tr>
<tr><td>tBodyGyroJerk-std()-X          </td><td>num</td><td>Standard deviation of the angular velocity jerk signal in Y dimension</td></tr>
<tr><td>tBodyGyroJerk-std()-Y          </td><td>num</td><td>Standard deviation of the angular velocity jerk signal in Z dimension</td></tr>
<tr><td>tBodyGyroJerk-std()-Z          </td><td>num</td><td>Standard deviation of the angular velocity jerk signal in X dimension</td></tr>
<tr><td>tBodyAccMag-mean()             </td><td>num</td><td>Mean magnitude of body linear acceleration</td></tr>
<tr><td>tBodyAccMag-std()              </td><td>num</td><td>Standard deviation of the magnitude of body linear acceleration</td></tr>
<tr><td>tGravityAccMag-mean()          </td><td>num</td><td>Mean magnitude of gravity acceleration signals</td></tr>
<tr><td>tGravityAccMag-std()           </td><td>num</td><td>Standard deviation of the magnitude of gravity acceleration signals</td></tr>
<tr><td>tBodyAccJerkMag-mean()         </td><td>num</td><td>Mean magnitude of the body jerk signals</td></tr>
<tr><td>tBodyAccJerkMag-std()          </td><td>num</td><td>Standard deviation magnitude of the body jerk signals</td></tr>
<tr><td>tBodyGyroMag-mean()            </td><td>num</td><td>Mean magnitude of the angular velocity signals</td></tr>
<tr><td>tBodyGyroMag-std()             </td><td>num</td><td>Standard deviation magnitude of the angular velocity signals</td></tr>
<tr><td>tBodyGyroJerkMag-mean()        </td><td>num</td><td>Mean magnitude of the angular velocity jerk signals</td></tr>
<tr><td>tBodyGyroJerkMag-std()         </td><td>num</td><td>Standard deviation magnitude of the angular velocity jerk signals</td></tr>
<tr><td>fBodyAcc-mean()-X              </td><td>num</td><td>Mean fast fourier transform body acceleration in X dimension</td></tr>
<tr><td>fBodyAcc-mean()-Y              </td><td>num</td><td>Mean fast fourier transform body acceleration in Y dimension</td></tr>
<tr><td>fBodyAcc-mean()-Z              </td><td>num</td><td>Mean fast fourier transform body acceleration in Z dimension</td></tr>
<tr><td>fBodyAcc-std()-X               </td><td>num</td><td>Standard deviation fast fourier transform body acceleration in X dimension</td></tr>
<tr><td>fBodyAcc-std()-Y               </td><td>num</td><td>Standard deviation fast fourier transform body acceleration in Y dimension</td></tr>
<tr><td>fBodyAcc-std()-Z               </td><td>num</td><td>Standard deviation fast fourier transform body acceleration in Z dimension</td></tr>
<tr><td>fBodyAcc-meanFreq()-X          </td><td>num</td><td>Weighted average of the frequency components to obtain a mean frequency of body acceleration in X dimension</td></tr>
<tr><td>fBodyAcc-meanFreq()-Y          </td><td>num</td><td>Weighted average of the frequency components to obtain a mean frequency of body acceleration in Y dimension</td></tr>
<tr><td>fBodyAcc-meanFreq()-Z          </td><td>num</td><td>Weighted average of the frequency components to obtain a mean frequency of body acceleration in Z dimension</td></tr>
<tr><td>fBodyAccJerk-mean()-X          </td><td>num</td><td>Weighted average of the frequency components to obtain a mean frequency of body acceleration in X dimension</td></tr>
<tr><td>fBodyAccJerk-mean()-Y          </td><td>num</td><td>Weighted average of the frequency components to obtain a mean frequency of body acceleration in Y dimension</td></tr>
<tr><td>fBodyAccJerk-mean()-Z          </td><td>num</td><td>Weighted average of the frequency components to obtain a mean frequency of body acceleration in Z dimension</td></tr>
<tr><td>fBodyAccJerk-std()-X           </td><td>num</td><td>Standard deviation of the body linear acceleration in the X dimension</td></tr>
<tr><td>fBodyAccJerk-std()-Y           </td><td>num</td><td>Standard deviation of the body linear acceleration in the Y dimension</td></tr>
<tr><td>fBodyAccJerk-std()-Z           </td><td>num</td><td>Standard deviation of the body linear acceleration in the Z dimension</td></tr>
<tr><td>fBodyAccJerk-meanFreq()-X      </td><td>num</td><td>Weighted average of the frequency components to obtain a mean frequency in X dimension</td></tr>
<tr><td>fBodyAccJerk-meanFreq()-Y      </td><td>num</td><td>Weighted average of the frequency components to obtain a mean frequency in X dimension</td></tr>
<tr><td>fBodyAccJerk-meanFreq()-Z      </td><td>num</td><td>Weighted average of the frequency components to obtain a mean frequency in X dimension</td></tr>
<tr><td>fBodyGyro-mean()-X             </td><td>num</td><td>Mean fast fourier transform body acceleration in X dimension</td></tr>
<tr><td>fBodyGyro-mean()-Y             </td><td>num</td><td>Mean fast fourier transform body acceleration in Y dimension</td></tr>
<tr><td>fBodyGyro-mean()-Z             </td><td>num</td><td>Mean fast fourier transform body acceleration in Z dimension</td></tr>
<tr><td>fBodyGyro-std()-X              </td><td>num</td><td>Standard deviation fast fourier transform body acceleration in X dimension</td></tr>
<tr><td>fBodyGyro-std()-Y              </td><td>num</td><td>Standard deviation fast fourier transform body acceleration in Y dimension</td></tr>
<tr><td>fBodyGyro-std()-Z              </td><td>num</td><td>Standard deviation fast fourier transform body acceleration in Z dimension</td></tr>
<tr><td>fBodyGyro-meanFreq()-X         </td><td>num</td><td>Weighted average of the body frequency components to obtain a mean frequency in the X dimension</td></tr>
<tr><td>fBodyGyro-meanFreq()-Y         </td><td>num</td><td>Weighted average of the body frequency components to obtain a mean frequency in the Y dimension</td></tr>
<tr><td>fBodyGyro-meanFreq()-Z         </td><td>num</td><td>Weighted average of the body frequency components to obtain a mean frequency in the Z dimension</td></tr>
<tr><td>fBodyAccMag-mean()             </td><td>num</td><td>Mean of body acceleration signals in a signal window sample</td></tr>
<tr><td>fBodyAccMag-std()              </td><td>num</td><td>Standard deviation of body acceleration signals in a signal window sample</td></tr>
<tr><td>fBodyAccMag-meanFreq()         </td><td>num</td><td>Weighted average of the frequency components in a signal window sample</td></tr>
<tr><td>fBodyBodyAccJerkMag-mean()     </td><td>num</td><td>Mean of the signals in a signal window sample for the body acceleration</td></tr>
<tr><td>fBodyBodyAccJerkMag-std()      </td><td>num</td><td>Standard deviation of the signals in a signal window sample for the body acceleration</td></tr>
<tr><td>fBodyBodyAccJerkMag-meanFreq() </td><td>num</td><td></td></tr>
<tr><td>fBodyBodyGyroMag-mean()        </td><td>num</td><td></td></tr>
<tr><td>fBodyBodyGyroMag-std()         </td><td>num</td><td></td></tr>
<tr><td>fBodyBodyGyroMag-meanFreq()    </td><td>num</td><td></td></tr>
<tr><td>fBodyBodyGyroJerkMag-mean()    </td><td>num</td><td></td></tr>
<tr><td>fBodyBodyGyroJerkMag-std()     </td><td>num</td><td></td></tr>
<tr><td>fBodyBodyGyroJerkMag-meanFreq()</td><td>num</td><td></td></tr>
</table>
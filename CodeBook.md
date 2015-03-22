##TIDY DATASET CODE BOOK

### 1. Subjects 
      Type: numeric 
      Content: identifies the subject/person the data belong to.
      
### 2. Actitities
      Type: character
      Content: identifies the target activity:
          Possible values:
            1. walking 
            2. walking upstairs
            3. walking downstairs
            4. sitting
            5. standing
            6. laying
          
##### The next 66 numeric variables are listed below:

"tbodyacc-mean-x"           
"tbodyacc-mean-y"          
"tbodyacc-mean-z"           
"tbodyacc-std-x"           
"tbodyacc-std-y"            
"tbodyacc-std-z"           
"tgravityacc-mean-x"        
"tgravityacc-mean-y"       
"tgravityacc-mean-z"        
"tgravityacc-std-x"        
"tgravityacc-std-y"         
"tgravityacc-std-z"        
"tbodyaccjerk-mean-x"       
"tbodyaccjerk-mean-y"      
"tbodyaccjerk-mean-z"       
"tbodyaccjerk-std-x"       
"tbodyaccjerk-std-y"        
"tbodyaccjerk-std-z"       
"tbodygyro-mean-x"          
"tbodygyro-mean-y"         
"tbodygyro-mean-z"          
"tbodygyro-std-x"          
"tbodygyro-std-y"           
"tbodygyro-std-z"          
"tbodygyrojerk-mean-x"      
"tbodygyrojerk-mean-y"     
"tbodygyrojerk-mean-z"      
"tbodygyrojerk-std-x"      
"tbodygyrojerk-std-y"       
"tbodygyrojerk-std-z"      
"tbodyaccmag-mean"          
"tbodyaccmag-std"          
"tgravityaccmag-mean"       
"tgravityaccmag-std"       
"tbodyaccjerkmag-mean"      
"tbodyaccjerkmag-std"      
"tbodygyromag-mean"         
"tbodygyromag-std"         
"tbodygyrojerkmag-mean"     
"tbodygyrojerkmag-std"     
"fbodyacc-mean-x"           
"fbodyacc-mean-y"          
"fbodyacc-mean-z"           
"fbodyacc-std-x"           
"fbodyacc-std-y"            
"fbodyacc-std-z"           
"fbodyaccjerk-mean-x"       
"fbodyaccjerk-mean-y"      
"fbodyaccjerk-mean-z"       
"fbodyaccjerk-std-x"       
"fbodyaccjerk-std-y"        
"fbodyaccjerk-std-z"       
"fbodygyro-mean-x"          
"fbodygyro-mean-y"         
"fbodygyro-mean-z"          
"fbodygyro-std-x"          
"fbodygyro-std-y"           
"fbodygyro-std-z"          
"fbodyaccmag-mean"          
"fbodyaccmag-std"          
"fbodybodyaccjerkmag-mean"  
"fbodybodyaccjerkmag-std"  
"fbodybodygyromag-mean"     
"fbodybodygyromag-std"     
"fbodybodygyrojerkmag-mean" 
"fbodybodygyrojerkmag-std"
    
###### These variables contain the mean and standard deviation of time domain and frequency domain signals measured with the embedded accelerometer and gyroscope of a Samsung Galaxy S II.
###### Time domain variables are prefixed with the letter "t" and frequency domain variables are prefixed with the letter "f".
* bodyacc -> body linear acceleration
* gravityacc -> gravity acceleration
* bodygyro -> angular velocity
* bodyaccjerk -> body linear acceleration derived in time to obtain Jerk signal
* bodygyrojerk -> angular velocity derived in time to obtain Jerk signal
* bodyaccMag -> magnitude of body linear acceleration using the Euclidean norm
* gravityaccmag -> magnitude of gravity acceleration using the Euclidean norm
* bodygyromag -> magnitude of angular velocity using the Euclidean norm
* bodyaccjerkmag -> magnitude of the Jerk signal of body linear acceleration using the Euclidean norm
* bodygyrojerkmag -> magnitude of the Jerk signal of angular velocity using the Euclidean norm

###### Also note that some of these variables refers to a particular dimension (X, Y o Z)


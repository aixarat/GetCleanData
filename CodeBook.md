# Getting and Cleaning data 
This is the codebook for a very quick implementation of the project
## Steps
* An overview of the interesting fileds (namely, std and mean) was done, and using grep at Linux's command line their column numbers were identified
* The data was agregated in a file named `X_train.txt`, however it lacked field names. These had to be cross-referenced from the file `features.txt`.
* Data from test and training sets was merged into a single dataset. The data included the column names and also had the subject added as a field
* From the selected fields (79 variables), a subset was made. From this subset, a tidy set of averages was created

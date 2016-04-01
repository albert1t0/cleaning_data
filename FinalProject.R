### Celaning data Final Project - File processing
### This script create to data set one for all subject and second for subject summaries.

### Create test data set

# Load data for test variables
subject_test <- read.table('test/subject_test.txt', header = FALSE)
X_test <- read.table('test/X_test.txt', header = FALSE)
Y_test <- read.table('test/y_test.txt', header = FALSE)
body_acc_x_test <- read.table('test/Inertial Signals/body_acc_x_test.txt', header = FALSE)
body_acc_y_test <- read.table('test/Inertial Signals/body_acc_y_test.txt', header = FALSE)
body_acc_z_test <- read.table('test/Inertial Signals/body_acc_z_test.txt', header = FALSE)
body_gyro_x_test <- read.table('test/Inertial Signals/body_gyro_x_test.txt', header = FALSE)
body_gyro_y_test <- read.table('test/Inertial Signals/body_gyro_y_test.txt', header = FALSE)
body_gyro_z_test <- read.table('test/Inertial Signals/body_gyro_z_test.txt', header = FALSE)
total_acc_x_test <- read.table('test/Inertial Signals/total_acc_x_test.txt', header = FALSE)
total_acc_y_test <- read.table('test/Inertial Signals/total_acc_y_test.txt', header = FALSE)
total_acc_z_test <- read.table('test/Inertial Signals/total_acc_z_test.txt', header = FALSE)

test.label <- rep(1,2947)  ### 1 for test

# Calculate resume variables
test <- cbind(test.label, subject_test, Y_test,
               apply(X_test, 1, mean), apply(X_test, 1, sd),
               apply(body_acc_x_test, 1, mean), apply(body_acc_x_test, 1, sd),
               apply(body_acc_y_test, 1, mean), apply(body_acc_y_test, 1, sd),
               apply(body_acc_z_test, 1, mean), apply(body_acc_z_test, 1, sd),
               apply(body_gyro_x_test, 1, mean), apply(body_gyro_x_test, 1, sd),
               apply(body_gyro_y_test, 1, mean), apply(body_gyro_y_test, 1, sd),
               apply(body_gyro_z_test, 1, mean), apply(body_gyro_z_test, 1, sd),
               apply(total_acc_x_test, 1, mean), apply(total_acc_x_test, 1, sd),
               apply(total_acc_y_test, 1, mean), apply(total_acc_y_test, 1, sd),
               apply(total_acc_z_test, 1, mean), apply(total_acc_z_test, 1, sd))

# Naming varialbes
names(test) <- c("group", "subject", "activity",
                 "time_frequency_mean","time_frequency_sd",
                 "body_acc_x_mean", "body_acc_x_sd",
                 "body_acc_y_mean", "body_acc_y_sd",
                 "body_acc_z_mean", "body_acc_z_sd",
                 "body_gyro_x_mean", "body_gyro_x_sd",
                 "body_gyro_y_mean", "body_gyro_y_sd",
                 "body_gyro_z_mean", "body_gyro_z_sd",
                 "total_acc_x_mean", "total_acc_x_sd",
                 "total_acc_y_mean", "total_acc_y_sd",
                 "total_acc_z_mean", "total_acc_z_sd")

### Create train data set

# Load data for test variables
subject_train <- read.table('train/subject_train.txt', header = FALSE)
X_train <- read.table('train/X_train.txt', header = FALSE)
Y_train <- read.table('train/y_train.txt', header = FALSE)
body_acc_x_train <- read.table('train/Inertial Signals/body_acc_x_train.txt', header = FALSE)
body_acc_y_train <- read.table('train/Inertial Signals/body_acc_y_train.txt', header = FALSE)
body_acc_z_train <- read.table('train/Inertial Signals/body_acc_z_train.txt', header = FALSE)
body_gyro_x_train <- read.table('train/Inertial Signals/body_gyro_x_train.txt', header = FALSE)
body_gyro_y_train <- read.table('train/Inertial Signals/body_gyro_y_train.txt', header = FALSE)
body_gyro_z_train <- read.table('train/Inertial Signals/body_gyro_z_train.txt', header = FALSE)
total_acc_x_train <- read.table('train/Inertial Signals/total_acc_x_train.txt', header = FALSE)
total_acc_y_train <- read.table('train/Inertial Signals/total_acc_y_train.txt', header = FALSE)
total_acc_z_train <- read.table('train/Inertial Signals/total_acc_z_train.txt', header = FALSE)

train.label <- rep(2,7352) ### 2 for train

# Calculate resume variables
train <- cbind(train.label, subject_train, Y_train,
               apply(X_train, 1, mean), apply(X_train, 1, sd),
               apply(body_acc_x_train, 1, mean), apply(body_acc_x_train, 1, sd),
               apply(body_acc_y_train, 1, mean), apply(body_acc_y_train, 1, sd),
               apply(body_acc_z_train, 1, mean), apply(body_acc_z_train, 1, sd),
               apply(body_gyro_x_train, 1, mean), apply(body_gyro_x_train, 1, sd),
               apply(body_gyro_y_train, 1, mean), apply(body_gyro_y_train, 1, sd),
               apply(body_gyro_z_train, 1, mean), apply(body_gyro_z_train, 1, sd),
               apply(total_acc_x_train, 1, mean), apply(total_acc_x_train, 1, sd),
               apply(total_acc_y_train, 1, mean), apply(total_acc_y_train, 1, sd),
               apply(total_acc_z_train, 1, mean), apply(total_acc_z_train, 1, sd))
               
# Naming varialbes
names(train) <- c("group", "subject", "activity",
                 "time_frequency_mean","time_frequency_sd",
                 "body_acc_x_mean", "body_acc_x_sd",
                 "body_acc_y_mean", "body_acc_y_sd",
                 "body_acc_z_mean", "body_acc_z_sd",
                 "body_gyro_x_mean", "body_gyro_x_sd",
                 "body_gyro_y_mean", "body_gyro_y_sd",
                 "body_gyro_z_mean", "body_gyro_z_sd",
                 "total_acc_x_mean", "total_acc_x_sd",
                 "total_acc_y_mean", "total_acc_y_sd",
                 "total_acc_z_mean", "total_acc_z_sd")

# Merginf the two sets - First data set
all.subjects <- rbind(test,train)

### Create resume data set - Second data set
subjects <- group_by(all.subjects, subject, activity)

# Resume variables

library("dplyr", lib.loc="~/R/x86_64-pc-linux-gnu-library/3.2") # Load dplyr package

subjects.summary <- summarise(subjects,
                              time_frequency_mean = mean(time_frequency_mean), time_frequency_sd = mean(time_frequency_sd),
                              body_acc_x_mean = mean(body_acc_x_mean), body_acc_x_sd = mean(body_acc_x_sd),
                              body_acc_y_mean = mean(body_acc_y_mean), body_acc_x_sd = mean(body_acc_y_sd),
                              body_acc_z_mean = mean(body_acc_z_mean), body_acc_x_sd = mean(body_acc_z_sd),
                              body_gyro_x_mean = mean(body_gyro_x_mean), body_gyro_x_sd = mean(body_gyro_x_sd),
                              body_gyro_y_mean = mean(body_gyro_y_mean), body_gyro_x_sd = mean(body_gyro_y_sd),
                              body_gyro_z_mean = mean(body_gyro_z_mean), body_gyro_x_sd = mean(body_gyro_z_sd),
                              total_acc_x_mean = mean(total_acc_x_mean), total_acc_x_sd = mean(total_acc_x_sd),
                              total_acc_y_mean = mean(total_acc_y_mean), total_acc_x_sd = mean(total_acc_y_sd),
                              total_acc_z_mean = mean(total_acc_z_mean), total_acc_x_sd = mean(total_acc_z_sd))

# Write tables to files

write.table(all.subjects, "first_data_set_all_subjects.txt", sep = "\t", row.names = FALSE)
write.table(subjects.summary, "second_data_set_summary_subjects.txt", sep = "\t", row.names = FALSE)

# END
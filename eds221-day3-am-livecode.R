# Recall how to roll 2d6
roll2d6<-sum(sample(1:6, size =2, replace=TRUE))

# Whgat do we do with that roll
  # If less than ore equal to 3, coral dies
  # If greater than or equal to 6, coral grows
  # Otherwise coral survives

if (roll2d6 <=3){coral_fate<-"death"}else if(roll2d6>=6){coral_fate<-"growth"}else{coral_fate<-"survival"}


# Dont have to use if else of or else all together
# Example - Coral that grows on the edge

# from this morning
reef<-matrix(0, nrow=5, ncol=5)
coral_row<- 1
coral_col<-1
reef[coral_row, coral_col]<-1

growth_row_offset<-c(-1, -1, -1, 0, 1, 1, 1, 0)
growth_col_offset<-c(-1, 0, 1, 1, 1, 0, -1, -1)

growth_roll<-1

growth_row<-coral_row+growth_row_offset[growth_roll]
growth_col<-coral_col+growth_col_offset[growth_roll]

#What we'd like to do
reef[growth_row, growth_col]<-1

#Checking to see our bounds

in_bounds <-growth_row >=1 && growth_row<=5 && growth_col >=1 && growth_col<=5

if(in_bounds=TRUE){reef[growth_row, growth_col]<-1}

coral_row<-3
coral_col<-3
reef[coral_row,coral_col]<-1
growth_row<-coral_row+growth_row_offset[growth_roll]
growth_col<-coral_col+growth_col_offset[growth_roll]

in_bounds <-growth_row >=1 && growth_row<=5 && growth_col >=1 && growth_col<=5

if(in_bounds=TRUE){reef[growth_row, growth_col]<-1}
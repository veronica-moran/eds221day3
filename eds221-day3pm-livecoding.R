#Loops

# Looping ITERATES through a SEQUENCE

corals<-c("Porites", "Pocillopora", "Acropera")

for (c in corals){
  print(c)
} # print( explicetely sends output to the console inside loops)

#Its also common to iterate throught he indeces of the sequence

for(i in 1:length(corals)){
  print(corals[i])
}
 # Fibonacci loop

#REVIEW THIS

fibonacci<- integer(6)
fibonacci[1:2]<-1
for (i in 3:length(fibonacci)){
  fibonacci[i]<-fibonacci[i-1]+fibonacci[i-2]}
fibonacci

#Nested Loops Iterate over multiple sequences

small_reef<-matrix(1:9, nrow=3,ncol=3)
small_reef

for (r in 1:3){
  for(c in 1:3){
  print(paste(r,c,sep=","))
  print(small_reef[r,c])
}}

#Changing two lines only such that the output is 1-9

for (c in 1:3){
  for(r in 1:3){
  print(paste(r,c,sep=","))
  print(small_reef[r,c])
}}


#Loop through randomly sampled intial starting locations

reef<-matrix(0, nrow=5, ncol=5)
set.seed(123)
random_coral<-sample(1:25, size=8)

for(rc in random_coral){
  rc_row<-(rc-1)%/% 5+1
  rc_col<-(rc-1)%% 5+1
  reef[rc_row, rc_col]<-1
}
reef





rc_row<-(random_coral-1)%/% 5+1
rec_col<-(random_coral-1)%% 5+1


# Combining loops and conditional statements

for(r in 1:5){
  for (c in 1:5){
      if (reef[r,c]==1){print(paste(r,c,sep=","))}
  }
}

#


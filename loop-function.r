song<-function(n=99) {
a<-" bottle"
  b<-" of beer on the wall, "
  c<-" of beer. "
  d<-"Take one down and pass it around: "

  ## set "beer counter" vector
  counter<-c(as.character(n:1),"No more")
 
  ## set plural 
  s<-ifelse(counter=="1","","s")

  ## build up the verses vector
  firsthalf<-paste(counter,a,s,b,counter,a,s,c,sep="")
  sechalf1.99<-paste(d,counter[-1],a,s[-1],b,sep="")
  sechalf100<-paste("Go to the store and buy some more: ", counter[1],a,"s",b,sep="")

  ## song is the vector of n+1 complete verses
  song<-paste(firsthalf,c(sechalf1.99,sechalf100),sep="")
}  
 
print(song())

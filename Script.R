library(stringr) #function str_sub

pathname = "C:/Users/Utilisateur/Desktop/testR"
setwd(pathname)

# Retrieve the address of the directory where all the files to be processed are located
dossiers=list.files(pathname)

# To avoid opening the final data once the file has been executed once
dossiers = list.files(pattern = 'D', full.names = TRUE)

#### Run the loop on each file contained in dossiers #### 
for (fic in 1:length(dossiers)) {
  ## Open file 1
  data= read.table(dossiers[fic],sep=",",header=TRUE)
  S=c() #init variables
  nom=c()
  ## loop over the columns of the file
  for(i in 1:ncol(data))
  {
    
    if(str_sub(names(data)[i],1,4)=="Mean") #if column names that start with Mean
    {
      X=data[,i]
      M=max(X)
      posmax=which.max(X)
      temps=c()
      j=0
      temps[posmax]=0
      while((posmax+j)!=length(X))  #until we reach the size of the vector
      {
        temps[posmax+j+1] = temps[posmax+j] + 0.25 #add 0.25 to the previous box
        j=j+1
      }
      j=0  #reset the cursor
      while((posmax-j)!=1) #until we reach 0
      {
        temps[posmax-j-1] = temps[posmax-j] - 0.25 #remove 0.25
        j=j+1
      }
      norm = X/M
      S=cbind(S,temps,norm)
      nom = c(nom,paste("temps",i,sep=""),paste("norm",i,sep=""))
    } # end of if statement if the column is called Mean
    
  } # end loop on the columns of a file
  write.table(S,file=paste("Sortie",dossiers[fic],sep="_"),sep=",",row.names=FALSE, col.names=nom)
} #end loop on files

complete<-function(directory,id=1:332){
        x<-list.files(directory,full.names = TRUE)
        dat<-data.frame()
        name<-c("id","nobs")
        for(i in id){
                y<-read.csv(x[i])
                z<-cbind(i,nrow(y[complete.cases(y),]))
                dat<-rbind(dat,z)
        }
        colnames(dat)<-name
        dat
}
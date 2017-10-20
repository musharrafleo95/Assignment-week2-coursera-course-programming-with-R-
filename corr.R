corr<-function(directory,threshold = 0){
        dat<-complete(directory)
        if(threshold<=max(dat$nobs)){
                vec<-dat[which(dat$nobs>threshold),"id"] ##getting the id number
                x<-list.files(directory,full.names = TRUE) ##getting all the files in directory
                vec2<-c()  ##creating an empty vector
                for(i in 1:length(vec)){  ##applying for loop to read csv file 
                        read_file<-read.csv(x[vec[i]])  ##reading csv file
                        read_file<-read_file[complete.cases(read_file),] ##removing na values
                        vec2<-c(vec2,cor(read_file$sulfate,read_file$nitrate)) ##placing values in a single vector
                }
                vec2
        }
        else{
                vec2<-c()
                vec2
        }
        
}

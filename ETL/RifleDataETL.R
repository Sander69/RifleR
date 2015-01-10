#==================================================================================================;
# Author:  Steven Matthew Anderson                                                                 ;
# Program: RifleDataETL.Continu.R                                                                  ;
# Purpose: Extract, Transform and Load the Rifle Shot Data for the Analysis Programs.              ;
#==================================================================================================;

# SET WORKING DIRECTORY                                                                            ;
dir<-"~/Dropbox/AndersonStatistics/RifleR/Data"
setwd(dir)
getwd()

# LOAD REGRESSION DATA
RawData<-read.csv("SourceRifleData.csv",header=TRUE,as.is=TRUE)

# DELETE BAD UNITS
# UNITS 1.98, 2.17, 2.24 AND 2.29 ARE DUE TO TUMBLED BULLETS
ShotData<-subset(RawData, RawData$include==1)
attach(ShotData)
sums<-summary(ShotData)

#__________________________________________________________________________________________________
# COMBINE levels of Powder Charge (PC) and Distance Off Lands (DOL)
#
#   CLASS VARIABLE NAME: level0
#   DOL       PC
#   1 <- 0.0050       1 <- 25.3000
#   2 <- 0.0100       2 <- 25.4000
#   3 <- 0.0150       3 <- 25.5000
#   4 <- 0.0200       4 <- 25.6000
#   5 <  0.0250	      5 <- 25.7000
#   6 <- 0.0300	      6 <- 25.8000
#                     7 <- 25.9000
#	                    8 <- 26.0000
#	                    9 <- 26.1000
#       	            10 <- 26.2000          60 levels total
#
#   CLASS VARIABLE NAME: level1
#   DOL GROUPS                  PC GROUPS 
#   1 <- {0.0050, 0.0100}       1 <- 25.30
#   2 <- {0.0150, 0.0200}       2 <- 25.40
#   3 <- {0.0250, 0.0300}       3 <- 25.50
#                               4 <- 25.60
#                               5 <- 25.70
#                               6 <- 25.80
#                               7 <- 25.90
#                               8 <- 26.00
#                               9 <- 26.10
#                               10 <- 26.20          30 levels total
#
#   CLASS VARIABLE NAME: level2
#   DOL GROUPS                  PC GROUPS 
#   1 <- {0.0050, 0.0100}       1 <- {25.30, 25.40}
#   2 <- {0.0150, 0.0200}       2 <- {25.50, 25.60}
#   3 <- {0.0250, 0.0300}       3 <- {25.70, 25.80}
#                               4 <- {25.90, 26.00}
#                               5 <- {26.10, 26.20}          15 levels total
#
#   CLASS VARIABLE NAME: level3
#   DOL GROUPS                  PC GROUPS 
#   1 <- {0.0050, 0.0100}       1 <- {25.30, 25.40, 25.50}
#   2 <- {0.0150, 0.0200}       2 <- {25.60, 25.70}
#   3 <- {0.0250, 0.0300}       3 <- {25.80, 25.90}
#                               4 <- {26.00, 26.10, 26.20}          12 levels total
#__________________________________________________________________________________________________

# CREATE THE DISTANCE OFF LANDS LEVELS (level0) ------------------------------
DOL1 <- which( ShotData$DOL==0.0050 )
DOL2 <- which( ShotData$DOL==0.0100 )
DOL3 <- which( ShotData$DOL==0.0150 )
DOL4 <- which( ShotData$DOL==0.0200 )
DOL5 <- which( ShotData$DOL==0.0250 )
DOL6 <- which( ShotData$DOL==0.0300 )

ShotData[DOL1,"DOL.lvl0"] <- 0.00;
ShotData[DOL2,"DOL.lvl0"] <- 0.20;
ShotData[DOL3,"DOL.lvl0"] <- 0.40;
ShotData[DOL4,"DOL.lvl0"] <- 0.60;
ShotData[DOL5,"DOL.lvl0"] <- 0.80;
ShotData[DOL6,"DOL.lvl0"] <- 1.00;

# CREATE THE POWDER CHARGE LEVELS (level0) ------------------------------------
PC1 <- which( ShotData$PC==25.3 )
PC2 <- which( ShotData$PC==25.4 )
PC3 <- which( ShotData$PC==25.5 )
PC4 <- which( ShotData$PC==25.6 )
PC5 <- which( ShotData$PC==25.7 )
PC6 <- which( ShotData$PC==25.8 )
PC7 <- which( ShotData$PC==25.9 )
PC8 <- which( ShotData$PC==26.0 )
PC9 <- which( ShotData$PC==26.1 )
PC10 <- which( ShotData$PC==26.2 )

ShotData[PC1,"PC.lvl0"] <- 0.10;
ShotData[PC2,"PC.lvl0"] <- 0.20;
ShotData[PC3,"PC.lvl0"] <- 0.30;
ShotData[PC4,"PC.lvl0"] <- 0.40;
ShotData[PC5,"PC.lvl0"] <- 0.50;
ShotData[PC6,"PC.lvl0"] <- 0.60;
ShotData[PC7,"PC.lvl0"] <- 0.70;
ShotData[PC8,"PC.lvl0"] <- 0.80;
ShotData[PC9,"PC.lvl0"] <- 0.90;
ShotData[PC10,"PC.lvl0"] <- 1.00;

# DEFINE THE LEVEL VARIABLE WITH DOL.lvl0 AND PC.lvl0
ShotData[,"level0"]<-paste(ShotData$DOL.lvl0,"&",ShotData$PC.lvl0)

levels(ShotData$DOL.lvl0)<-c("1","2","3","4","5","6")
levels(ShotData$PC.lvl0)<-c("1","2","3","4","5","6","7","8","9","10")


# CREATE THE DISTANCE OFF LANDS LEVELS (level1) ------------------------------
DOL1 <- which( ShotData$DOL==0.0050 )
DOL2 <- which( ShotData$DOL==0.0100 )
DOL3 <- which( ShotData$DOL==0.0150 )
DOL4 <- which( ShotData$DOL==0.0200 )
DOL5 <- which( ShotData$DOL==0.0250 )
DOL6 <- which( ShotData$DOL==0.0300 )

ShotData[DOL1,"DOL.lvl1"] <- 0.00;
ShotData[DOL2,"DOL.lvl1"] <- 0.00;
ShotData[DOL3,"DOL.lvl1"] <- 0.50;
ShotData[DOL4,"DOL.lvl1"] <- 0.50;
ShotData[DOL5,"DOL.lvl1"] <- 1.00;
ShotData[DOL6,"DOL.lvl1"] <- 1.00;

# CREATE THE POWDER CHARGE LEVELS (level1) ------------------------------------
PC1 <- which( ShotData$PC==25.3 )
PC2 <- which( ShotData$PC==25.4 )
PC3 <- which( ShotData$PC==25.5 )
PC4 <- which( ShotData$PC==25.6 )
PC5 <- which( ShotData$PC==25.7 )
PC6 <- which( ShotData$PC==25.8 )
PC7 <- which( ShotData$PC==25.9 )
PC8 <- which( ShotData$PC==26.0 )
PC9 <- which( ShotData$PC==26.1 )
PC10 <- which( ShotData$PC==26.2 )

ShotData[PC1,"PC.lvl1"] <- 0.10;
ShotData[PC2,"PC.lvl1"] <- 0.20;
ShotData[PC3,"PC.lvl1"] <- 0.30;
ShotData[PC4,"PC.lvl1"] <- 0.40;
ShotData[PC5,"PC.lvl1"] <- 0.50;
ShotData[PC6,"PC.lvl1"] <- 0.60;
ShotData[PC7,"PC.lvl1"] <- 0.70;
ShotData[PC8,"PC.lvl1"] <- 0.80;
ShotData[PC9,"PC.lvl1"] <- 0.90;
ShotData[PC10,"PC.lvl1"] <- 1.00;

# DEFINE THE LEVEL VARIABLE WITH DOL.lvl1 AND PC.lvl1
ShotData[,"level1"]<-paste(ShotData$DOL.lvl1,"&",ShotData$PC.lvl1)
levels(ShotData$DOL.lvl1)<-c("Low","Medium","High")
levels(ShotData$PC.lvl1)<-c("1","2","3","4","5","6","7","8","9","10")



# CREATE THE POWDER CHARGE LEVELS (level2) ------------------------------------
PC1 <- which( ShotData$PC==25.3 )
PC2 <- which( ShotData$PC==25.4 )
PC3 <- which( ShotData$PC==25.5 )
PC4 <- which( ShotData$PC==25.6 )
PC5 <- which( ShotData$PC==25.7 )
PC6 <- which( ShotData$PC==25.8 )
PC7 <- which( ShotData$PC==25.9 )
PC8 <- which( ShotData$PC==26.0 )
PC9 <- which( ShotData$PC==26.1 )
PC10 <- which( ShotData$PC==26.2 )

ShotData[PC1,"PC.lvl2"] <- 0.00;
ShotData[PC2,"PC.lvl2"] <- 0.00;
ShotData[PC3,"PC.lvl2"] <- 0.25;
ShotData[PC4,"PC.lvl2"] <- 0.25;
ShotData[PC5,"PC.lvl2"] <- 0.50;
ShotData[PC6,"PC.lvl2"] <- 0.50;
ShotData[PC7,"PC.lvl2"] <- 0.75;
ShotData[PC8,"PC.lvl2"] <- 0.75;
ShotData[PC9,"PC.lvl2"] <- 1.00;
ShotData[PC10,"PC.lvl2"] <- 1.00;

# DEFINE THE LEVEL VARIABLE WITH DOL.lvl1 AND PC.lvl2
ShotData[,"level2"]<-paste(ShotData$DOL.lvl1,"&",ShotData$PC.lvl2)
levels(ShotData$PC.lvl2)<-c("Bottom","Low","Medium","High","Top")


# CREATE THE POWDER CHARGE LEVELS (level3) ------------------------------------
PC1 <- which( ShotData$PC==25.3 )
PC2 <- which( ShotData$PC==25.4 )
PC3 <- which( ShotData$PC==25.5 )
PC4 <- which( ShotData$PC==25.6 )
PC5 <- which( ShotData$PC==25.7 )
PC6 <- which( ShotData$PC==25.8 )
PC7 <- which( ShotData$PC==25.9 )
PC8 <- which( ShotData$PC==26.0 )
PC9 <- which( ShotData$PC==26.1 )
PC10 <- which( ShotData$PC==26.2 )

ShotData[PC1,"PC.lvl3"] <- 0.00;
ShotData[PC2,"PC.lvl3"] <- 0.00;
ShotData[PC3,"PC.lvl3"] <- 0.00;
ShotData[PC4,"PC.lvl3"] <- 0.33;
ShotData[PC5,"PC.lvl3"] <- 0.33;
ShotData[PC6,"PC.lvl3"] <- 0.67;
ShotData[PC7,"PC.lvl3"] <- 0.67;
ShotData[PC8,"PC.lvl3"] <- 1.00;
ShotData[PC9,"PC.lvl3"] <- 1.00;
ShotData[PC10,"PC.lvl3"] <- 1.00;


# Define the level variable with DOL.lvl1 and PC.lvl3
ShotData[,"level3"]<-paste(ShotData$DOL.lvl1,"&",ShotData$PC.lvl3)
levels(ShotData$PC.lvl2)<-c("Low","Medium-Low","Medium-High","High")


# SUMMARY STATISTICS ##############################################################################

summary(ShotData)

###################################################################################################
# [1]  "Unit.ID"    "Lot"        "Case.No"    "Case.L"      "Neck.Idia"   "Neck.Odia"    "Neck.Thick"       
# [8]  "Neck.Err"   "HS"         "PPDpth"     "PPDia"       "Case.Wgt"    "CMS"          "Media.Wgt"        
# [15] "Vol.Corr"   "Wgt.Corr"   "Case.Vol"   "Pr.Wgt"      "Bullet.OL"   "Bullet.Wgt"   "Reload.Ord"       
# [22] "DOL"        "PC"         "OLC"        "ALC"         "ADOL"        "DOL.Err"      "OCWgt"            
# [29] "SumWgt"     "WgtErr"     "Box.Ord"    "Target.No"   "Time"        "Temp"         "Velocity"         
# [36] "Clean.No"   "Group.No"   "Day"        "Notes"       "Vertical"    "Horizontal"   "DFB"              
# [43] "include"    "tumble"     "mismatch"   "DOL.lvl"     "PC.lvl"
###################################################################################################

ShotData[which( Case.L < 1.753 ),"Case.L.lvl"]<-0
ShotData[which( Case.L >= 1.753 ),"Case.L.lvl"]<-1

ShotData[which( Neck.Idia < 0.2200 ),"Neck.Idia.lvl"]<-0
ShotData[which( Neck.Idia >= 0.2200 ),"Neck.Idia.lvl"]<-1

ShotData[which( Neck.Odia < 0.2414 ),"Neck.Odia.lvl"]<-0
ShotData[which( Neck.Odia >= 0.2414 ),"Neck.Odia.lvl"]<-1

ShotData[which( Neck.Thick < 0.01139 ),"Neck.Thick.lvl"]<-0
ShotData[which( Neck.Thick >= 0.01139 ),"Neck.Thick.lvl"]<-1

ShotData[which( HS < -8.401 ),"HS.lvl"]<-0
ShotData[which( HS >= -8.401 ),"HS.lvl"]<-1

ShotData[which( PPDpth < 0.1190 ),"PPDpth.lvl"]<-0
ShotData[which( PPDpth >= 0.1190),"PPDpth.lvl"]<-1

ShotData[which( PPDia < 0.1710 ),"PPDia.lvl"]<-0
ShotData[which( PPDia >= 0.1710 ),"PPDia.lvl"]<-1

ShotData[which( Case.Wgt < 92.96 ),"Case.Wgt.lvl"]<-0
ShotData[which( Case.Wgt >= 92.96 ),"Case.Wgt.lvl"]<-1

ShotData[which( Case.Vol < 45.85 ),"Case.Vol.lvl"]<-0
ShotData[which( Case.Vol >= 45.85 ),"Case.Vol.lvl"]<-1

ShotData[which( Pr.Wgt < 3.264 ),"Pr.Wgt.lvl"]<-0
ShotData[which( Pr.Wgt >= 3.264 ),"Pr.Wgt.lvl"]<-1

ShotData[which( Bullet.OL < 0.8107 ),"Bullet.OL.lvl"]<-0
ShotData[which( Bullet.OL >= 0.8107 ),"Bullet.OL.lvl"]<-1

ShotData[which( Bullet.Wgt < 55.02 ),"Bullet.Wgt.lvl"]<-0
ShotData[which( Bullet.Wgt >= 55.02 ),"Bullet.Wgt.lvl"]<-1

ShotData[which( DOL < 0.01734 ),"DOL.lvl"]<-0
ShotData[which( DOL >= 0.01734 ),"DOL.lvl"]<-1

ShotData[which( PC < 25.74 ),"PC.lvl"]<-0
ShotData[which( PC >= 25.74 ),"PC.lvl"]<-1

ShotData[which( OLC < 1.934 ),"OLC.lvl"]<-0
ShotData[which( OLC >= 1.934 ),"OLC.lvl"]<-1

ShotData[which( Velocity < 3359 ),"Velocity.lvl"]<-0
ShotData[which( Velocity >= 3359 ),"Velocity.lvl"]<-1

summary(ShotData)

#***************************************************************************************************
#*****               COMPUTE BULLSEYE GROUP STATISTICS LEVEL=level0                            *****
#***************************************************************************************************
# COMPUTE THE Horizontal DISTANCE FROM BULLSEYE GROUP STATISTICS
h.grp.mean0<-round(tapply(ShotData$Horizontal,ShotData$level0,na.rm=TRUE, mean),4)
h.grp.sd0<-round(tapply(ShotData$Horizontal,ShotData$level0,na.rm=TRUE, sd),4)
grp.n0<-tapply(ShotData$Horizontal,ShotData$level0,length)

levels<-as.vector(as.data.frame(dimnames(h.grp.mean0)))
colnames(levels)<-c("levels")

# COMPUTE THE Vertical DISTANCE FROM BULLSEYE GROUP STATISTICS
v.grp.mean0<-round(tapply(ShotData$Vertical,ShotData$level0,na.rm=TRUE,mean),4)
v.grp.sd0<-round(tapply(ShotData$Vertical,ShotData$level0,na.rm=TRUE,sd),4)

# JOIN THE Horizontal AND Vertical DATA TOGETHER
group.vars0<-as.data.frame(cbind(levels, h.grp.mean0, h.grp.sd0, v.grp.mean0, v.grp.sd0, grp.n0))
rownames(group.vars0)<-c(1:60)

# JOIN THE GROUP DATA TO THE SHOT DATA
ShotData<-merge(x=ShotData,y=group.vars0,by.x="level0",by.y="levels",sort=TRUE)
#rm(group.vars0, h.grp.mean0, h.grp.sd0, grp.n0, v.grp.mean0, v.grp.sd0)

# COMPUTE THE DISTANCE FROM THE SHOT TO THE GROUP CENTER
Dist.from.Center0<-as.data.frame(
             sqrt((ShotData$Horizontal-ShotData$h.grp.mean0)^2+(ShotData$Vertical-ShotData$v.grp.mean0)^2));               
colnames(Dist.from.Center0)<-c("Dist.from.Center0")

# COMPUTE THE RADIAL STANDARD DEVIATION OF THE GROUP
Radial.Std.Dev0<-as.data.frame(sqrt(ShotData$h.grp.sd0^2 + ShotData$v.grp.sd0^2))
colnames(Radial.Std.Dev0)<-c("Radial.Std.Dev0")

# JOIN THE GROUP DATA TO THE SHOT DATA
ShotData<-cbind(ShotData,Dist.from.Center0,Radial.Std.Dev0)
#rm(Dist.from.Center0,Radial.Std.Dev0)

# COMPUTE EXTREME SPREAD OF GROUP
ExSpread.Data<-subset(ShotData, select=c(level0, Horizontal, Vertical))

# SPLITTING YOUR DATA SET
sdata=split(ExSpread.Data,ExSpread.Data$level0)

# COMPUTE MAXIMUM EUCLIDEAN DISTANCE
res=as.vector(lapply(sdata,function(X) max(dist(X[,-1]))))

# COMBINE THE SPLIT DATA SET
ExSpread.Data<-do.call(c,res)
ExSpread.Data<-cbind(x=ExSpread.Data,y=levels)
rownames(ExSpread.Data)<-c(1:60)
names(ExSpread.Data)[1]<-"Extreme.Spread0"

# JOIN THE GROUP DATA TO THE SHOT DATA
ShotData<-merge(x=ShotData, y=ExSpread.Data, by.x="level0", by.y="levels", sort=TRUE)
#rm(ExSpread.Data,res,sdata)

# COMPUTE GROUP MEAN RADIUS
Mean.Radius0<-round(tapply(ShotData$Dist.from.Center0,as.character(ShotData$level0),na.rm=TRUE, mean),4)
Mean.Radius0<-cbind(x=Mean.Radius0,y=levels)
rownames(Mean.Radius0)<-c(1:60)
names(Mean.Radius0)[1]<-"Mean.Radius0"

# JOIN THE GROUP DATA TO THE SHOT DATA
ShotData<-merge(x=ShotData,y=Mean.Radius0,by.x="level0",by.y="levels",sort=TRUE)

# COMPUTE THE GROUP MEAN VELOCITY BY POWDER CHARGE AND DISTANCE OFF LANDS
velocity.mean0<-round(tapply(ShotData$Velocity,as.character(ShotData$level0),mean,na.rm=TRUE),4)
velocity.mean0<-cbind(x=velocity.mean0,y=levels)
rownames(velocity.mean0)<-c(1:60)
names(velocity.mean0)[1]<-"velocity.mean0"
velocity.sd0<-round(tapply(ShotData$Velocity,as.character(ShotData$level0),sd,na.rm=TRUE),4)
velocity.sd0<-cbind(x=velocity.sd0,y=levels)
rownames(velocity.sd0)<-c(1:60)
names(velocity.sd0)[1]<-"velocity.sd0"

ShotData<-merge(x=ShotData,y=velocity.mean0,by.x="level0",by.y="levels",sort=TRUE)
ShotData<-merge(x=ShotData,y=velocity.sd0,by.x="level0",by.y="levels",sort=TRUE)

ShotData<-ShotData[ with(ShotData,order(Mean.Radius0,level0)), ]
#View(ShotData)


#***************************************************************************************************
#*****               COMPUTE BULLSEYE GROUP STATISTICS LEVEL=level1                            *****
#***************************************************************************************************
# COMPUTE THE Horizontal DISTANCE FROM BULLSEYE GROUP STATISTICS
h.grp.mean1<-round(tapply(ShotData$Horizontal,ShotData$level1,na.rm=TRUE, mean),4)
h.grp.sd1<-round(tapply(ShotData$Horizontal,ShotData$level1,na.rm=TRUE, sd),4)
grp.n1<-tapply(ShotData$Horizontal,ShotData$level1,length)

levels<-as.vector(as.data.frame(dimnames(h.grp.mean1)))
colnames(levels)<-c("levels")

# COMPUTE THE Vertical DISTANCE FROM BULLSEYE GROUP STATISTICS
v.grp.mean1<-round(tapply(ShotData$Vertical,ShotData$level1,na.rm=TRUE,mean),4)
v.grp.sd1<-round(tapply(ShotData$Vertical,ShotData$level1,na.rm=TRUE,sd),4)

# JOIN THE Horizontal AND Vertical DATA TOGETHER
group.vars1<-as.data.frame(cbind(levels, h.grp.mean1, h.grp.sd1, v.grp.mean1, v.grp.sd1, grp.n1))
rownames(group.vars1)<-c(1:30)

# JOIN THE GROUP DATA TO THE SHOT DATA
ShotData<-merge(x=ShotData,y=group.vars1,by.x="level1",by.y="levels",sort=TRUE)
#rm(group.vars1, h.grp.mean1, h.grp.sd1, grp.n1, v.grp.mean1, v.grp.sd1)

# COMPUTE THE DISTANCE FROM THE SHOT TO THE GROUP CENTER
Dist.from.Center1<-as.data.frame(
             sqrt((ShotData$Horizontal-ShotData$h.grp.mean1)^2+(ShotData$Vertical-ShotData$v.grp.mean1)^2));               
colnames(Dist.from.Center1)<-c("Dist.from.Center1")

# COMPUTE THE RADIAL STANDARD DEVIATION OF THE GROUP
Radial.Std.Dev1<-as.data.frame(sqrt(ShotData$h.grp.sd1^2 + ShotData$v.grp.sd1^2))
colnames(Radial.Std.Dev1)<-c("Radial.Std.Dev1")

# JOIN THE GROUP DATA TO THE SHOT DATA
ShotData<-cbind(ShotData,Dist.from.Center1,Radial.Std.Dev1)
#rm(Dist.from.Center1,Radial.Std.Dev1)

# COMPUTE EXTREME SPREAD OF GROUP
ExSpread.Data<-subset(ShotData, select=c(level1, Horizontal, Vertical))

# SPLITTING YOUR DATA SET
sdata=split(ExSpread.Data,ExSpread.Data$level1)

# COMPUTE MAXIMUM EUCLIDEAN DISTANCE
res=as.vector(lapply(sdata,function(X) max(dist(X[,-1]))))

# COMBINE THE SPLIT DATA SET
ExSpread.Data<-do.call(c,res)
ExSpread.Data<-cbind(x=ExSpread.Data,y=levels)
rownames(ExSpread.Data)<-c(1:30)
names(ExSpread.Data)[1]<-"Extreme.Spread1"

# JOIN THE GROUP DATA TO THE SHOT DATA
ShotData<-merge(x=ShotData, y=ExSpread.Data, by.x="level1", by.y="levels", sort=TRUE)
#rm(ExSpread.Data,res,sdata)

# COMPUTE GROUP MEAN RADIUS
Mean.Radius1<-round(tapply(ShotData$Dist.from.Center1,as.character(ShotData$level1),na.rm=TRUE, mean),4)
Mean.Radius1<-cbind(x=Mean.Radius1,y=levels)
rownames(Mean.Radius1)<-c(1:30)
names(Mean.Radius1)[1]<-"Mean.Radius1"

# JOIN THE GROUP DATA TO THE SHOT DATA
ShotData<-merge(x=ShotData,y=Mean.Radius1,by.x="level1",by.y="levels",sort=TRUE)

# COMPUTE THE GROUP MEAN VELOCITY BY POWDER CHARGE AND DISTANCE OFF LANDS
velocity.mean1<-round(tapply(ShotData$Velocity,as.character(ShotData$level1),mean,na.rm=TRUE),4)
velocity.mean1<-cbind(x=velocity.mean1,y=levels)
rownames(velocity.mean1)<-c(1:30)
names(velocity.mean1)[1]<-"velocity.mean1"
velocity.sd1<-round(tapply(ShotData$Velocity,as.character(ShotData$level1),sd,na.rm=TRUE),4)
velocity.sd1<-cbind(x=velocity.sd1,y=levels)
rownames(velocity.sd1)<-c(1:30)
names(velocity.sd1)[1]<-"velocity.sd1"

ShotData<-merge(x=ShotData,y=velocity.mean1,by.x="level1",by.y="levels",sort=TRUE)
ShotData<-merge(x=ShotData,y=velocity.sd1,by.x="level1",by.y="levels",sort=TRUE)

ShotData<-ShotData[ with(ShotData,order(Mean.Radius1,level1)), ]
#View(ShotData)


#***************************************************************************************************
#*****               COMPUTE BULLSEYE GROUP STATISTICS LEVEL=level2                            *****
#***************************************************************************************************
# COMPUTE THE Horizontal DISTANCE FROM BULLSEYE GROUP STATISTICS
h.grp.mean2<-round(tapply(ShotData$Horizontal,ShotData$level2,na.rm=TRUE, mean),4)
h.grp.sd2<-round(tapply(ShotData$Horizontal,ShotData$level2,na.rm=TRUE, sd),4)
grp.n2<-tapply(ShotData$Horizontal,ShotData$level2,length)

levels<-as.vector(as.data.frame(dimnames(h.grp.mean2)))
colnames(levels)<-c("levels")

# COMPUTE THE Vertical DISTANCE FROM BULLSEYE GROUP STATISTICS
v.grp.mean2<-round(tapply(ShotData$Vertical,ShotData$level2,na.rm=TRUE,mean),4)
v.grp.sd2<-round(tapply(ShotData$Vertical,ShotData$level2,na.rm=TRUE,sd),4)

# JOIN THE Horizontal AND Vertical DATA TOGETHER
group.vars2<-as.data.frame(cbind(levels, h.grp.mean2, h.grp.sd2, v.grp.mean2, v.grp.sd2, grp.n2))
rownames(group.vars2)<-c(1:15)

# JOIN THE GROUP DATA TO THE SHOT DATA
ShotData<-merge(x=ShotData,y=group.vars2,by.x="level2",by.y="levels",sort=TRUE)
#rm(group.vars2, h.grp.mean2, h.grp.sd2, grp.n2, v.grp.mean2, v.grp.sd2)

# COMPUTE THE DISTANCE FROM THE SHOT TO THE GROUP CENTER
Dist.from.Center2<-as.data.frame(
             sqrt((ShotData$Horizontal-ShotData$h.grp.mean2)^2+(ShotData$Vertical-ShotData$v.grp.mean2)^2));               
colnames(Dist.from.Center2)<-c("Dist.from.Center2")

# COMPUTE THE RADIAL STANDARD DEVIATION OF THE GROUP
Radial.Std.Dev2<-as.data.frame(sqrt(ShotData$h.grp.sd2^2 + ShotData$v.grp.sd2^2))
colnames(Radial.Std.Dev2)<-c("Radial.Std.Dev2")

# JOIN THE GROUP DATA TO THE SHOT DATA
ShotData<-cbind(ShotData,Dist.from.Center2,Radial.Std.Dev2)
#rm(Dist.from.Center2,Radial.Std.Dev2)

# COMPUTE EXTREME SPREAD OF GROUP
ExSpread.Data<-subset(ShotData, select=c(level2, Horizontal, Vertical))

# SPLITTING YOUR DATA SET
sdata=split(ExSpread.Data,ExSpread.Data$level2)

# COMPUTE MAXIMUM EUCLIDEAN DISTANCE
res=as.vector(lapply(sdata,function(X) max(dist(X[,-1]))))

# COMBINE THE SPLIT DATA SET
ExSpread.Data<-do.call(c,res)
ExSpread.Data<-cbind(x=ExSpread.Data,y=levels)
rownames(ExSpread.Data)<-c(1:15)
names(ExSpread.Data)[1]<-"Extreme.Spread2"

# JOIN THE GROUP DATA TO THE SHOT DATA
ShotData<-merge(x=ShotData, y=ExSpread.Data, by.x="level2", by.y="levels", sort=TRUE)
#rm(ExSpread.Data,res,sdata)

# COMPUTE GROUP MEAN RADIUS
Mean.Radius2<-round(tapply(ShotData$Dist.from.Center2,as.character(ShotData$level2),na.rm=TRUE, mean),4)
Mean.Radius2<-cbind(x=Mean.Radius2,y=levels)
rownames(Mean.Radius2)<-c(1:15)
names(Mean.Radius2)[1]<-"Mean.Radius2"

# JOIN THE GROUP DATA TO THE SHOT DATA
ShotData<-merge(x=ShotData,y=Mean.Radius2,by.x="level2",by.y="levels",sort=TRUE)

# COMPUTE THE GROUP MEAN VELOCITY BY POWDER CHARGE AND DISTANCE OFF LANDS
velocity.mean2<-round(tapply(ShotData$Velocity,as.character(ShotData$level2),mean,na.rm=TRUE),4)
velocity.mean2<-cbind(x=velocity.mean2,y=levels)
rownames(velocity.mean2)<-c(1:15)
names(velocity.mean2)[1]<-"velocity.mean2"
velocity.sd2<-round(tapply(ShotData$Velocity,as.character(ShotData$level2),sd,na.rm=TRUE),4)
velocity.sd2<-cbind(x=velocity.sd2,y=levels)
rownames(velocity.sd2)<-c(1:15)
names(velocity.sd2)[1]<-"velocity.sd2"

ShotData<-merge(x=ShotData,y=velocity.mean2,by.x="level2",by.y="levels",sort=TRUE)
ShotData<-merge(x=ShotData,y=velocity.sd2,by.x="level2",by.y="levels",sort=TRUE)

ShotData<-ShotData[ with(ShotData,order(Mean.Radius2,level2)), ]
#View(ShotData)



#***************************************************************************************************
#*****               COMPUTE BULLSEYE GROUP STATISTICS LEVEL=level3                            *****
#***************************************************************************************************
# COMPUTE THE Horizontal DISTANCE FROM BULLSEYE GROUP STATISTICS
h.grp.mean3<-round(tapply(ShotData$Horizontal,ShotData$level3,na.rm=TRUE, mean),4)
h.grp.sd3<-round(tapply(ShotData$Horizontal,ShotData$level3,na.rm=TRUE, sd),4)
grp.n3<-tapply(ShotData$Horizontal,ShotData$level3,length)

levels<-as.vector(as.data.frame(dimnames(h.grp.mean3)))
colnames(levels)<-c("levels")

# COMPUTE THE Vertical DISTANCE FROM BULLSEYE GROUP STATISTICS
v.grp.mean3<-round(tapply(ShotData$Vertical,ShotData$level3,na.rm=TRUE,mean),4)
v.grp.sd3<-round(tapply(ShotData$Vertical,ShotData$level3,na.rm=TRUE,sd),4)

# JOIN THE Horizontal AND Vertical DATA TOGETHER
group.vars3<-as.data.frame(cbind(levels, h.grp.mean3, h.grp.sd3, v.grp.mean3, v.grp.sd3, grp.n3))
rownames(group.vars3)<-c(1:12)

# JOIN THE GROUP DATA TO THE SHOT DATA
ShotData<-merge(x=ShotData,y=group.vars3,by.x="level3",by.y="levels",sort=TRUE)
#rm(group.vars3, h.grp.mean3, h.grp.sd3, grp.n3, v.grp.mean3, v.grp.sd3)

# COMPUTE THE DISTANCE FROM THE SHOT TO THE GROUP CENTER
Dist.from.Center3<-as.data.frame(
             sqrt((ShotData$Horizontal-ShotData$h.grp.mean3)^2+(ShotData$Vertical-ShotData$v.grp.mean3)^2));               
colnames(Dist.from.Center3)<-c("Dist.from.Center3")

# COMPUTE THE RADIAL STANDARD DEVIATION OF THE GROUP
Radial.Std.Dev3<-as.data.frame(sqrt(ShotData$h.grp.sd3^3 + ShotData$v.grp.sd3^3))
colnames(Radial.Std.Dev3)<-c("Radial.Std.Dev3")

# JOIN THE GROUP DATA TO THE SHOT DATA
ShotData<-cbind(ShotData,Dist.from.Center3,Radial.Std.Dev3)
#rm(Dist.from.Center3,Radial.Std.Dev3)

# COMPUTE EXTREME SPREAD OF GROUP
ExSpread.Data<-subset(ShotData, select=c(level3, Horizontal, Vertical))

# SPLITTING YOUR DATA SET
sdata=split(ExSpread.Data,ExSpread.Data$level3)

# COMPUTE MAXIMUM EUCLIDEAN DISTANCE
res=as.vector(lapply(sdata,function(X) max(dist(X[,-1]))))

# COMBINE THE SPLIT DATA SET
ExSpread.Data<-do.call(c,res)
ExSpread.Data<-cbind(x=ExSpread.Data,y=levels)
rownames(ExSpread.Data)<-c(1:12)
names(ExSpread.Data)[1]<-"Extreme.Spread3"

# JOIN THE GROUP DATA TO THE SHOT DATA
ShotData<-merge(x=ShotData, y=ExSpread.Data, by.x="level3", by.y="levels", sort=TRUE)
#rm(ExSpread.Data,res,sdata)

# COMPUTE GROUP MEAN RADIUS
Mean.Radius3<-round(tapply(ShotData$Dist.from.Center3,as.character(ShotData$level3),na.rm=TRUE, mean),4)
Mean.Radius3<-cbind(x=Mean.Radius3,y=levels)
rownames(Mean.Radius3)<-c(1:12)
names(Mean.Radius3)[1]<-"Mean.Radius3"

# JOIN THE GROUP DATA TO THE SHOT DATA
ShotData<-merge(x=ShotData,y=Mean.Radius3,by.x="level3",by.y="levels",sort=TRUE)

# COMPUTE THE GROUP MEAN VELOCITY BY POWDER CHARGE AND DISTANCE OFF LANDS
velocity.mean3<-round(tapply(ShotData$Velocity,as.character(ShotData$level3),mean,na.rm=TRUE),4)
velocity.mean3<-cbind(x=velocity.mean3,y=levels)
rownames(velocity.mean3)<-c(1:12)
names(velocity.mean3)[1]<-"velocity.mean3"
velocity.sd3<-round(tapply(ShotData$Velocity,as.character(ShotData$level3),sd,na.rm=TRUE),4)
velocity.sd3<-cbind(x=velocity.sd3,y=levels)
rownames(velocity.sd3)<-c(1:12)
names(velocity.sd3)[1]<-"velocity.sd3"

ShotData<-merge(x=ShotData,y=velocity.mean3,by.x="level3",by.y="levels",sort=TRUE)
ShotData<-merge(x=ShotData,y=velocity.sd3,by.x="level3",by.y="levels",sort=TRUE)

ShotData<-ShotData[ with(ShotData,order(Mean.Radius3,level3)), ]
View(ShotData)


# Export Extracted and Transformed Data to Data Directory
library(WriteXLS)
WriteXLS(x="ShotData",
         ExcelFileName="~/Dropbox/AndersonStatistics/RifleR/Data/RifleETL.Continu.xls",
         SheetNames="initial data",
         row.names=TRUE,
         col.names=TRUE,
         AdjWidth=TRUE,
         AutoFilter=FALSE,
         BoldHeaderRow=TRUE)


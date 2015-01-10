library(lattice)
# scatterplots for each combination of two factors 
xyplot(ShotData$Vertical~ShotData$Horizontal|ShotData$level0, 
  	 main="Scatterplots by Level0", 
   ylab="Vertical", xlab="Horizontal")
xyplot(ShotData$Vertical~ShotData$Horizontal|ShotData$level1, 
  	 main="Scatterplots by Level1", 
   ylab="Vertical", xlab="Horizontal")
xyplot(ShotData$Vertical~ShotData$Horizontal|ShotData$level2, 
  	 main="Scatterplots by Level2", 
   ylab="Vertical", xlab="Horizontal")
xyplot(ShotData$Vertical~ShotData$Horizontal|ShotData$level3, 
  	 main="Scatterplots by Level3", 
   ylab="Vertical", xlab="Horizontal")
   
   
   
             
bwplot(ShotData$Vertical~ShotData$level0,
    main="Box Plots of Vertical Dispersion by Level0",
    ylab="Vertical", xlab="Horizontal")
bwplot(ShotData$Vertical~ShotData$level1,
    main="Box Plots of Vertical Dispersion by Level1",
    ylab="Vertical", xlab="Horizontal")    
bwplot(ShotData$Vertical~ShotData$level2,
    main="Box Plots of Vertical Dispersion by Level2",
    ylab="Vertical", xlab="Horizontal")
bwplot(ShotData$Vertical~ShotData$level3,
    main="Box Plots of Vertical Dispersion by Level3",
    ylab="Vertical", xlab="Horizontal")
    
    
bwplot(ShotData$Dist.from.Center0~ShotData$level0,
     main="Box Plots of Distance From Center by Level0",
     xlab="Distance From Center of Group")
bwplot(ShotData$Dist.from.Center1~ShotData$level1,
     main="Box Plots of Distance From Center by Level1",
     xlab="Distance From Center of Group")
bwplot(ShotData$Dist.from.Center2~ShotData$level2,
     main="Box Plots of Distance From Center by Level2",
     xlab="Distance From Center of Group")
bwplot(ShotData$Dist.from.Center3~ShotData$level3,
     main="Box Plots of Distance From Center by Level3",
     xlab="Distance From Center of Group")      
     
     
     
bwplot(ShotData$Velocity~ShotData$level0,
     main="Box Plots of Velocity Dispersion by Level0",
     xlab="Velocity")
bwplot(ShotData$Velocity~ShotData$level1,
     main="Box Plots of Velocity Dispersion by Level1",
     xlab="Velocity")
bwplot(ShotData$Velocity~ShotData$level2,
     main="Box Plots of Velocity Dispersion by Level2",
     xlab="Velocity")
bwplot(ShotData$Velocity~ShotData$level3,
     main="Box Plots of Velocity Dispersion by Level3",
     xlab="Velocity")                                 



bwplot(ShotData$Extreme.Spread0~ShotData$level0,
     main="Box Plots of Extreme Spread by Level0",
     xlab="Extreme Spread")
bwplot(ShotData$Extreme.Spread1~ShotData$level1,
     main="Box Plots of Extreme Spread by Level1",
     xlab="Extreme Spread")
bwplot(ShotData$Extreme.Spread2~ShotData$level2,
     main="Box Plots of Extreme Spread by Level2",
     xlab="Extreme Spread")
bwplot(ShotData$Extreme.Spread3~ShotData$level3,
     main="Box Plots of Extreme Spread by Level3",
     xlab="Extreme Spread")





        
densityplot(~ShotData$Vertical|ShotData$level, 
  	        main="Density Plot of Vertical Dispersion by Level",
            xlab="Vertical")
            

densityplot(~ShotData$Velocity|ShotData$level,
            main="Density Plot of Velocity Dispersion by Level",
            xlab="Velocity ft/s")

     

     
bwplot(ShotData$Mean.Radius~ShotData$level,
     main="Box Plots of Mean Radius by Level",
     xlab="Mean Radius")

paste("FULL MODEL");
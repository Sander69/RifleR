* MANOVA 2;

paste("FULL MODEL");
summary(manova(cbind(ShotData$Dist.from.Center,ShotData$Mean.Radius,ShotData$Extreme.Spread)
                              ~ ShotData$DOL.lvl*ShotData$PC.lvl
                                          +ShotData$Case.L.lvl
                                          +ShotData$Neck.Idia.lvl
                                          +ShotData$Neck.Odia.lvl
                                          +ShotData$Neck.Thick.lvl
                                          +ShotData$HS.lvl
                                          +ShotData$PPDpth.lvl
                                          +ShotData$PPDia.lvl
                                          +ShotData$Case.Wgt.lvl
                                          +ShotData$CMS
                                          +ShotData$Case.Vol.lvl
                                          +ShotData$Pr.Wgt.lvl
                                          +ShotData$Bullet.OL.lvl
                                          +ShotData$Bullet.Wgt.lvl
                                          +ShotData$Temp
                                          +ShotData$Velocity))
                                          
                                  Df   Pillai approx F num Df den Df    Pr(>F)    
ShotData$DOL.lvl                   1 0.091971   6.8875      3    204 0.0001931 ***
ShotData$PC.lvl                    1 0.053765   3.8637      3    204 0.0102031 *  
ShotData$Case.L.lvl                1 0.016835   1.1644      3    204 0.3243996    
ShotData$Neck.Idia.lvl             1 0.039163   2.7716      3    204 0.0426305 *  
ShotData$Neck.Odia.lvl             1 0.002514   0.1714      3    204 0.9156157    
ShotData$Neck.Thick.lvl            1 0.003861   0.2636      3    204 0.8516034    
ShotData$HS.lvl                    1 0.028270   1.9783      3    204 0.1183930    
ShotData$PPDpth.lvl                1 0.022180   1.5424      3    204 0.2046810    
ShotData$PPDia.lvl                 1 0.018473   1.2798      3    204 0.2823758    
ShotData$Case.Wgt.lvl              1 0.025377   1.7706      3    204 0.1539461    
ShotData$CMS                       1 0.032411   2.2778      3    204 0.0807443 .  
ShotData$Case.Vol.lvl              1 0.010198   0.7006      3    204 0.5526826    
ShotData$Pr.Wgt.lvl                1 0.008372   0.5741      3    204 0.6326672    
ShotData$Bullet.OL.lvl             1 0.015011   1.0363      3    204 0.3774947    
ShotData$Bullet.Wgt.lvl            1 0.001543   0.1051      3    204 0.9570401 Drop   
ShotData$Temp                      1 0.136226  10.7243      3    204 1.416e-06 ***
ShotData$Velocity                  1 0.042354   3.0075      3    204 0.0313522 *  
ShotData$DOL.lvl:ShotData$PC.lvl   1 0.067111   4.8919      3    204 0.0026375 **                                        
                                          
                                          
paste("Drop Bullet.Wgt.lvl");
summary(manova(cbind(ShotData$Dist.from.Center,ShotData$Mean.Radius,ShotData$Extreme.Spread)
                              ~ ShotData$DOL.lvl*ShotData$PC.lvl
                                          +ShotData$Case.L.lvl
                                          +ShotData$Neck.Idia.lvl
                                          +ShotData$Neck.Odia.lvl
                                          +ShotData$Neck.Thick.lvl
                                          +ShotData$HS.lvl
                                          +ShotData$PPDpth.lvl
                                          +ShotData$PPDia.lvl
                                          +ShotData$Case.Wgt.lvl
                                          +ShotData$CMS
                                          +ShotData$Case.Vol.lvl
                                          +ShotData$Pr.Wgt.lvl
                                          +ShotData$Bullet.OL.lvl
                                          +ShotData$Temp
                                          +ShotData$Velocity))    
                                          
                                  Df   Pillai approx F num Df den Df    Pr(>F)    
ShotData$DOL.lvl                   1 0.091970   6.9211      3    205 0.0001845 ***
ShotData$PC.lvl                    1 0.053761   3.8824      3    205 0.0099499 ** 
ShotData$Case.L.lvl                1 0.016835   1.1701      3    205 0.3221951    
ShotData$Neck.Idia.lvl             1 0.039149   2.7842      3    205 0.0419254 *  
ShotData$Neck.Odia.lvl             1 0.002514   0.1722      3    205 0.9150881  Drop  
ShotData$Neck.Thick.lvl            1 0.003861   0.2648      3    205 0.8506797    
ShotData$HS.lvl                    1 0.028269   1.9879      3    205 0.1169396    
ShotData$PPDpth.lvl                1 0.022170   1.5493      3    205 0.2029342    
ShotData$PPDia.lvl                 1 0.018467   1.2857      3    205 0.2803628    
ShotData$Case.Wgt.lvl              1 0.025376   1.7792      3    205 0.1522757    
ShotData$CMS                       1 0.032407   2.2887      3    205 0.0796040 .  
ShotData$Case.Vol.lvl              1 0.010198   0.7040      3    205 0.5506213    
ShotData$Pr.Wgt.lvl                1 0.008372   0.5769      3    205 0.6308185    
ShotData$Bullet.OL.lvl             1 0.015003   1.0409      3    205 0.3754876    
ShotData$Temp                      1 0.136636  10.8145      3    205 1.258e-06 ***
ShotData$Velocity                  1 0.042717   3.0492      3    205 0.0296760 *  
ShotData$DOL.lvl:ShotData$PC.lvl   1 0.067108   4.9156      3    205 0.0025537 **                                                                       


paste("Drop Bullet.Wgt.lvl, Neck.Odia.lvl");
summary(manova(cbind(ShotData$Dist.from.Center,ShotData$Mean.Radius,ShotData$Extreme.Spread)
                              ~ ShotData$DOL.lvl*ShotData$PC.lvl
                                          +ShotData$Case.L.lvl
                                          +ShotData$Neck.Idia.lvl
                                          +ShotData$Neck.Thick.lvl
                                          +ShotData$HS.lvl
                                          +ShotData$PPDpth.lvl
                                          +ShotData$PPDia.lvl
                                          +ShotData$Case.Wgt.lvl
                                          +ShotData$CMS
                                          +ShotData$Case.Vol.lvl
                                          +ShotData$Pr.Wgt.lvl
                                          +ShotData$Bullet.OL.lvl
                                          +ShotData$Temp
                                          +ShotData$Velocity))   
                                          
                                  Df   Pillai approx F num Df den Df    Pr(>F)    
ShotData$DOL.lvl                   1 0.091759   6.9374      3    206 0.0001802 ***
ShotData$PC.lvl                    1 0.053636   3.8917      3    206 0.0098218 ** 
ShotData$Case.L.lvl                1 0.016825   1.1751      3    206 0.3202462    
ShotData$Neck.Idia.lvl             1 0.039013   2.7877      3    206 0.0417246 *  
ShotData$Neck.Thick.lvl            1 0.001977   0.1360      3    206 0.9384455 Drop   
ShotData$HS.lvl                    1 0.027177   1.9183      3    206 0.1277257    
ShotData$PPDpth.lvl                1 0.022153   1.5556      3    206 0.2013292    
ShotData$PPDia.lvl                 1 0.020204   1.4160      3    206 0.2391825    
ShotData$Case.Wgt.lvl              1 0.025983   1.8317      3    206 0.1424989    
ShotData$CMS                       1 0.031491   2.2327      3    206 0.0855211 .  
ShotData$Case.Vol.lvl              1 0.009340   0.6474      3    206 0.5854392    
ShotData$Pr.Wgt.lvl                1 0.008294   0.5743      3    206 0.6325527    
ShotData$Bullet.OL.lvl             1 0.014852   1.0352      3    206 0.3779803    
ShotData$Temp                      1 0.136507  10.8553      3    206 1.189e-06 ***
ShotData$Velocity                  1 0.042118   3.0192      3    206 0.0308506 *  
ShotData$DOL.lvl:ShotData$PC.lvl   1 0.067453   4.9668      3    206 0.0023849 **   

paste("Drop Bullet.Wgt.lvl, Neck.Odia.lvl, Neck.Thick.lvl");
summary(manova(cbind(ShotData$Dist.from.Center,ShotData$Mean.Radius,ShotData$Extreme.Spread)
                              ~ ShotData$DOL.lvl*ShotData$PC.lvl
                                          +ShotData$Case.L.lvl
                                          +ShotData$Neck.Idia.lvl
                                          +ShotData$HS.lvl
                                          +ShotData$PPDpth.lvl
                                          +ShotData$PPDia.lvl
                                          +ShotData$Case.Wgt.lvl
                                          +ShotData$CMS
                                          +ShotData$Case.Vol.lvl
                                          +ShotData$Pr.Wgt.lvl
                                          +ShotData$Bullet.OL.lvl
                                          +ShotData$Temp
                                          +ShotData$Velocity)) 
                                          
                                  Df   Pillai approx F num Df den Df    Pr(>F)    
ShotData$DOL.lvl                   1 0.091550   6.9535      3    207 0.0001761 ***
ShotData$PC.lvl                    1 0.053459   3.8970      3    207 0.0097485 ** 
ShotData$Case.L.lvl                1 0.016808   1.1796      3    207 0.3185213    
ShotData$Neck.Idia.lvl             1 0.039010   2.8010      3    207 0.0409949 *  
ShotData$HS.lvl                    1 0.027233   1.9317      3    207 0.1255563    
ShotData$PPDpth.lvl                1 0.022867   1.6147      3    207 0.1870475    
ShotData$PPDia.lvl                 1 0.019328   1.3599      3    207 0.2561334    
ShotData$Case.Wgt.lvl              1 0.025510   1.8062      3    207 0.1471361    
ShotData$CMS                       1 0.031834   2.2688      3    207 0.0816308 .  
ShotData$Case.Vol.lvl              1 0.007868   0.5472      3    207 0.6505839  Drop  
ShotData$Pr.Wgt.lvl                1 0.008073   0.5615      3    207 0.6409758    
ShotData$Bullet.OL.lvl             1 0.014870   1.0415      3    207 0.3751771    
ShotData$Temp                      1 0.135397  10.8054      3    207 1.261e-06 ***
ShotData$Velocity                  1 0.041653   2.9990      3    207 0.0316663 *  
ShotData$DOL.lvl:ShotData$PC.lvl   1 0.067620   5.0041      3    207 0.0022681 **  


paste("Drop Bullet.Wgt.lvl, Neck.Odia.lvl, Neck.Thick.lvl, Case.Vol.lvl");
summary(manova(cbind(ShotData$Dist.from.Center,ShotData$Mean.Radius,ShotData$Extreme.Spread)
                              ~ ShotData$DOL.lvl*ShotData$PC.lvl
                                          +ShotData$Case.L.lvl
                                          +ShotData$Neck.Idia.lvl
                                          +ShotData$HS.lvl
                                          +ShotData$PPDpth.lvl
                                          +ShotData$PPDia.lvl
                                          +ShotData$Case.Wgt.lvl
                                          +ShotData$CMS
                                          +ShotData$Pr.Wgt.lvl
                                          +ShotData$Bullet.OL.lvl
                                          +ShotData$Temp
                                          +ShotData$Velocity))    
                                          
                                          
                                  Df   Pillai approx F num Df den Df    Pr(>F)    
ShotData$DOL.lvl                   1 0.091485   6.9817      3    208 0.0001694 ***
ShotData$PC.lvl                    1 0.053288   3.9026      3    208 0.0096709 ** 
ShotData$Case.L.lvl                1 0.016808   1.1853      3    208 0.3163533    
ShotData$Neck.Idia.lvl             1 0.038997   2.8135      3    208 0.0403172 *  
ShotData$HS.lvl                    1 0.027166   1.9361      3    208 0.1248368    
ShotData$PPDpth.lvl                1 0.022863   1.6223      3    208 0.1852796    
ShotData$PPDia.lvl                 1 0.019281   1.3631      3    208 0.2551275    
ShotData$Case.Wgt.lvl              1 0.025480   1.8128      3    208 0.1459024    
ShotData$CMS                       1 0.031734   2.2724      3    208 0.0812423 .  
ShotData$Pr.Wgt.lvl                1 0.008436   0.5898      3    208 0.6222993 Drop   
ShotData$Bullet.OL.lvl             1 0.014895   1.0483      3    208 0.3721829    
ShotData$Temp                      1 0.137267  11.0314      3    208 9.439e-07 ***
ShotData$Velocity                  1 0.041683   3.0157      3    208 0.0309697 *  
ShotData$DOL.lvl:ShotData$PC.lvl   1 0.068602   5.1067      3    208 0.0019794 **                                          
                                          
                                          
paste("Drop Bullet.Wgt.lvl, Neck.Odia.lvl, Neck.Thick.lvl, Case.Vol.lvl, Pr.Wgt.lvl");
summary(manova(cbind(ShotData$Dist.from.Center,ShotData$Mean.Radius,ShotData$Extreme.Spread)
                              ~ ShotData$DOL.lvl*ShotData$PC.lvl
                                          +ShotData$Case.L.lvl
                                          +ShotData$Neck.Idia.lvl
                                          +ShotData$HS.lvl
                                          +ShotData$PPDpth.lvl
                                          +ShotData$PPDia.lvl
                                          +ShotData$Case.Wgt.lvl
                                          +ShotData$CMS
                                          +ShotData$Bullet.OL.lvl
                                          +ShotData$Temp
                                          +ShotData$Velocity))                                             
                                          
                                          
                                          
                                  Df   Pillai approx F num Df den Df    Pr(>F)    
ShotData$DOL.lvl                   1 0.091485   7.0152      3    209 0.0001619 ***
ShotData$PC.lvl                    1 0.053029   3.9013      3    209 0.0096816 ** 
ShotData$Case.L.lvl                1 0.016796   1.1901      3    209 0.3145087    
ShotData$Neck.Idia.lvl             1 0.038648   2.8007      3    209 0.0409829 *  
ShotData$HS.lvl                    1 0.026881   1.9245      3    209 0.1266788    
ShotData$PPDpth.lvl                1 0.022672   1.6161      3    209 0.1867001    
ShotData$PPDia.lvl                 1 0.019278   1.3694      3    209 0.2531472    
ShotData$Case.Wgt.lvl              1 0.025480   1.8215      3    209 0.1442966    
ShotData$CMS                       1 0.031648   2.2769      3    209 0.0807563 .  
ShotData$Bullet.OL.lvl             1 0.014839   1.0494      3    209 0.3717125  Drop  
ShotData$Temp                      1 0.130467  10.4529      3    209 1.949e-06 ***
ShotData$Velocity                  1 0.036806   2.6622      3    209 0.0490762 *  
ShotData$DOL.lvl:ShotData$PC.lvl   1 0.069162   5.1763      3    209 0.0018042 ** 


paste("Drop Bullet.Wgt.lvl, Neck.Odia.lvl, Neck.Thick.lvl, Case.Vol.lvl, Pr.Wgt.lvl, Bullet.OL.lvl");
summary(manova(cbind(ShotData$Dist.from.Center,ShotData$Mean.Radius,ShotData$Extreme.Spread)
                              ~ ShotData$DOL.lvl*ShotData$PC.lvl
                                          +ShotData$Case.L.lvl
                                          +ShotData$Neck.Idia.lvl
                                          +ShotData$HS.lvl
                                          +ShotData$PPDpth.lvl
                                          +ShotData$PPDia.lvl
                                          +ShotData$Case.Wgt.lvl
                                          +ShotData$CMS
                                          +ShotData$Temp
                                          +ShotData$Velocity))                                           

                                  Df   Pillai approx F num Df den Df    Pr(>F)    
ShotData$DOL.lvl                   1 0.091417   7.0430      3    210 0.0001558 ***
ShotData$PC.lvl                    1 0.052974   3.9156      3    210 0.0094940 ** 
ShotData$Case.L.lvl                1 0.016711   1.1896      3    210 0.3146842  Drop  
ShotData$Neck.Idia.lvl             1 0.038591   2.8098      3    210 0.0404903 *  
ShotData$HS.lvl                    1 0.026779   1.9261      3    210 0.1263950    
ShotData$PPDpth.lvl                1 0.022527   1.6132      3    210 0.1873502    
ShotData$PPDia.lvl                 1 0.019237   1.3730      3    210 0.2520220    
ShotData$Case.Wgt.lvl              1 0.025477   1.8300      3    210 0.1427433    
ShotData$CMS                       1 0.031618   2.2855      3    210 0.0798488 .  
ShotData$Temp                      1 0.134903  10.9158      3    210 1.081e-06 ***
ShotData$Velocity                  1 0.037163   2.7018      3    210 0.0465969 *  
ShotData$DOL.lvl:ShotData$PC.lvl   1 0.066741   5.0059      3    210 0.0022557 **                                     
                                          
                                          
paste("Drop Bullet.Wgt.lvl, Neck.Odia.lvl, Neck.Thick.lvl, Case.Vol.lvl, Pr.Wgt.lvl, Bullet.OL.lvl, Case.L.lvl");
summary(manova(cbind(ShotData$Dist.from.Center,ShotData$Mean.Radius,ShotData$Extreme.Spread)
                              ~ ShotData$DOL.lvl*ShotData$PC.lvl
                                          +ShotData$Neck.Idia.lvl
                                          +ShotData$HS.lvl
                                          +ShotData$PPDpth.lvl
                                          +ShotData$PPDia.lvl
                                          +ShotData$Case.Wgt.lvl
                                          +ShotData$CMS
                                          +ShotData$Temp
                                          +ShotData$Velocity))  
                                          
                                  Df   Pillai approx F num Df den Df    Pr(>F)    
ShotData$DOL.lvl                   1 0.089178   6.8863      3    211 0.0001908 ***
ShotData$PC.lvl                    1 0.051301   3.8033      3    211 0.0110013 *  
ShotData$Neck.Idia.lvl             1 0.032057   2.3294      3    211 0.0754525 .  
ShotData$HS.lvl                    1 0.036919   2.6961      3    211 0.0469303 *  
ShotData$PPDpth.lvl                1 0.022473   1.6169      3    211 0.1864701    
ShotData$PPDia.lvl                 1 0.018289   1.3103      3    211 0.2720392    
ShotData$Case.Wgt.lvl              1 0.025390   1.8323      3    211 0.1423125    
ShotData$CMS                       1 0.010046   0.7138      3    211 0.5447614  Drop  
ShotData$Temp                      1 0.135352  11.0099      3    211 9.559e-07 ***
ShotData$Velocity                  1 0.036971   2.7001      3    211 0.0466892 *  
ShotData$DOL.lvl:ShotData$PC.lvl   1 0.062366   4.6781      3    211 0.0034719 **                                                                                    
                                          
paste("Drop Bullet.Wgt.lvl, Neck.Odia.lvl, Neck.Thick.lvl, Case.Vol.lvl, Pr.Wgt.lvl, Bullet.OL.lvl, Case.L.lvl, CMS");
summary(manova(cbind(ShotData$Dist.from.Center,ShotData$Mean.Radius,ShotData$Extreme.Spread)
                              ~ ShotData$DOL.lvl*ShotData$PC.lvl
                                          +ShotData$Neck.Idia.lvl
                                          +ShotData$HS.lvl
                                          +ShotData$PPDpth.lvl
                                          +ShotData$PPDia.lvl
                                          +ShotData$Case.Wgt.lvl
                                          +ShotData$Temp
                                          +ShotData$Velocity))  
                                          
                                  Df   Pillai approx F num Df den Df    Pr(>F)    
ShotData$DOL.lvl                   1 0.088636   6.8728      3    212 0.0001938 ***
ShotData$PC.lvl                    1 0.050675   3.7722      3    212 0.0114544 *  
ShotData$Neck.Idia.lvl             1 0.032047   2.3396      3    212 0.0744441 .  
ShotData$HS.lvl                    1 0.036887   2.7065      3    212 0.0462871 *  
ShotData$PPDpth.lvl                1 0.022470   1.6244      3    212 0.1847324    
ShotData$PPDia.lvl                 1 0.018148   1.3062      3    212 0.2733847  Drop  
ShotData$Case.Wgt.lvl              1 0.025202   1.8270      3    212 0.1432569    
ShotData$Temp                      1 0.134437  10.9757      3    212 9.933e-07 ***
ShotData$Velocity                  1 0.036400   2.6695      3    212 0.0485731 *  
ShotData$DOL.lvl:ShotData$PC.lvl   1 0.060861   4.5796      3    212 0.0039505 **                                          
                                          
                                          
paste("Drop Bullet.Wgt.lvl, Neck.Odia.lvl, Neck.Thick.lvl, Case.Vol.lvl, Pr.Wgt.lvl, Bullet.OL.lvl, Case.L.lvl, CMS");
summary(manova(cbind(ShotData$Dist.from.Center,ShotData$Mean.Radius,ShotData$Extreme.Spread)
                              ~ ShotData$DOL.lvl*ShotData$PC.lvl
                                          +ShotData$Neck.Idia.lvl
                                          +ShotData$HS.lvl
                                          +ShotData$PPDpth.lvl
                                          +ShotData$Case.Wgt.lvl
                                          +ShotData$Temp
                                          +ShotData$Velocity))  
                                          
                                  Df   Pillai approx F num Df den Df    Pr(>F)    
ShotData$DOL.lvl                   1 0.087499   6.8081      3    213 0.0002105 ***
ShotData$PC.lvl                    1 0.049934   3.7317      3    213 0.0120757 *  
ShotData$Neck.Idia.lvl             1 0.031793   2.3314      3    213 0.0752199 .  
ShotData$HS.lvl                    1 0.036881   2.7188      3    213 0.0455422 *  
ShotData$PPDpth.lvl                1 0.022425   1.6287      3    213 0.1837234 Drop   
ShotData$Case.Wgt.lvl              1 0.022687   1.6482      3    213 0.1793100    
ShotData$Temp                      1 0.135315  11.1108      3    213 8.338e-07 ***
ShotData$Velocity                  1 0.036459   2.6865      3    213 0.0474960 *  
ShotData$DOL.lvl:ShotData$PC.lvl   1 0.058615   4.4208      3    213 0.0048675 **                                           

paste("Drop Bullet.Wgt.lvl, Neck.Odia.lvl, Neck.Thick.lvl, Case.Vol.lvl, Pr.Wgt.lvl, Bullet.OL.lvl, Case.L.lvl, CMS");
paste("     PPDpth.lvl")
summary(manova(cbind(ShotData$Dist.from.Center,ShotData$Mean.Radius,ShotData$Extreme.Spread)
                              ~ ShotData$DOL.lvl*ShotData$PC.lvl
                                          +ShotData$Neck.Idia.lvl
                                          +ShotData$HS.lvl
                                          +ShotData$Case.Wgt.lvl
                                          +ShotData$Temp
                                          +ShotData$Velocity))  
                                          
                                  Df   Pillai approx F num Df den Df    Pr(>F)    
ShotData$DOL.lvl                   1 0.087489   6.8392      3    214 0.0002017 ***
ShotData$PC.lvl                    1 0.049908   3.7471      3    214 0.0118268 *  
ShotData$Neck.Idia.lvl             1 0.031626   2.3297      3    214 0.0753767 .  
ShotData$HS.lvl                    1 0.036854   2.7295      3    214 0.0449009 *  
ShotData$Case.Wgt.lvl              1 0.022682   1.6555      3    214 0.1776505  Drop  
ShotData$Temp                      1 0.143662  11.9671      3    214 2.831e-07 ***
ShotData$Velocity                  1 0.038002   2.8179      3    214 0.0400185 *  
ShotData$DOL.lvl:ShotData$PC.lvl   1 0.058798   4.4563      3    214 0.0046409 **   

 paste("Drop Bullet.Wgt.lvl, Neck.Odia.lvl, Neck.Thick.lvl, Case.Vol.lvl, Pr.Wgt.lvl, Bullet.OL.lvl, Case.L.lvl, CMS");
paste("     PPDpth.lvl, Case.Wgt.lvl")
summary(manova(cbind(ShotData$Dist.from.Center,ShotData$Mean.Radius,ShotData$Extreme.Spread)
                              ~ ShotData$DOL.lvl*ShotData$PC.lvl
                                          +ShotData$Neck.Idia.lvl
                                          +ShotData$HS.lvl
                                          +ShotData$Temp
                                          +ShotData$Velocity))  
                                          
                                  Df   Pillai approx F num Df den Df    Pr(>F)    
ShotData$DOL.lvl                   1 0.085082   6.6646      3    215 0.0002531 ***
ShotData$PC.lvl                    1 0.049293   3.7158      3    215 0.0123173 *  
ShotData$Neck.Idia.lvl             1 0.031481   2.3295      3    215 0.0753800 .  
ShotData$HS.lvl                    1 0.036598   2.7225      3    215 0.0453007 *  
ShotData$Temp                      1 0.143316  11.9892      3    215 2.739e-07 ***
ShotData$Velocity                  1 0.038517   2.8710      3    215 0.0373285 *  
ShotData$DOL.lvl:ShotData$PC.lvl   1 0.050369   3.8012      3    215 0.0110067 *                                                                                  
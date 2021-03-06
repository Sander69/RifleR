* MANOVA 1 ;

summary(manova(cbind(ShotData$Dist.from.Center,ShotData$Mean.Radius,ShotData$Extreme.Spread)
                              ~ ShotData$DOL.lvl*ShotData$PC.lvl
                                          +ShotData$Case.L
                                          +ShotData$Neck.Idia
                                          +ShotData$Neck.Odia
                                          +ShotData$Neck.Thick
                                          +ShotData$HS
                                          +ShotData$PPDpth
                                          +ShotData$PPDia
                                          +ShotData$Case.Wgt
                                          +ShotData$CMS
                                          +ShotData$Case.Vol
                                          +ShotData$Pr.Wgt
                                          +ShotData$Bullet.OL
                                          +ShotData$Bullet.Wgt
                                          +ShotData$Temp
                                          +ShotData$Velocity))
                                          
#                                   Df   Pillai approx F num Df den Df    Pr(>F)    
# ShotData$DOL.lvl                   1 0.088823   6.6288      3    204 0.0002706 ***
# ShotData$PC.lvl                    1 0.052427   3.7623      3    204 0.0116586 *  
# ShotData$Case.L                    1 0.017180   1.1886      3    204 0.3151328    
# ShotData$Neck.Idia                 1 0.046399   3.3086      3    204 0.0211454 *  
# ShotData$Neck.Odia                 1 0.005613   0.3839      3    204 0.7647491    
# ShotData$Neck.Thick                1 0.004517   0.3085      3    204 0.8192157  Drop   
# ShotData$HS                        1 0.006725   0.4604      3    204 0.7102628    
# ShotData$PPDpth                    1 0.033120   2.3293      3    204 0.0755655 .  
# ShotData$PPDia                     1 0.006409   0.4386      3    204 0.7255951    
# ShotData$Case.Wgt                  1 0.021469   1.4919      3    204 0.2178666    
# ShotData$CMS                       1 0.011728   0.8070      3    204 0.4913136    
# ShotData$Case.Vol                  1 0.016175   1.1180      3    204 0.3428376    
# ShotData$Pr.Wgt                    1 0.008293   0.5687      3    204 0.6362630    
# ShotData$Bullet.OL                 1 0.017507   1.2117      3    204 0.3065365    
# ShotData$Bullet.Wgt                1 0.025543   1.7824      3    204 0.1516656    
# ShotData$Temp                      1 0.149169  11.9218      3    204 3.168e-07 ***
# ShotData$Velocity                  1 0.046812   3.3395      3    204 0.0203065 *  
# ShotData$DOL.lvl:ShotData$PC.lvl   1 0.059163   4.2761      3    204 0.0059314 **                                           
                                          
                                          
                                          
paste("Drop Neck.Thick");
summary(manova(cbind(ShotData$Dist.from.Center,ShotData$Mean.Radius,ShotData$Extreme.Spread)
                              ~ ShotData$DOL.lvl*ShotData$PC.lvl
                                          +ShotData$Case.L
                                          +ShotData$Neck.Idia
                                          +ShotData$Neck.Odia
                                          +ShotData$HS
                                          +ShotData$PPDpth
                                          +ShotData$PPDia
                                          +ShotData$Case.Wgt
                                          +ShotData$CMS
                                          +ShotData$Case.Vol
                                          +ShotData$Pr.Wgt
                                          +ShotData$Bullet.OL
                                          +ShotData$Bullet.Wgt
                                          +ShotData$Temp
                                          +ShotData$Velocity))    
                                          
                                          
#                                   Df   Pillai approx F num Df den Df    Pr(>F)    
# ShotData$DOL.lvl                   1 0.088632   6.6455      3    205 0.0002642 ***
# ShotData$PC.lvl                    1 0.052115   3.7570      3    205 0.0117330 *  
# ShotData$Case.L                    1 0.017134   1.1912      3    205 0.3141454    
# ShotData$Neck.Idia                 1 0.046390   3.3242      3    205 0.0207084 *  
# ShotData$Neck.Odia                 1 0.005613   0.3857      3    205 0.7633981   Drop 
# ShotData$HS                        1 0.007964   0.5486      3    205 0.6496268    
# ShotData$PPDpth                    1 0.033304   2.3542      3    205 0.0731712 .  
# ShotData$PPDia                     1 0.006408   0.4407      3    205 0.7241535    
# ShotData$Case.Wgt                  1 0.021663   1.5131      3    205 0.2122388    
# ShotData$CMS                       1 0.011758   0.8130      3    205 0.4879852    
# ShotData$Case.Vol                  1 0.013010   0.9008      3    205 0.4417305    
# ShotData$Pr.Wgt                    1 0.008324   0.5736      3    205 0.6330021    
# ShotData$Bullet.OL                 1 0.017149   1.1923      3    205 0.3137340    
# ShotData$Bullet.Wgt                1 0.025624   1.7970      3    205 0.1488960    
# ShotData$Temp                      1 0.148556  11.9225      3    205 3.147e-07 ***
# ShotData$Velocity                  1 0.046352   3.3214      3    205 0.0207861 *  
# ShotData$DOL.lvl:ShotData$PC.lvl   1 0.059658   4.3352      3    205 0.0054826 **          



paste("Drop Neck.Thick, Neck.Odia");
summary(manova(cbind(ShotData$Dist.from.Center,ShotData$Mean.Radius,ShotData$Extreme.Spread)
                              ~ ShotData$DOL.lvl*ShotData$PC.lvl
                                          +ShotData$Case.L
                                          +ShotData$Neck.Idia
                                          +ShotData$HS
                                          +ShotData$PPDpth
                                          +ShotData$PPDia
                                          +ShotData$Case.Wgt
                                          +ShotData$CMS
                                          +ShotData$Case.Vol
                                          +ShotData$Pr.Wgt
                                          +ShotData$Bullet.OL
                                          +ShotData$Bullet.Wgt
                                          +ShotData$Temp
                                          +ShotData$Velocity))     
                                          
                                          
                                          
#                                   Df   Pillai approx F num Df den Df    Pr(>F)    
# ShotData$DOL.lvl                   1 0.088621   6.6771      3    206 0.0002531 ***
# ShotData$PC.lvl                    1 0.052036   3.7692      3    206 0.0115389 *  
# ShotData$Case.L                    1 0.017062   1.1919      3    206 0.3138795    
# ShotData$Neck.Idia                 1 0.046325   3.3355      3    206 0.0203952 *  
# ShotData$HS                        1 0.008524   0.5903      3    206 0.6219888    
# ShotData$PPDpth                    1 0.033896   2.4092      3    206 0.0681461 .  
# ShotData$PPDia                     1 0.006838   0.4728      3    206 0.7015815   Drop 
# ShotData$Case.Wgt                  1 0.022365   1.5708      3    206 0.1975608    
# ShotData$CMS                       1 0.011673   0.8110      3    206 0.4890604    
# ShotData$Case.Vol                  1 0.013005   0.9048      3    206 0.4396918    
# ShotData$Pr.Wgt                    1 0.007452   0.5155      3    206 0.6720233    
# ShotData$Bullet.OL                 1 0.017125   1.1964      3    206 0.3121928    
# ShotData$Bullet.Wgt                1 0.025576   1.8023      3    206 0.1478842    
# ShotData$Temp                      1 0.147349  11.8665      3    206 3.355e-07 ***
# ShotData$Velocity                  1 0.044972   3.2335      3    206 0.0233121 *  
# ShotData$DOL.lvl:ShotData$PC.lvl   1 0.059694   4.3592      3    206 0.0053079 **       



paste("Drop Neck.Thick, Neck.Odia, PPDia");
summary(manova(cbind(ShotData$Dist.from.Center,ShotData$Mean.Radius,ShotData$Extreme.Spread)
                              ~ ShotData$DOL.lvl*ShotData$PC.lvl
                                          +ShotData$Case.L
                                          +ShotData$Neck.Idia
                                          +ShotData$HS
                                          +ShotData$PPDpth
                                          +ShotData$Case.Wgt
                                          +ShotData$CMS
                                          +ShotData$Case.Vol
                                          +ShotData$Pr.Wgt
                                          +ShotData$Bullet.OL
                                          +ShotData$Bullet.Wgt
                                          +ShotData$Temp
                                          +ShotData$Velocity))  


#                                   Df   Pillai approx F num Df den Df    Pr(>F)    
# ShotData$DOL.lvl                   1 0.088375   6.6890      3    207 0.0002487 ***
# ShotData$PC.lvl                    1 0.051995   3.7844      3    207 0.0113043 *  
# ShotData$Case.L                    1 0.017055   1.1972      3    207 0.3118791    
# ShotData$Neck.Idia                 1 0.046317   3.3511      3    207 0.0199730 *  
# ShotData$HS                        1 0.008500   0.5916      3    207 0.6211857    
# ShotData$PPDpth                    1 0.033883   2.4200      3    207 0.0671895 .  
# ShotData$Case.Wgt                  1 0.022061   1.5565      3    207 0.2010876    
# ShotData$CMS                       1 0.012094   0.8447      3    207 0.4708452    
# ShotData$Case.Vol                  1 0.016000   1.1219      3    207 0.3411902    
# ShotData$Pr.Wgt                    1 0.007407   0.5149      3    207 0.6724537    
# ShotData$Bullet.OL                 1 0.017042   1.1963      3    207 0.3122171    
# ShotData$Bullet.Wgt                1 0.025147   1.7799      3    207 0.1520961    
# ShotData$Temp                      1 0.149898  12.1667      3    207 2.296e-07 ***
# ShotData$Velocity                  1 0.045099   3.2588      3    207 0.0225422 *  
# ShotData$DOL.lvl:ShotData$PC.lvl   1 0.057171   4.1840      3    207 0.0066807 ** 


paste("Drop Neck.Thick, Neck.Odia, PPDia, Pr.Wgt");
summary(manova(cbind(ShotData$Dist.from.Center,ShotData$Mean.Radius,ShotData$Extreme.Spread)
                              ~ ShotData$DOL.lvl*ShotData$PC.lvl
                                          +ShotData$Case.L
                                          +ShotData$Neck.Idia
                                          +ShotData$HS
                                          +ShotData$PPDpth
                                          +ShotData$Case.Wgt
                                          +ShotData$CMS
                                          +ShotData$Case.Vol
                                          +ShotData$Bullet.OL
                                          +ShotData$Bullet.Wgt
                                          +ShotData$Temp
                                          +ShotData$Velocity))  


#                                   Df   Pillai approx F num Df den Df    Pr(>F)    
# ShotData$DOL.lvl                   1 0.088370   6.7210      3    208 0.0002381 ***
# ShotData$PC.lvl                    1 0.051794   3.7872      3    208 0.0112569 *  
# ShotData$Case.L                    1 0.016902   1.1921      3    208 0.3137937    
# ShotData$Neck.Idia                 1 0.045898   3.3353      3    208 0.0203813 *  
# ShotData$HS                        1 0.008492   0.5938      3    208 0.6196964    
# ShotData$PPDpth                    1 0.033760   2.4225      3    208 0.0669558 .  
# ShotData$Case.Wgt                  1 0.021993   1.5591      3    208 0.2004168    
# ShotData$CMS                       1 0.012094   0.8487      3    208 0.4686673    
# ShotData$Case.Vol                  1 0.015985   1.1263      3    208 0.3394137    
# ShotData$Bullet.OL                 1 0.016819   1.1861      3    208 0.3160551    
# ShotData$Bullet.Wgt                1 0.023931   1.6999      3    208 0.1681536    
# ShotData$Temp                      1 0.140956  11.3766      3    208  6.12e-07 ***
# ShotData$Velocity                  1 0.039194   2.8283      3    208 0.0395491 *  
# ShotData$DOL.lvl:ShotData$PC.lvl   1 0.057939   4.2642      3    208 0.0060066 ** 



paste("Drop Neck.Thick, Neck.Odia, PPDia, Pr.Wgt, HS");
summary(manova(cbind(ShotData$Dist.from.Center,ShotData$Mean.Radius,ShotData$Extreme.Spread)
                              ~ ShotData$DOL.lvl*ShotData$PC.lvl
                                          +ShotData$Case.L
                                          +ShotData$Neck.Idia
                                          +ShotData$PPDpth
                                          +ShotData$Case.Wgt
                                          +ShotData$CMS
                                          +ShotData$Case.Vol
                                          +ShotData$Bullet.OL
                                          +ShotData$Bullet.Wgt
                                          +ShotData$Temp
                                          +ShotData$Velocity))  
                                          
#                                   Df   Pillai approx F num Df den Df    Pr(>F)    
# ShotData$DOL.lvl                   1 0.087756   6.7018      3    209 0.0002437 ***
# ShotData$PC.lvl                    1 0.051695   3.7977      3    209 0.0110951 *  
# ShotData$Case.L                    1 0.016885   1.1965      3    209 0.3120998    
# ShotData$Neck.Idia                 1 0.045895   3.3511      3    209 0.0199542 *  
# ShotData$PPDpth                    1 0.033608   2.4228      3    209 0.0669163 .  
# ShotData$Case.Wgt                  1 0.021843   1.5557      3    209 0.2012523    
# ShotData$CMS                       1 0.014443   1.0210      3    209 0.3842990    
# ShotData$Case.Vol                  1 0.016671   1.1811      3    209 0.3179106    
# ShotData$Bullet.OL                 1 0.017012   1.2057      3    209 0.3086847    
# ShotData$Bullet.Wgt                1 0.023927   1.7078      3    209 0.1664807    
# ShotData$Temp                      1 0.141415  11.4746      3    209 5.385e-07 ***
# ShotData$Velocity                  1 0.039133   2.8373      3    209 0.0390762 *  
# ShotData$DOL.lvl:ShotData$PC.lvl   1 0.054114   3.9856      3    209 0.0086632 **                                           



paste("Drop Neck.Thick, Neck.Odia, PPDia, Pr.Wgt, HS, CMS");
summary(manova(cbind(ShotData$Dist.from.Center,ShotData$Mean.Radius,ShotData$Extreme.Spread)
                              ~ ShotData$DOL.lvl*ShotData$PC.lvl
                                          +ShotData$Case.L
                                          +ShotData$Neck.Idia
                                          +ShotData$PPDpth
                                          +ShotData$Case.Wgt
                                          +ShotData$Case.Vol
                                          +ShotData$Bullet.OL
                                          +ShotData$Bullet.Wgt
                                          +ShotData$Temp
                                          +ShotData$Velocity))  

#                                   Df   Pillai approx F num Df den Df    Pr(>F)    
# ShotData$DOL.lvl                   1 0.086320   6.6132      3    210 0.0002731 ***
# ShotData$PC.lvl                    1 0.050886   3.7530      3    210 0.0117615 *  
# ShotData$Case.L                    1 0.016876   1.2016      3    210 0.3101982     
# ShotData$Neck.Idia                 1 0.045300   3.3215      3    210 0.0207365 *  
# ShotData$PPDpth                    1 0.033494   2.4258      3    210 0.0666395 .  
# ShotData$Case.Wgt                  1 0.021353   1.5274      3    210 0.2084402    
# ShotData$Case.Vol                  1 0.007419   0.5232      3    210 0.6667802  Drop  
# ShotData$Bullet.OL                 1 0.019369   1.3826      3    210 0.2491005    
# ShotData$Bullet.Wgt                1 0.022607   1.6191      3    210 0.1859801    
# ShotData$Temp                      1 0.140775  11.4688      3    210 5.396e-07 ***
# ShotData$Velocity                  1 0.038806   2.8261      3    210 0.0396378 *  
# ShotData$DOL.lvl:ShotData$PC.lvl   1 0.051858   3.8286      3    210 0.0106469 * 


paste("Drop Neck.Thick, Neck.Odia, PPDia, Pr.Wgt, HS, CMS", Case.Vol);
summary(manova(cbind(ShotData$Dist.from.Center,ShotData$Mean.Radius,ShotData$Extreme.Spread)
                              ~ ShotData$DOL.lvl*ShotData$PC.lvl
                                          +ShotData$Neck.Idia
                                          +ShotData$PPDpth
                                          +ShotData$Case.Wgt
                                          +ShotData$Bullet.OL
                                          +ShotData$Bullet.Wgt
                                          +ShotData$Temp
                                          +ShotData$Velocity))  
                                          


#                                   Df   Pillai approx F num Df den Df    Pr(>F)    
# ShotData$DOL.lvl                   1 0.085532   6.6096      3    212 0.0002734 ***
# ShotData$PC.lvl                    1 0.050693   3.7736      3    212 0.0114337 *  
# ShotData$Neck.Idia                 1 0.040833   3.0084      3    212 0.0312240 *  
# ShotData$PPDpth                    1 0.034340   2.5130      3    212 0.0595066 .  
# ShotData$Case.Wgt                  1 0.020449   1.4752      3    212 0.2222831    
# ShotData$Bullet.OL                 1 0.019643   1.4159      3    212 0.2390990  Drop  
# ShotData$Bullet.Wgt                1 0.022522   1.6282      3    212 0.1838500    
# ShotData$Temp                      1 0.131495  10.6992      3    212 1.409e-06 ***
# ShotData$Velocity                  1 0.036505   2.6774      3    212 0.0480733 *  
# ShotData$DOL.lvl:ShotData$PC.lvl   1 0.051535   3.8397      3    212 0.0104800 *  


paste("Drop Neck.Thick, Neck.Odia, PPDia, Pr.Wgt, HS, CMS", Case.Vol, Bullet.OL);
summary(manova(cbind(ShotData$Dist.from.Center,ShotData$Mean.Radius,ShotData$Extreme.Spread)
                              ~ ShotData$DOL.lvl*ShotData$PC.lvl
                                          +ShotData$Neck.Idia
                                          +ShotData$PPDpth
                                          +ShotData$Case.Wgt
                                          +ShotData$Bullet.Wgt
                                          +ShotData$Temp
                                          +ShotData$Velocity))  
                                          
                                          
#                                   Df   Pillai approx F num Df den Df    Pr(>F)    
# ShotData$DOL.lvl                   1 0.085532   6.6407      3    213  0.000262 ***
# ShotData$PC.lvl                    1 0.050098   3.7445      3    213  0.011873 *  
# ShotData$Neck.Idia                 1 0.039702   2.9354      3    213  0.034338 *  
# ShotData$PPDpth                    1 0.033388   2.4525      3    213  0.064340 .  
# ShotData$Case.Wgt                  1 0.020332   1.4735      3    213  0.222731    
# ShotData$Bullet.Wgt                1 0.002689   0.1915      3    213  0.902146  Drop  
# ShotData$Temp                      1 0.136262  11.2009      3    213 7.444e-07 ***
# ShotData$Velocity                  1 0.036191   2.6660      3    213  0.048778 *  
# ShotData$DOL.lvl:ShotData$PC.lvl   1 0.046272   3.4447      3    213  0.017615 *                                            

 paste("Drop Neck.Thick, Neck.Odia, PPDia, Pr.Wgt, HS, CMS", Case.Vol, Bullet.OL, Bullet.Wgt);
summary(manova(cbind(ShotData$Dist.from.Center,ShotData$Mean.Radius,ShotData$Extreme.Spread)
                              ~ ShotData$DOL.lvl*ShotData$PC.lvl
                                          +ShotData$Neck.Idia
                                          +ShotData$PPDpth
                                          +ShotData$Case.Wgt
                                          +ShotData$Temp
                                          +ShotData$Velocity))
                                          
                                          
#                                   Df   Pillai approx F num Df den Df    Pr(>F)    
# ShotData$DOL.lvl                   1 0.085479   6.6674      3    214 0.0002526 ***
# ShotData$PC.lvl                    1 0.050079   3.7606      3    214 0.0116180 *  
# ShotData$Neck.Idia                 1 0.039531   2.9359      3    214 0.0343036 *  
# ShotData$PPDpth                    1 0.033270   2.4549      3    214 0.0641198 .  
# ShotData$Case.Wgt                  1 0.020273   1.4761      3    214 0.2220159  Drop  
# ShotData$Temp                      1 0.133235  10.9650      3    214 9.976e-07 ***
# ShotData$Velocity                  1 0.037169   2.7538      3    214 0.0435047 *  
# ShotData$DOL.lvl:ShotData$PC.lvl   1 0.046248   3.4590      3    214 0.0172799 *                                                                                                                                  

paste("Drop Neck.Thick, Neck.Odia, PPDia, Pr.Wgt, HS, CMS, Case.Vol, Bullet.OL, Bullet.Wgt");
paste("        Drop also Case.Wgt")
summary(manova(cbind(ShotData$Dist.from.Center,ShotData$Mean.Radius,ShotData$Extreme.Spread)
                              ~ ShotData$DOL.lvl*ShotData$PC.lvl
                                          +ShotData$Neck.Idia
                                          +ShotData$PPDpth
                                          +ShotData$Temp
                                          +ShotData$Velocity))


#                                   Df   Pillai approx F num Df den Df    Pr(>F)    
# ShotData$DOL.lvl                   1 0.084050   6.5764      3    215 0.0002841 ***
# ShotData$PC.lvl                    1 0.049575   3.7382      3    215 0.0119593 *  
# ShotData$Neck.Idia                 1 0.039242   2.9272      3    215 0.0346864 *  
# ShotData$PPDpth                    1 0.033234   2.4636      3    215 0.0633888 .  
# ShotData$Temp                      1 0.133704  11.0610      3    215 8.797e-07 ***
# ShotData$Velocity                  1 0.038510   2.8704      3    215 0.0373544 *  
# ShotData$DOL.lvl:ShotData$PC.lvl   1 0.043246   3.2394      3    215 0.0230458 *  







#Simple model "all-in"
m1 <- lm(formula = SalePrice ~ ., data = filled_missing_values_train )

#Summary of the "all-in" model
summary (m1)

# Call:
#   lm(formula = SalePrice ~ ., data = filled_missing_values_train)
# 
# Residuals:
#   Min      1Q  Median      3Q     Max 
# -177366   -9064       0    9575  177366 
# 
# Coefficients: (8 not defined because of singularities)
# Estimate Std. Error t value Pr(>|t|)    
# (Intercept)             -5.798e+05  1.057e+06  -0.548 0.583510    
# MSSubClass              -5.512e+01  8.255e+01  -0.668 0.504473    
# MSZoningFV               3.248e+04  1.199e+04   2.709 0.006838 ** 
# MSZoningRH               2.256e+04  1.187e+04   1.900 0.057684 .  
# MSZoningRL               2.518e+04  1.021e+04   2.466 0.013791 *  
# MSZoningRM               2.186e+04  9.574e+03   2.283 0.022574 *  
# LotFrontage              4.243e+01  4.388e+01   0.967 0.333737    
# LotArea                  7.050e-01  1.093e-01   6.452 1.60e-10 ***
# StreetPave               3.318e+04  1.217e+04   2.726 0.006509 ** 
# Alleyno_alley           -1.414e+03  4.208e+03  -0.336 0.736852    
# AlleyPave               -5.180e+02  6.018e+03  -0.086 0.931427    
# LotShapeIR2              4.996e+03  4.207e+03   1.188 0.235255    
# LotShapeIR3              5.459e+03  8.843e+03   0.617 0.537131    
# LotShapeReg              1.780e+03  1.600e+03   1.112 0.266191    
# LandContourHLS           7.544e+03  5.114e+03   1.475 0.140385    
# LandContourLow          -1.126e+04  6.380e+03  -1.765 0.077868 .  
# LandContourLvl           5.426e+03  3.697e+03   1.468 0.142498    
# UtilitiesNoSeWa         -3.719e+04  2.633e+04  -1.412 0.158096    
# LotConfigCulDSac         8.535e+03  3.298e+03   2.588 0.009769 ** 
# LotConfigFR2            -7.338e+03  4.010e+03  -1.830 0.067526 .  
# LotConfigFR3            -1.688e+04  1.254e+04  -1.347 0.178351    
# LotConfigInside         -1.232e+03  1.784e+03  -0.691 0.489756    
# LandSlopeMod             7.402e+03  3.970e+03   1.865 0.062459 .  
# LandSlopeSev            -4.112e+04  1.140e+04  -3.607 0.000323 ***
# NeighborhoodBlueste      7.904e+03  1.921e+04   0.412 0.680768    
# NeighborhoodBrDale      -2.286e+03  1.095e+04  -0.209 0.834565    
# NeighborhoodBrkSide     -5.625e+03  9.463e+03  -0.594 0.552369    
# NeighborhoodClearCr     -1.452e+04  9.193e+03  -1.579 0.114503    
# NeighborhoodCollgCr     -1.021e+04  7.241e+03  -1.410 0.158700    
# NeighborhoodCrawfor      1.182e+04  8.530e+03   1.386 0.165936    
# NeighborhoodEdwards     -2.146e+04  7.979e+03  -2.689 0.007255 ** 
# NeighborhoodGilbert     -1.139e+04  7.660e+03  -1.487 0.137357    
# NeighborhoodIDOTRR      -1.202e+04  1.072e+04  -1.121 0.262609    
# NeighborhoodMeadowV     -6.786e+03  1.118e+04  -0.607 0.543837    
# NeighborhoodMitchel     -2.102e+04  8.155e+03  -2.578 0.010054 *  
# NeighborhoodNAmes       -1.736e+04  7.820e+03  -2.220 0.026634 *  
# NeighborhoodNoRidge      2.538e+04  8.398e+03   3.022 0.002568 ** 
# NeighborhoodNPkVill      1.311e+04  1.402e+04   0.936 0.349646    
# NeighborhoodNridgHt      1.778e+04  7.496e+03   2.371 0.017875 *  
# NeighborhoodNWAmes      -1.737e+04  7.988e+03  -2.175 0.029840 *  
# NeighborhoodOldTown     -1.427e+04  9.639e+03  -1.481 0.138906    
# NeighborhoodSawyer      -1.118e+04  8.103e+03  -1.380 0.167925    
# NeighborhoodSawyerW     -2.937e+03  7.765e+03  -0.378 0.705349    
# NeighborhoodSomerst     -2.483e+03  8.989e+03  -0.276 0.782417    
# NeighborhoodStoneBr      3.918e+04  8.272e+03   4.736 2.43e-06 ***
# NeighborhoodSWISU       -8.355e+03  9.685e+03  -0.863 0.388481    
# NeighborhoodTimber      -9.974e+03  8.122e+03  -1.228 0.219715    
# NeighborhoodVeenker     -3.356e+02  1.047e+04  -0.032 0.974439    
# Condition1Feedr          7.180e+03  5.008e+03   1.434 0.151944    
# Condition1Norm           1.635e+04  4.180e+03   3.910 9.72e-05 ***
# Condition1PosA           9.177e+03  9.989e+03   0.919 0.358470    
# Condition1PosN           1.506e+04  7.423e+03   2.029 0.042648 *  
# Condition1RRAe          -1.533e+04  9.052e+03  -1.693 0.090626 .  
# Condition1RRAn           1.319e+04  6.940e+03   1.901 0.057524 .  
# Condition1RRNe          -3.560e+03  1.744e+04  -0.204 0.838327    
# Condition1RRNn           1.139e+04  1.282e+04   0.888 0.374502    
# Condition2Feedr         -5.870e+03  2.337e+04  -0.251 0.801707    
# Condition2Norm          -1.004e+04  2.025e+04  -0.496 0.620099    
# Condition2PosA           4.243e+04  3.695e+04   1.148 0.251097    
# Condition2PosN          -2.391e+05  2.759e+04  -8.666  < 2e-16 ***
# Condition2RRAe          -1.269e+05  6.497e+04  -1.953 0.051035 .  
# Condition2RRAn          -2.296e+04  3.144e+04  -0.730 0.465427    
# Condition2RRNn          -2.639e+03  2.703e+04  -0.098 0.922226    
# BldgType2fmCon          -3.109e+03  1.247e+04  -0.249 0.803121    
# BldgTypeDuplex          -7.021e+03  7.402e+03  -0.948 0.343080    
# BldgTypeTwnhs           -1.835e+04  9.996e+03  -1.836 0.066632 .  
# BldgTypeTwnhsE          -1.451e+04  9.008e+03  -1.610 0.107611    
# HouseStyle1.5Unf         1.179e+04  7.928e+03   1.487 0.137314    
# HouseStyle1Story         5.052e+03  4.380e+03   1.153 0.248970    
# HouseStyle2.5Fin        -1.741e+04  1.236e+04  -1.408 0.159376    
# HouseStyle2.5Unf        -9.398e+03  9.224e+03  -1.019 0.308505    
# HouseStyle2Story        -5.985e+03  3.494e+03  -1.713 0.086992 .  
# HouseStyleSFoyer         1.097e+03  6.251e+03   0.176 0.860677    
# HouseStyleSLvl           3.509e+03  5.576e+03   0.629 0.529281    
# OverallQual              6.800e+03  1.012e+03   6.717 2.85e-11 ***
# OverallCond              5.798e+03  8.706e+02   6.660 4.15e-11 ***
# YearBuilt                3.197e+02  7.692e+01   4.157 3.45e-05 ***
# YearRemodAdd             1.049e+02  5.570e+01   1.882 0.060022 .  
# RoofStyleGable           9.561e+03  1.842e+04   0.519 0.603741    
# RoofStyleGambrel         1.286e+04  2.016e+04   0.638 0.523730    
# RoofStyleHip             9.361e+03  1.849e+04   0.506 0.612715    
# RoofStyleMansard         1.984e+04  2.137e+04   0.928 0.353506    
# RoofStyleShed            9.921e+04  3.447e+04   2.878 0.004073 ** 
# RoofMatlCompShg          5.748e+05  5.267e+04  10.913  < 2e-16 ***
# RoofMatlMembran          6.696e+05  6.251e+04  10.712  < 2e-16 ***
# RoofMatlMetal            6.378e+05  6.212e+04  10.268  < 2e-16 ***
# RoofMatlRoll             5.621e+05  5.828e+04   9.645  < 2e-16 ***
# RoofMatlTar&Grv          5.756e+05  5.646e+04  10.195  < 2e-16 ***
# RoofMatlWdShake          5.669e+05  5.502e+04  10.304  < 2e-16 ***
# RoofMatlWdShngl          6.296e+05  5.362e+04  11.741  < 2e-16 ***
# Exterior1stAsphShn      -2.403e+04  3.294e+04  -0.729 0.465876    
# Exterior1stBrkComm      -3.467e+03  2.774e+04  -0.125 0.900551    
# Exterior1stBrkFace       7.847e+03  1.275e+04   0.615 0.538526    
# Exterior1stCBlock       -1.475e+04  2.723e+04  -0.542 0.588158    
# Exterior1stCemntBd      -1.155e+04  1.902e+04  -0.607 0.543707    
# Exterior1stHdBoard      -1.295e+04  1.293e+04  -1.001 0.316897    
# Exterior1stImStucc      -2.210e+04  2.812e+04  -0.786 0.431955    
# Exterior1stMetalSd      -5.756e+03  1.458e+04  -0.395 0.693130    
# Exterior1stPlywood      -1.368e+04  1.276e+04  -1.072 0.283970    
# Exterior1stStone        -1.054e+03  2.426e+04  -0.043 0.965343    
# Exterior1stStucco       -7.067e+03  1.407e+04  -0.502 0.615568    
# Exterior1stVinylSd      -1.374e+04  1.333e+04  -1.031 0.302936    
# Exterior1stWd Sdng      -1.381e+04  1.237e+04  -1.116 0.264465    
# Exterior1stWdShing      -9.395e+03  1.336e+04  -0.703 0.481931    
# Exterior2ndAsphShn       1.130e+04  2.218e+04   0.509 0.610512    
# Exterior2ndBrk Cmn       5.517e+03  2.005e+04   0.275 0.783200    
# Exterior2ndBrkFace       3.887e+03  1.321e+04   0.294 0.768559    
# Exterior2ndCBlock               NA         NA      NA       NA    
# Exterior2ndCmentBd       1.199e+04  1.870e+04   0.641 0.521370    
# Exterior2ndHdBoard       8.076e+03  1.241e+04   0.651 0.515433    
# Exterior2ndImStucc       1.676e+04  1.434e+04   1.169 0.242559    
# Exterior2ndMetalSd       5.555e+03  1.419e+04   0.391 0.695546    
# Exterior2ndOther        -1.826e+04  2.705e+04  -0.675 0.499789    
# Exterior2ndPlywood       6.301e+03  1.205e+04   0.523 0.601244    
# Exterior2ndStone        -1.128e+04  1.712e+04  -0.659 0.510158    
# Exterior2ndStucco        5.328e+03  1.361e+04   0.392 0.695418    
# Exterior2ndVinylSd       1.262e+04  1.281e+04   0.986 0.324541    
# Exterior2ndWd Sdng       1.173e+04  1.194e+04   0.982 0.326295    
# Exterior2ndWd Shng       5.311e+03  1.245e+04   0.426 0.669840    
# MasVnrTypeBrkFace        4.209e+03  6.826e+03   0.617 0.537624    
# MasVnrTypeNone           7.240e+03  6.897e+03   1.050 0.294051    
# MasVnrTypeStone          9.405e+03  7.226e+03   1.302 0.193290    
# MasVnrArea               2.078e+01  5.780e+00   3.595 0.000338 ***
# ExterQualFa             -7.401e+03  1.107e+04  -0.668 0.503972    
# ExterQualGd             -2.075e+04  4.773e+03  -4.347 1.50e-05 ***
# ExterQualTA             -2.002e+04  5.288e+03  -3.785 0.000161 ***
# ExterCondFa             -2.859e+03  1.804e+04  -0.158 0.874125    
# ExterCondGd             -7.282e+03  1.721e+04  -0.423 0.672290    
# ExterCondPo              8.081e+03  3.162e+04   0.256 0.798312    
# ExterCondTA             -4.296e+03  1.718e+04  -0.250 0.802542    
# FoundationCBlock         2.812e+03  3.168e+03   0.888 0.374784    
# FoundationPConc          3.991e+03  3.414e+03   1.169 0.242560    
# FoundationSlab          -7.095e+03  1.003e+04  -0.708 0.479274    
# FoundationStone          9.899e+03  1.138e+04   0.870 0.384706    
# FoundationWood          -2.738e+04  1.476e+04  -1.856 0.063749 .  
# BsmtQualFa              -1.122e+04  6.342e+03  -1.770 0.076975 .  
# BsmtQualGd              -1.789e+04  3.330e+03  -5.374 9.22e-08 ***
# BsmtQualno_basement      3.763e+04  3.657e+04   1.029 0.303700    
# BsmtQualTA              -1.406e+04  4.144e+03  -3.394 0.000712 ***
# BsmtCondGd              -6.905e+01  5.269e+03  -0.013 0.989546    
# BsmtCondno_basement             NA         NA      NA       NA    
# BsmtCondPo               6.663e+04  2.978e+04   2.237 0.025456 *  
# BsmtCondTA               2.629e+03  4.240e+03   0.620 0.535382    
# BsmtExposureGd           1.423e+04  2.993e+03   4.756 2.21e-06 ***
# BsmtExposureMn          -3.563e+03  3.014e+03  -1.182 0.237436    
# BsmtExposureNo          -5.213e+03  2.176e+03  -2.395 0.016753 *  
# BsmtExposureno_basement -1.077e+04  2.296e+04  -0.469 0.639009    
# BsmtFinType1BLQ          2.905e+03  2.795e+03   1.039 0.298932    
# BsmtFinType1GLQ          5.625e+03  2.517e+03   2.235 0.025607 *  
# BsmtFinType1LwQ         -3.214e+03  3.739e+03  -0.860 0.390185    
# BsmtFinType1no_basement         NA         NA      NA       NA    
# BsmtFinType1Rec          1.364e+02  2.996e+03   0.046 0.963684    
# BsmtFinType1Unf          2.773e+03  2.909e+03   0.953 0.340592    
# BsmtFinSF1               3.854e+01  5.319e+00   7.245 7.67e-13 ***
# BsmtFinType2BLQ         -1.296e+04  7.554e+03  -1.715 0.086604 .  
# BsmtFinType2GLQ         -2.528e+03  9.336e+03  -0.271 0.786573    
# BsmtFinType2LwQ         -1.393e+04  7.381e+03  -1.888 0.059321 .  
# BsmtFinType2no_basement -2.862e+04  2.494e+04  -1.148 0.251313    
# BsmtFinType2Rec         -9.923e+03  7.096e+03  -1.398 0.162232    
# BsmtFinType2Unf         -8.054e+03  7.560e+03  -1.065 0.286902    
# BsmtFinSF2               3.162e+01  9.045e+00   3.496 0.000490 ***
# BsmtUnfSF                2.099e+01  4.877e+00   4.303 1.82e-05 ***
# TotalBsmtSF                     NA         NA      NA       NA    
# HeatingGasA              9.195e+03  2.551e+04   0.360 0.718558    
# HeatingGasW              6.868e+03  2.630e+04   0.261 0.794063    
# HeatingGrav              1.134e+03  2.799e+04   0.041 0.967680    
# HeatingOthW             -1.118e+04  3.144e+04  -0.355 0.722284    
# HeatingWall              2.246e+04  2.967e+04   0.757 0.449203    
# HeatingQCFa              7.312e+02  4.708e+03   0.155 0.876604    
# HeatingQCGd             -4.002e+03  2.067e+03  -1.936 0.053092 .  
# HeatingQCPo              2.142e+03  2.652e+04   0.081 0.935634    
# HeatingQCTA             -3.238e+03  2.067e+03  -1.566 0.117525    
# CentralAirY             -1.511e+02  3.861e+03  -0.039 0.968784    
# ElectricalFuseF          4.378e+01  5.742e+03   0.008 0.993918    
# ElectricalFuseP         -8.192e+03  1.858e+04  -0.441 0.659283    
# ElectricalMix           -4.144e+04  4.440e+04  -0.933 0.350846    
# Electricalno_electrical  1.041e+04  2.404e+04   0.433 0.665069    
# ElectricalSBrkr         -2.115e+03  2.944e+03  -0.718 0.472741    
# X1stFlrSF                4.424e+01  5.635e+00   7.852 9.00e-15 ***
# X2ndFlrSF                6.213e+01  5.690e+00  10.918  < 2e-16 ***
# LowQualFinSF            -3.916e+00  1.902e+01  -0.206 0.836883    
# GrLivArea                       NA         NA      NA       NA    
# BsmtFullBath             1.598e+03  1.977e+03   0.808 0.419190    
# BsmtHalfBath            -4.059e+02  3.023e+03  -0.134 0.893200    
# FullBath                 3.683e+03  2.197e+03   1.677 0.093887 .  
# HalfBath                 1.844e+03  2.093e+03   0.881 0.378515    
# BedroomAbvGr            -3.677e+03  1.363e+03  -2.698 0.007068 ** 
# KitchenAbvGr            -1.375e+04  5.677e+03  -2.421 0.015622 *  
# KitchenQualFa           -1.995e+04  6.192e+03  -3.222 0.001306 ** 
# KitchenQualGd           -2.358e+04  3.474e+03  -6.787 1.79e-11 ***
# KitchenQualTA           -2.255e+04  3.918e+03  -5.755 1.10e-08 ***
# TotRmsAbvGrd             1.801e+03  9.540e+02   1.887 0.059346 .  
# FunctionalMaj2          -1.458e+03  1.435e+04  -0.102 0.919088    
# FunctionalMin1           7.246e+03  8.587e+03   0.844 0.398934    
# FunctionalMin2           8.516e+03  8.614e+03   0.989 0.323060    
# FunctionalMod           -5.189e+03  1.054e+04  -0.492 0.622494    
# FunctionalSev           -3.947e+04  2.952e+04  -1.337 0.181401    
# FunctionalTyp            1.819e+04  7.445e+03   2.444 0.014677 *  
# Fireplaces               6.201e+03  2.551e+03   2.431 0.015198 *  
# FireplaceQuFa           -8.711e+02  6.871e+03  -0.127 0.899131    
# FireplaceQuGd            2.738e+03  5.312e+03   0.516 0.606268    
# FireplaceQuno_fireplace  8.711e+03  6.217e+03   1.401 0.161389    
# FireplaceQuPo            1.225e+04  7.900e+03   1.550 0.121299    
# FireplaceQuTA            3.672e+03  5.523e+03   0.665 0.506276    
# GarageTypeAttchd         1.955e+04  1.100e+04   1.776 0.075929 .  
# GarageTypeBasment        2.411e+04  1.275e+04   1.891 0.058919 .  
# GarageTypeBuiltIn        1.934e+04  1.148e+04   1.685 0.092234 .  
# GarageTypeCarPort        2.434e+04  1.468e+04   1.659 0.097445 .  
# GarageTypeDetchd         2.259e+04  1.101e+04   2.052 0.040375 *  
# GarageTypeno_garage      2.346e+04  2.077e+04   1.129 0.259067    
# GarageYrBlt             -1.888e+01  6.119e+01  -0.308 0.757767    
# GarageFinishno_garage           NA         NA      NA       NA    
# GarageFinishRFn         -2.371e+03  1.958e+03  -1.211 0.226314    
# GarageFinishUnf         -5.614e+02  2.425e+03  -0.231 0.816991    
# GarageCars               3.905e+03  2.275e+03   1.717 0.086301 .  
# GarageArea               1.842e+01  7.887e+00   2.336 0.019675 *  
# GarageQualFa            -1.248e+05  3.011e+04  -4.146 3.62e-05 ***
# GarageQualGd            -1.198e+05  3.091e+04  -3.876 0.000112 ***
# GarageQualno_garage             NA         NA      NA       NA    
# GarageQualPo            -1.423e+05  3.839e+04  -3.708 0.000218 ***
# GarageQualTA            -1.188e+05  2.981e+04  -3.984 7.19e-05 ***
# GarageCondFa             1.120e+05  3.473e+04   3.224 0.001299 ** 
# GarageCondGd             1.109e+05  3.608e+04   3.074 0.002163 ** 
# GarageCondno_garage             NA         NA      NA       NA    
# GarageCondPo             1.178e+05  3.728e+04   3.160 0.001615 ** 
# GarageCondTA             1.136e+05  3.443e+04   3.299 0.000999 ***
# PavedDriveP             -3.556e+03  5.545e+03  -0.641 0.521374    
# PavedDriveY             -2.297e+02  3.456e+03  -0.066 0.947031    
# WoodDeckSF               1.521e+01  5.866e+00   2.592 0.009649 ** 
# OpenPorchSF              7.970e-01  1.156e+01   0.069 0.945021    
# EnclosedPorch            2.803e+00  1.246e+01   0.225 0.822065    
# X3SsnPorch               3.327e+01  2.234e+01   1.489 0.136722    
# ScreenPorch              3.592e+01  1.248e+01   2.878 0.004069 ** 
# PoolArea                 6.873e+02  2.264e+02   3.035 0.002453 ** 
# PoolQCFa                -1.573e+05  4.083e+04  -3.852 0.000123 ***
# PoolQCGd                -1.272e+05  3.681e+04  -3.454 0.000571 ***
# PoolQCno_pool            2.571e+05  1.225e+05   2.099 0.036045 *  
# FenceGdWo                7.933e+03  4.900e+03   1.619 0.105706    
# FenceMnPrv               9.394e+03  3.999e+03   2.349 0.018978 *  
# FenceMnWw                3.084e+03  8.203e+03   0.376 0.707014    
# Fenceno_fence            8.857e+03  3.666e+03   2.416 0.015849 *  
# MiscFeatureno_misc       1.440e+03  9.709e+04   0.015 0.988172    
# MiscFeatureOthr          1.578e+04  9.064e+04   0.174 0.861796    
# MiscFeatureShed          3.840e+03  9.302e+04   0.041 0.967079    
# MiscFeatureTenC          3.382e+04  9.645e+04   0.351 0.725900    
# MiscVal                  5.987e-02  6.108e+00   0.010 0.992180    
# MoSold                  -4.628e+02  2.447e+02  -1.892 0.058785 .  
# YrSold                  -5.684e+02  5.144e+02  -1.105 0.269408    
# SaleTypeCon              2.568e+04  1.752e+04   1.466 0.142916    
# SaleTypeConLD            1.623e+04  9.672e+03   1.678 0.093536 .  
# SaleTypeConLI            4.131e+03  1.152e+04   0.359 0.719967    
# SaleTypeConLw            1.162e+03  1.213e+04   0.096 0.923722    
# SaleTypeCWD              1.526e+04  1.284e+04   1.189 0.234731    
# SaleTypeNew              2.112e+04  1.539e+04   1.372 0.170271    
# SaleTypeOth              7.529e+03  1.446e+04   0.521 0.602590    
# SaleTypeWD              -3.481e+02  4.171e+03  -0.083 0.933488    
# SaleConditionAdjLand     9.610e+03  1.458e+04   0.659 0.509980    
# SaleConditionAlloca      8.612e+02  8.846e+03   0.097 0.922461    
# SaleConditionFamily      7.014e+02  6.081e+03   0.115 0.908184    
# SaleConditionNormal      6.678e+03  2.901e+03   2.302 0.021496 *  
# SaleConditionPartial    -1.431e+02  1.482e+04  -0.010 0.992294    
# ---
#   Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# 
# Residual standard error: 22570 on 1207 degrees of freedom
# Multiple R-squared:  0.9332,	Adjusted R-squared:  0.9193 
# F-statistic: 66.97 on 252 and 1207 DF,  p-value: < 2.2e-16




# backward elimination
step(m1, direction = "backward")
# fit of the model selected by backward

m2 <- lm(formula = SalePrice ~ MSSubClass + MSZoning + LotArea + Street + 
           +              LandContour + Utilities + LotConfig + LandSlope + Neighborhood + 
           +              Condition1 + Condition2 + BldgType + OverallQual + OverallCond + 
           +              YearBuilt + YearRemodAdd + RoofStyle + RoofMatl + Exterior1st + 
           +              MasVnrType + MasVnrArea + ExterQual + BsmtQual + BsmtCond + 
           +              BsmtExposure + BsmtFinSF1 + BsmtFinSF2 + BsmtUnfSF + X1stFlrSF + 
           +              X2ndFlrSF + BsmtFullBath + FullBath + BedroomAbvGr + KitchenAbvGr + 
           +              KitchenQual + TotRmsAbvGrd + Functional + Fireplaces + GarageCars + 
           +              GarageArea + GarageQual + GarageCond + WoodDeckSF + ScreenPorch + 
           +              PoolArea + PoolQC + Fence + MoSold + SaleCondition, data = filled_missing_values_train)


#summary of backward model
summary(m2)
# Call:
#   lm(formula = SalePrice ~ MSSubClass + MSZoning + LotArea + Street + 
#        LandContour + Utilities + LotConfig + LandSlope + Neighborhood + 
#        Condition1 + Condition2 + BldgType + OverallQual + OverallCond + 
#        YearBuilt + YearRemodAdd + RoofStyle + RoofMatl + Exterior1st + 
#        MasVnrType + MasVnrArea + ExterQual + BsmtQual + BsmtCond + 
#        BsmtExposure + BsmtFinSF1 + BsmtFinSF2 + BsmtUnfSF + X1stFlrSF + 
#        X2ndFlrSF + BsmtFullBath + FullBath + BedroomAbvGr + KitchenAbvGr + 
#        KitchenQual + TotRmsAbvGrd + Functional + Fireplaces + GarageCars + 
#        GarageArea + GarageQual + GarageCond + WoodDeckSF + ScreenPorch + 
#        PoolArea + PoolQC + Fence + MoSold + SaleCondition, data = filled_missing_values_train)
# 
# Residuals:
#   Min      1Q  Median      3Q     Max 
# -178640   -9148       0    9867  178640 
# 
# Coefficients: (2 not defined because of singularities)
# Estimate Std. Error t value Pr(>|t|)    
# (Intercept)             -1.748e+06  1.679e+05 -10.414  < 2e-16 ***
# MSSubClass              -9.636e+01  4.576e+01  -2.106 0.035411 *  
# MSZoningFV               3.238e+04  1.121e+04   2.889 0.003924 ** 
# MSZoningRH               1.948e+04  1.117e+04   1.744 0.081424 .  
# MSZoningRL               2.377e+04  9.513e+03   2.499 0.012577 *  
# MSZoningRM               1.959e+04  8.869e+03   2.208 0.027386 *  
# LotArea                  6.962e-01  9.487e-02   7.338 3.80e-13 ***
# StreetPave               3.361e+04  1.122e+04   2.995 0.002795 ** 
# LandContourHLS           9.211e+03  4.836e+03   1.905 0.057036 .  
# LandContourLow          -8.791e+03  5.928e+03  -1.483 0.138344    
# LandContourLvl           6.372e+03  3.449e+03   1.847 0.064945 .  
# UtilitiesNoSeWa         -3.255e+04  2.384e+04  -1.365 0.172392    
# LotConfigCulDSac         7.192e+03  2.986e+03   2.408 0.016165 *  
# LotConfigFR2            -6.352e+03  3.805e+03  -1.669 0.095280 .  
# LotConfigFR3            -1.326e+04  1.224e+04  -1.083 0.279024    
# LotConfigInside         -1.294e+03  1.657e+03  -0.781 0.434873    
# LandSlopeMod             5.623e+03  3.704e+03   1.518 0.129277    
# LandSlopeSev            -3.928e+04  1.034e+04  -3.797 0.000153 ***
# NeighborhoodBlueste      2.440e+03  1.826e+04   0.134 0.893734    
# NeighborhoodBrDale      -1.694e+03  1.030e+04  -0.164 0.869459    
# NeighborhoodBrkSide     -2.071e+03  8.794e+03  -0.235 0.813905    
# NeighborhoodClearCr     -1.158e+04  8.736e+03  -1.325 0.185417    
# NeighborhoodCollgCr     -8.600e+03  6.876e+03  -1.251 0.211205    
# NeighborhoodCrawfor      1.189e+04  8.091e+03   1.469 0.142070    
# NeighborhoodEdwards     -1.811e+04  7.587e+03  -2.387 0.017115 *  
# NeighborhoodGilbert     -1.182e+04  7.264e+03  -1.627 0.103985    
# NeighborhoodIDOTRR      -6.420e+03  1.001e+04  -0.641 0.521357    
# NeighborhoodMeadowV     -8.398e+03  1.051e+04  -0.799 0.424203    
# NeighborhoodMitchel     -2.165e+04  7.745e+03  -2.795 0.005258 ** 
# NeighborhoodNAmes       -1.614e+04  7.408e+03  -2.178 0.029555 *  
# NeighborhoodNoRidge      2.874e+04  7.994e+03   3.595 0.000337 ***
# NeighborhoodNPkVill      6.081e+03  1.043e+04   0.583 0.559994    
# NeighborhoodNridgHt      1.642e+04  7.062e+03   2.325 0.020233 *  
# NeighborhoodNWAmes      -1.892e+04  7.587e+03  -2.494 0.012762 *  
# NeighborhoodOldTown     -1.149e+04  9.040e+03  -1.271 0.203923    
# NeighborhoodSawyer      -1.080e+04  7.753e+03  -1.393 0.163995    
# NeighborhoodSawyerW     -2.851e+03  7.429e+03  -0.384 0.701207    
# NeighborhoodSomerst     -2.016e+03  8.567e+03  -0.235 0.814039    
# NeighborhoodStoneBr      3.561e+04  7.880e+03   4.520 6.75e-06 ***
# NeighborhoodSWISU       -5.781e+03  9.040e+03  -0.640 0.522592    
# NeighborhoodTimber      -1.241e+04  7.743e+03  -1.603 0.109216    
# NeighborhoodVeenker     -9.747e+01  9.859e+03  -0.010 0.992113    
# Condition1Feedr          7.073e+03  4.681e+03   1.511 0.131023    
# Condition1Norm           1.508e+04  3.884e+03   3.883 0.000108 ***
# Condition1PosA           7.414e+03  9.465e+03   0.783 0.433594    
# Condition1PosN           1.230e+04  6.964e+03   1.766 0.077692 .  
# Condition1RRAe          -1.210e+04  8.246e+03  -1.468 0.142452    
# Condition1RRAn           1.370e+04  6.476e+03   2.115 0.034626 *  
# Condition1RRNe          -5.063e+01  1.691e+04  -0.003 0.997611    
# Condition1RRNn           1.004e+04  1.198e+04   0.838 0.402226    
# Condition2Feedr         -1.082e+04  2.130e+04  -0.508 0.611621    
# Condition2Norm          -1.207e+04  1.832e+04  -0.659 0.510192    
# Condition2PosA           3.890e+04  2.999e+04   1.297 0.194894    
# Condition2PosN          -2.384e+05  2.584e+04  -9.225  < 2e-16 ***
# Condition2RRAe          -1.151e+05  4.156e+04  -2.770 0.005688 ** 
# Condition2RRAn          -1.572e+04  2.951e+04  -0.533 0.594249    
# Condition2RRNn          -1.077e+04  2.502e+04  -0.431 0.666849    
# BldgType2fmCon           3.730e+03  8.287e+03   0.450 0.652741    
# BldgTypeDuplex          -3.395e+03  6.223e+03  -0.546 0.585444    
# BldgTypeTwnhs           -1.528e+04  6.948e+03  -2.199 0.028019 *  
# BldgTypeTwnhsE          -1.091e+04  5.584e+03  -1.953 0.051002 .  
# OverallQual              6.683e+03  9.375e+02   7.129 1.67e-12 ***
# OverallCond              5.571e+03  7.670e+02   7.264 6.45e-13 ***
# YearBuilt                3.720e+02  6.099e+01   6.099 1.40e-09 ***
# YearRemodAdd             1.098e+02  5.058e+01   2.171 0.030088 *  
# RoofStyleGable           6.925e+03  1.740e+04   0.398 0.690721    
# RoofStyleGambrel         1.098e+04  1.889e+04   0.581 0.561127    
# RoofStyleHip             7.291e+03  1.746e+04   0.418 0.676322    
# RoofStyleMansard         2.177e+04  1.992e+04   1.093 0.274588    
# RoofStyleShed            9.154e+04  3.287e+04   2.785 0.005435 ** 
# RoofMatlCompShg          5.785e+05  4.330e+04  13.361  < 2e-16 ***
# RoofMatlMembran          6.664e+05  5.382e+04  12.383  < 2e-16 ***
# RoofMatlMetal            6.395e+05  5.361e+04  11.929  < 2e-16 ***
# RoofMatlRoll             5.701e+05  4.958e+04  11.499  < 2e-16 ***
# RoofMatlTar&Grv          5.772e+05  4.705e+04  12.268  < 2e-16 ***
# RoofMatlWdShake          5.700e+05  4.575e+04  12.458  < 2e-16 ***
# RoofMatlWdShngl          6.321e+05  4.404e+04  14.353  < 2e-16 ***
# Exterior1stAsphShn      -1.119e+04  2.396e+04  -0.467 0.640496    
# Exterior1stBrkComm       6.354e+02  1.854e+04   0.034 0.972668    
# Exterior1stBrkFace       1.665e+04  6.694e+03   2.488 0.012969 *  
# Exterior1stCBlock       -1.202e+04  2.531e+04  -0.475 0.634977    
# Exterior1stCemntBd       2.371e+03  7.066e+03   0.336 0.737297    
# Exterior1stHdBoard      -3.807e+03  6.055e+03  -0.629 0.529604    
# Exterior1stImStucc      -8.253e+03  2.406e+04  -0.343 0.731673    
# Exterior1stMetalSd       1.080e+03  5.933e+03   0.182 0.855546    
# Exterior1stPlywood      -6.775e+03  6.386e+03  -1.061 0.288875    
# Exterior1stStone        -6.108e+03  1.912e+04  -0.320 0.749359    
# Exterior1stStucco        9.139e+02  7.439e+03   0.123 0.902244    
# Exterior1stVinylSd      -2.243e+02  5.970e+03  -0.038 0.970036    
# Exterior1stWd Sdng      -9.220e+02  5.897e+03  -0.156 0.875778    
# Exterior1stWdShing      -3.675e+03  7.366e+03  -0.499 0.617975    
# MasVnrTypeBrkFace        6.694e+03  6.499e+03   1.030 0.303229    
# MasVnrTypeNone           1.009e+04  6.560e+03   1.538 0.124189    
# MasVnrTypeStone          1.084e+04  6.882e+03   1.575 0.115573    
# MasVnrArea               2.194e+01  5.569e+00   3.940 8.59e-05 ***
# ExterQualFa             -7.162e+03  9.706e+03  -0.738 0.460712    
# ExterQualGd             -2.249e+04  4.602e+03  -4.887 1.15e-06 ***
# ExterQualTA             -2.231e+04  5.071e+03  -4.399 1.18e-05 ***
# BsmtQualFa              -1.329e+04  5.904e+03  -2.251 0.024577 *  
# BsmtQualGd              -2.078e+04  3.141e+03  -6.615 5.39e-11 ***
# BsmtQualno_basement      1.063e+04  2.401e+04   0.443 0.658010    
# BsmtQualTA              -1.798e+04  3.834e+03  -4.691 3.00e-06 ***
# BsmtCondGd               1.074e+03  4.981e+03   0.216 0.829315    
# BsmtCondno_basement             NA         NA      NA       NA    
# BsmtCondPo               4.130e+04  2.090e+04   1.976 0.048396 *  
# BsmtCondTA               4.082e+03  3.933e+03   1.038 0.299515    
# BsmtExposureGd           1.578e+04  2.855e+03   5.528 3.90e-08 ***
# BsmtExposureMn          -3.102e+03  2.861e+03  -1.084 0.278481    
# BsmtExposureNo          -6.046e+03  2.026e+03  -2.985 0.002892 ** 
# BsmtExposureno_basement -1.563e+04  2.267e+04  -0.690 0.490539    
# BsmtFinSF1               3.457e+01  4.483e+00   7.711 2.47e-14 ***
# BsmtFinSF2               2.479e+01  5.639e+00   4.395 1.20e-05 ***
# BsmtUnfSF                1.842e+01  4.241e+00   4.344 1.51e-05 ***
# X1stFlrSF                4.797e+01  4.932e+00   9.727  < 2e-16 ***
# X2ndFlrSF                5.503e+01  3.465e+00  15.884  < 2e-16 ***
# BsmtFullBath             2.694e+03  1.732e+03   1.556 0.120056    
# FullBath                 2.810e+03  1.905e+03   1.476 0.140309    
# BedroomAbvGr            -4.667e+03  1.263e+03  -3.694 0.000230 ***
# KitchenAbvGr            -1.538e+04  5.207e+03  -2.953 0.003200 ** 
# KitchenQualFa           -1.866e+04  5.693e+03  -3.277 0.001077 ** 
# KitchenQualGd           -2.305e+04  3.312e+03  -6.960 5.37e-12 ***
# KitchenQualTA           -2.304e+04  3.732e+03  -6.175 8.84e-10 ***
# TotRmsAbvGrd             2.107e+03  8.918e+02   2.362 0.018304 *  
# FunctionalMaj2          -6.493e+03  1.284e+04  -0.506 0.613186    
# FunctionalMin1           5.659e+03  7.952e+03   0.712 0.476807    
# FunctionalMin2           8.483e+03  7.856e+03   1.080 0.280420    
# FunctionalMod            1.292e+03  9.293e+03   0.139 0.889463    
# FunctionalSev           -3.609e+04  2.651e+04  -1.361 0.173620    
# FunctionalTyp            1.867e+04  6.848e+03   2.727 0.006484 ** 
# Fireplaces               2.626e+03  1.258e+03   2.087 0.037112 *  
# GarageCars               4.671e+03  2.148e+03   2.175 0.029807 *  
# GarageArea               1.414e+01  7.148e+00   1.978 0.048179 *  
# GarageQualFa            -1.233e+05  2.677e+04  -4.605 4.53e-06 ***
# GarageQualGd            -1.171e+05  2.752e+04  -4.254 2.25e-05 ***
# GarageQualno_garage     -1.372e+03  1.678e+04  -0.082 0.934851    
# GarageQualPo            -1.374e+05  3.318e+04  -4.140 3.70e-05 ***
# GarageQualTA            -1.196e+05  2.655e+04  -4.506 7.20e-06 ***
# GarageCondFa             1.078e+05  3.150e+04   3.421 0.000642 ***
# GarageCondGd             1.020e+05  3.251e+04   3.138 0.001737 ** 
# GarageCondno_garage             NA         NA      NA       NA    
# GarageCondPo             1.109e+05  3.381e+04   3.279 0.001070 ** 
# GarageCondTA             1.103e+05  3.119e+04   3.535 0.000421 ***
# WoodDeckSF               1.071e+01  5.545e+00   1.932 0.053597 .  
# ScreenPorch              3.077e+01  1.188e+01   2.591 0.009683 ** 
# PoolArea                 5.611e+02  1.646e+02   3.408 0.000673 ***
# PoolQCFa                -1.451e+05  2.558e+04  -5.672 1.74e-08 ***
# PoolQCGd                -1.161e+05  3.074e+04  -3.776 0.000166 ***
# PoolQCno_pool            1.816e+05  8.953e+04   2.029 0.042684 *  
# FenceGdWo                7.657e+03  4.631e+03   1.653 0.098507 .  
# FenceMnPrv               9.441e+03  3.779e+03   2.498 0.012602 *  
# FenceMnWw                1.081e+03  7.800e+03   0.139 0.889780    
# Fenceno_fence            8.136e+03  3.465e+03   2.348 0.019007 *  
# MoSold                  -3.489e+02  2.318e+02  -1.505 0.132534    
# SaleConditionAdjLand     9.769e+03  1.271e+04   0.768 0.442358    
# SaleConditionAlloca     -1.841e+03  8.139e+03  -0.226 0.821075    
# SaleConditionFamily      1.103e+03  5.763e+03   0.191 0.848277    
# SaleConditionNormal      5.739e+03  2.593e+03   2.213 0.027040 *  
#   SaleConditionPartial     1.910e+04  3.638e+03   5.250 1.77e-07 ***
#   ---
#   Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# 
# Residual standard error: 22440 on 1304 degrees of freedom
# Multiple R-squared:  0.9287,	Adjusted R-squared:  0.9202 
# F-statistic: 109.6 on 155 and 1304 DF,  p-value: < 2.2e-16

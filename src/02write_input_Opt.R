#create input files #########

paramnames <- c("ICQueenStrength=",
                "RQWkrDrnRatio=",
                "ICDroneMiteSurvivorship=",
                "ICWorkerMiteSurvivorship=",
                "ICForagerLifespan=",
                "ImmType=",
                "RQQueenStrength=",
                "RQEnableReQueen=",
                "AIAdultSlope=",
                "AIAdultLD50=",
                "AIAdultSlopeContact=",
                "AIAdultLD50Contact=",
                "AILarvaSlope=",
                "AILarvaLD50=",
                "AIKOW=",
                "AIKOC=",
                "AIHalfLife=",
                "EAppRate=",
                "FoliarEnabled=",
                "FoliarAppDate=",
                "FoliarForageBegin=",
                "FoliarForageEnd=",
                "AIContactFactor=",
                "CL4Pollen=",
                "CL4Nectar=",
                "CL5Pollen=",
                "CL5Nectar=",
                "CLDPollen=",
                "CLDNectar=",
                "CA13Pollen=",
                "CA13Nectar=",
                "CA410Pollen=",
                "CA410Nectar=",
                "CA1120Pollen=",
                "CA1120Nectar=",
                "IPollenTrips=",
                "INectarTrips=",
                "IPollenLoad=",
                "INectarLoad=",
                "ESoilP=",
                "ESoilFoc=",
                "SoilEnabled=",
                "SeedEnabled=",
                "SoilForageBegin=",
                "SoilForageEnd=",
                "SeedForageBegin=",
                "SeedForageEnd=",
                "ESeedConcentration=",
                "InitColNectar=",
                "InitColPollen=",
                "ForagerMaxProp=",
                "TotalImmMites=",
                "PctImmMitesResistant=",
                "ICDroneAdultInfest=",
                "ICDroneBroodInfest=",
                "ICDroneMiteOffspring=",
                "ICWorkerAdultInfest=",
                "ICWorkerBroodInfest=",
                "ICWorkerBroodInfest=")

numnames = length(paramnames)
paramvalues = matrix(nrow=numnames, ncol=Nsims)

for (i in 1:Nsims) {

  onerunvals <- c(queenstrength[i],
                  wkrdrnratio[i],
                  drnmitesurvive[i],
                  wkrmitesurvive[i],
                  fgrlifespan[i],
                  miteimmtype[i],
                  RQQueenStrength[i],
                  rqenable[i],
                  adslope[i],
                  adLD50[i],
                  adslopec[i],
                  adLD50c[i],
                  lslope[i],
                  lLD50[i],
                  kow[i],
                  koc[i],
                  halflife[i],
                  apprate[i],
                  foliarenable[i],
                  foliar_appdate[i],
                  foliar_begin[i],
                  foliar_end[i],
                  contactfactor[i],
                  cl4pollen[i],
                  cl4nectar[i],
                  cl5pollen[i],
                  cl5nectar[i],
                  cldpollen[i],
                  cldnectar[i],
                  ca13pollen[i],
                  ca13nectar[i],
                  ca410pollen[i],
                  ca410nectar[i],
                  ca1120pollen[i],
                  ca1120nectar[i],
                  ptrips[i],
                  ntrips[i],
                  pload[i],
                  nload[i],
                  soilp[i],
                  soilfoc[i],
                  soilenable[i],
                  seedenable[i],
                  soil_begin[i],
                  soil_end[i],
                  seed_begin[i],
                  seed_end[i],
                  seedconc[i],
                  InitColNectar[i],
                  InitColPollen[i],
                  ForagerMaxProp[i],
                  totalimmmites[i],
                  pctresistimmmites[i],
                  drnadultinfest[i],
                  drnbroodinfest[i],
                  drnmiteoffspring[i],
                  wkradultinfest[i],
                  wkrbroodinfest[i],
                  wkrmiteoffspring[i])
  
  paramvalues[,i] <- onerunvals

}

#Now build files from paramvalues and paramnames
filedf <- data.frame(paramnames, paramvalues, stringsAsFactors = FALSE)

for (i in 1:Nsims)
{
  write.table(filedf[,c(1,i)], paste(vpdir_in_control, "input", i,".txt", sep=""), quote=FALSE, row.names = FALSE, col.names = FALSE)
  write.table(filedf[,c(1,i)], paste(vpdir_in_foliar, "input", i,".txt", sep=""), quote=FALSE, row.names = FALSE, col.names = FALSE)
  write.table(filedf[,c(1,i)], paste(vpdir_in_seed, "input", i,".txt", sep=""), quote=FALSE, row.names = FALSE, col.names = FALSE)
  write.table(filedf[,c(1,i)], paste(vpdir_in_soil, "input", i,".txt", sep=""), quote=FALSE, row.names = FALSE, col.names = FALSE)
}


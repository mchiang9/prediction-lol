library(utils)
setwd("/Users/mingzhang/Downloads")
dat=read.csv('matchinfo.csv', header = T)
marksmanList=c("Ashe","Caitlyn","Corki","Draven","Ezreal","Jhin","Jinx","Kalista","Kog'maw","Lucian","Miss Fortune","Sivir","Tristana","Twitch","Varus","Vayne","Xayah")
bResult=dat$bResult
rResult=dat$rResult
bADC=dat$blueADCChamp
rADC=dat$redADCChamp
bSUP=dat$blueSupportChamp
rSUP=dat$redSupportChamp
newMatrix=cbind(bResult,rResult,bADC %in% marksmanList,rADC %in% marksmanList,bSUP,rSUP)
rAsheAlistar=subset(newMatrix, rADC=='Ashe' & rSUP=='Alistar')
bAsheAlistar=subset(newMatrix, bADC=='Ashe' & bSUP=='Alistar')
nRedAsheAlista=nrow(rAsheAlistar)
rAsheAlistarWin=colSums(rAsheAlistar, na.rm = FALSE, dims=1)[2]
nBlueAsheAlista=nrow(bAsheAlistar)
bAsheAlistarWin=colSums(rAsheAlistar, na.rm = FALSE, dims=1)[2]
nAsheAlistar=nRedAsheAlista+nBlueAsheAlista
AsheAlistarWin=rAsheAlistarWin+bAsheAlistarWin
AsheAlistarWinRate=AsheAlistarWin/nAsheAlistar
AsheAlistarWinRate

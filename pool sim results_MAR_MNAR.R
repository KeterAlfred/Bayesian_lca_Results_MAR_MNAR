


setwd("C:\\Users\\Keter\\OneDrive - ITG\\EDCTP\\PhD\\lca\\Vukuzazi\\revised analysis\\vb_sim_analysis\\Results_MAR_MNAR")


rm(list = ls())


require("R2jags")
require("runjags")
require("coda")







sim1.MAR1 = readRDS("vb.sim1.MAR.res1_10.RData")
sim1.MAR2 = readRDS("vb.sim1.MAR.res11_20.RData")
sim1.MAR3 = readRDS("vb.sim1.MAR.res21_30.RData")
sim1.MAR4 = readRDS("vb.sim1.MAR.res31_40.RData")
sim1.MAR5 = readRDS("vb.sim1.MAR.res41_50.RData")
sim1.MAR6 = readRDS("vb.sim1.MAR.res51_60.RData")
sim1.MAR7 = readRDS("vb.sim1.MAR.res61_70.RData")
sim1.MAR8 = readRDS("vb.sim1.MAR.res71_80.RData")
sim1.MAR9 = readRDS("vb.sim1.MAR.res81_90.RData")
sim1.MAR10 = readRDS("vb.sim1.MAR.res91_100.RData")


print(sim1.MAR1[1], intervals = c(0.5, 0.025, 0.975))
print(sim1.MAR2[1], intervals = c(0.5, 0.025, 0.975))
print(sim1.MAR3[1], intervals = c(0.5, 0.025, 0.975))
print(sim1.MAR4[1], intervals = c(0.5, 0.025, 0.975))



sim1.MAR = c(sim1.MAR1, sim1.MAR2, sim1.MAR3, sim1.MAR4,
             sim1.MAR5, sim1.MAR6, sim1.MAR7, sim1.MAR8,
             sim1.MAR9, sim1.MAR10)
sim1.MAR.l = sapply(sim1.MAR,coda::as.mcmc)

MAR1=combine.MCMC(
  mcmc.objects = sim1.MAR.l
)

MAR1.s = summary(MAR1)
round( MAR1.s$quantiles,4)



# round( MAR1.s$statistics,4)

# pi.names = row.names(MAR1.s$statistics)[which(substr(row.names(MAR1.s$statistics),1,2) %in% "pi")]
# se.names = row.names(MAR1.s$statistics)[which(substr(row.names(MAR1.s$statistics),1,2) %in% "se")]
# sp.names = row.names(MAR1.s$statistics)[which(substr(row.names(MAR1.s$statistics),1,2) %in% "sp")]
#
# MAR1.est = MAR1.s$statistics[c(pi.names, se.names, sp.names),c(1,2)]
# MAR1.est.l = MAR1.est[,1] - MAR1.est[,2]*2/sqrt(10000)
# MAR1.est.u = MAR1.est[,1] + MAR1.est[,2]*2/sqrt(10000)
#
# MAR1.95ci = cbind( MAR1.est, MAR1.est.l, MAR1.est.u)
# round( MAR1.95ci, 4)







sim1.MNAR1 = readRDS("vb.sim1.MNAR.res1_10.RData")
sim1.MNAR2 = readRDS("vb.sim1.MNAR.res11_20.RData")
sim1.MNAR3 = readRDS("vb.sim1.MNAR.res21_30.RData")
sim1.MNAR4 = readRDS("vb.sim1.MNAR.res31_40.RData")
sim1.MNAR5 = readRDS("vb.sim1.MNAR.res41_50.RData")
sim1.MNAR6 = readRDS("vb.sim1.MNAR.res51_60.RData")
sim1.MNAR7 = readRDS("vb.sim1.MNAR.res61_70.RData")
sim1.MNAR8 = readRDS("vb.sim1.MNAR.res71_80.RData")
sim1.MNAR9 = readRDS("vb.sim1.MNAR.res81_90.RData")
sim1.MNAR10 = readRDS("vb.sim1.MNAR.res91_100.RData")


print(sim1.MNAR1[1], intervals = c(0.5, 0.025, 0.975))
print(sim1.MNAR2[1], intervals = c(0.5, 0.025, 0.975))
print(sim1.MNAR3[1], intervals = c(0.5, 0.025, 0.975))
print(sim1.MNAR4[1], intervals = c(0.5, 0.025, 0.975))



sim1.MNAR = c(sim1.MNAR1, sim1.MNAR2, sim1.MNAR3, sim1.MNAR4,
             sim1.MNAR5, sim1.MNAR6, sim1.MNAR7, sim1.MNAR8,
             sim1.MNAR9, sim1.MNAR10)
sim1.MNAR.l = sapply(sim1.MNAR,coda::as.mcmc)

MNAR1=combine.MCMC(
  mcmc.objects = sim1.MNAR.l
)

MNAR1.s = summary(MNAR1)
round( MNAR1.s$quantiles,4)




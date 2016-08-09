setwd("~/Documents/Lab/eGNG with Spence/Data")

scas<-read.csv("scas2.csv")
aGNG<-read.csv("aGNG_out.csv")
hGNG<-read.csv("hGNG_out.csv")

d<-merge(aGNG, scas)

d<-merge(d,hGNG, by.x="CABIL",by.y="CABIL")

colnames(d)<-c("cabil","ang_1","ang_3","ang_5","date1","scas_parent_total","Dx","hap_1","hap_3","hap_5","date2")

d<-d[,c("cabil","Dx","scas_parent_total","ang_1","ang_3","ang_5","hap_1","hap_3","hap_5")]

write.csv(d,"spence_egng.csv",row.names=F)

###correlations

d1<-d

q<-d1[which(d1$Dx == "22q11.2DS"),]

td<-d1[which(d1$Dx == "Typical Developing"),]

cor.test(d1$scas_parent_total, d1$ang_1)
cor.test(q$scas_parent_total, q$ang_1)
cor.test(td$scas_parent_total, td$ang_1)

cor.test(d1$scas_parent_total, d1$ang_3)
cor.test(q$scas_parent_total, q$ang_3)
cor.test(td$scas_parent_total, td$ang_3)

cor.test(d1$scas_parent_total, d1$ang_5)
cor.test(q$scas_parent_total, q$ang_5)
cor.test(td$scas_parent_total, td$ang_5)

###Happy 1###
cor.test(d1$scas_parent_total, d1$hap_1)
cor.test(q$scas_parent_total, q$hap_1)
cor.test(td$scas_parent_total, td$hap_1)

###Happy 3###
cor.test(d1$scas_parent_total, d1$hap_3)
cor.test(q$scas_parent_total, q$hap_3)
cor.test(td$scas_parent_total, td$hap_3)

###Happy 5###
cor.test(d1$scas_parent_total, d1$hap_5)
cor.test(q$scas_parent_total, q$hap_5)
cor.test(td$scas_parent_total, td$hap_5)
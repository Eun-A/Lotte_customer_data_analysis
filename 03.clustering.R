### 04. clustering -----------------------------------------------------

str(Customer)
Customer[,ID := factor(ID)]
Customer[,GENDER := factor(GENDER)]
Customer[,HOM_PST_NO := factor(HOM_PST_NO)]

## scaling
# Dimension reduction using Z-score 
CustomerZi <- data.table(scale(Customer[,which(!colnames(Customer) %in% c("ID","GENDER","HOM_PST_NO")),with=F]))
CustomerZall <- data.table(Customer[,c(1,2,4)],CustomerZi)



## PCA 주성분 분석
CustomerZall[,-c(1,2,3,4)]
pca <- prcomp(CustomerZall[,-c(1,2,3,4)])
summary(pca)

# autoplot(pca, data = scaled , colour = 'cluster1', shape = F, label = T, loadings = T, 
#          label.size = 7, loadings.label.size = 5, main = "PCA (single linkage cluster)",
#          loadings.label = T, loadings.colour = "blue", loadings.label.colour = "blue")


## 클러스터링
moddata <- CustomerZall[round(seq(1,nrow(CustomerZall),10)),c("freq_b03","freq_a04", "prop_beauty", "prop_fashion"),with=F]

custclst <- Mclust(CustomerZall[round(seq(1,nrow(CustomerZall),10)),c("freq_a01","freq_a05", "freq_beauty", "freq_fashion"),with = F])
summary(custclst)
plot(custclst)

fit.pam <- pam(CustomerZall[round(seq(1,nrow(CustomerZall),10)),c("freq_a01","freq_a05", "prop_beauty", "prop_fashion"),with = F],k=3,stand=TRUE)
clusplot(fit.pam, main="Bivariate Cluster Plot")



###수정하기
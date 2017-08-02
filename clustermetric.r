kmeansIC = function(fit){
  
  m = ncol(fit$centers)
  n = length(fit$cluster)
  k = nrow(fit$centers)
  D = fit$tot.withinss
  return(data.frame(AIC = D + 2*m*k,
                    BIC = D + log(n)*m*k))
}

# create artificial groups
clust_dat = rnorm(100, mean = 25, sd = 1)
clust_dat[1:50] = clust_dat[1:50] + 5
clust_dat[51:100] = clust_dat[51:100] - 5

plot(clust_dat)

clust = kmeans(clust_dat, 2)
kmeansIC(clust)

> library(datasets); attach(anscombe)
#cos'hanno in comune questi plot??
> par(mfrow=c(2,2)); plot(y1); plot(y2); plot(y3); plot(y4)
#calcolandone le medie...
> apply(cbind(y1,y2,y3,y4),2,mean)
#risultano essere pressoch\`{e} uguali (alla seconda cifra decimale)
> plot(sort(y1)); plot(sort(y2)); plot(sort(y3)); plot(sort(y4))
#sebbene le forme distribuzionali siano ben diverse


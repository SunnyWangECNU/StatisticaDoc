> model.2=lm(Volume ~ Girth + Height)
> summary(model.2)
# L'R quadro come prevedibile \`{e} aumentato, avendo inserito nel modello delle informazioni non incluse nella variabile "altezza".
> hh=seq(min(Height),max(Height),length.out=50)
> gg=seq(min(Girth),max(Girth),length.out=50)
> griglia=expand.grid(gg,hh)
> fit.them=function(data,model) {as.matrix(cbind(1,data))\%*\%as.matrix(model\$coefficients)}
> fitted=matrix(fit.them(griglia,model.2),byrow=F,nrow=50)
> persp(gg,hh,fitted,theta=-55,col='lightblue')


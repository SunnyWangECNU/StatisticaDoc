
> library(datasets)
> data=trees
> attach(data)
#  analisi dei dati "ad occhio"
> data
# analisi indici descrittivi: campi di variazione, medie, etc
> summary(data)
# analisi grafica delle distribuzioni
> plot(Girth)
> plot(Height)
> plot(Volume)
# NOTA: l'andamento della distribuzione di Girth e Volume \`{e} molto simile

# -> analisi della covarianza / correlazione
> cov(data)
> cor(data)
# ed ovviamente analisi grafica
> plot(Girth,Volume)
# dunque, con una correlazione tanto alta, il diametro sar\`{a} un ottimo predittore del volume: nella regressione semplice infatti l'indice R^2 di goodness of fit \`{e} proprio il quadrato del coefficiente di correlazione tra il predittore e la risposta
# ma andiamo a calcolare il modello e ad analizzarlo (molto superficialmente)
> model=lm(Volume ~ Girth)
> summary(model)
# cosa restituisce R di interessante? innanzitutto la formula del modello, da verificare (eventuali mistyping), dopodich\`{e} alcune statistiche sui residui del modello (memo: residuo=valore fittato - valore osservato), dopodich\`{e} arriva la parte interessante.
# innanzitutto, l'intercetta \`{e} una semplice variabile matematica determinata per sottrazione, ovvero rappresenta quel valore che assume la risposta quando la predittiva \`{e} nulla; il coefficiente dell'esplicativa invece rappresenta (nel caso univariato) il coefficiente angolare della retta di regressione, ovvero la variazione determinata nella risposta da un incremento unitario della variabile esplicativa.
# (due parole due sulla significativit\`{a} dei parametri)
# la capacit\`{a} di adattamento del modello ai dati (e non il viceversa!) \`{e} descritta, come gi\`{a} detto, dall'R quadro. In questo caso esso \`{e} pari a 0.94, ad indicare che ben il 94\% della variabilit\`{a} totale della risposta \`{e} spiegato dal modello, ovvero viene "lasciato" al caso solo il 6\% della variabilit\`{a} della risposta.
# (Questo sembra un risultato molto incoraggiante, ma nel caso di modelli previsivi si cerca di massimizzare la varianza spiegata, in modo da avere il minor margine di errore casuale possibile. Questo indice che sembra tanto alto viene letteralmente surclassato da un modello solo di poco più complicato, capace di portare l'R quadro a 0.98: >v=log(Volume); h=log(Height); gsq=2*log(Girth); summary(lm(v~gsq+h)) )
# Ovviamente la rappresentazione del modello \`{e} molto intuibile, e infatti la forza della regressione lineare semplice poggia proprio sull'"occhio", ovvero \`{e} la formalizzazione di una procedura che, intuitivamente, si farebbe anche ignorando totalmente la statistica; da un punto di vista grafico infatti:
> plot(Girth,Volume)
# volendo interpolare questi dati, semplicemente si traccerebbe una retta, che rappresenta proprio il modello di regressione calcolato:
> abline(model\$coefficients,col='red')

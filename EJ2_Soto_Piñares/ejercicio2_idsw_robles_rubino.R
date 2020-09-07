#' ---
#' title: "antapaccay_glm_corona.r"
#' author: "Ernesto Cancho-Rodriguez"
#' date: "2 de Setiembre 2020"
#' ---

#################################################
# Scripts de R para reproducir los analisis 
#################################################

# INICIO CODIGO DE PRUEBA
library(readr)
library(ggplot2)
#file.choose()


# INICIO
lugar="EJercicio2_IDSW"
str_jpeg = paste(lugar,".jpeg",sep="")
str_csv = paste(lugar,".csv",sep="")
print(str_csv)

jpeg(str_jpeg)
newdata<-read_csv(str_csv)
dataperu <- newdata
plt <- ggplot(newdata,aes(x = DIA, y = MEDIA_MOVIL))
plt
plt <- plt + geom_line(color="red", size=1.5)
plt
mayor<-max(newdata$INCIDENCIA)
mayor
plt <- plt + geom_ribbon(aes(ymin = 0, ymax = mayor),
                         alpha = 0.15, size=2)
plt
plt <- plt + labs(x = 'Día', y = 'Tasa de Incidencia de Covid-19')
plt
plt <- plt +  theme_bw()
plt
plt <- plt + ylim(0, mayor) + xlim(1, 176)
plt <- plt + geom_point(data=dataperu, aes(x=DIA, y=INCIDENCIA), size=1.25)
plt

n_last <-   nchar(lugar) - 8                              # Specify number of characters to extract
titulo<-substr(lugar, nchar(lugar) - n_last + 1, nchar(lugar)) # Extract last three characters
titulo = paste(titulo," NESTOR SOTO",sep="")
plt <- plt +ggtitle(titulo)
#plt <- plt + opts(title="ABANCAY", plot.title=theme_text(size=40, vjust=1.5))
plt
dev.off()
# FIN
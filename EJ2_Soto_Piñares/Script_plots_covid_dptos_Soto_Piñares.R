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
#file.choose()


# INICIO
lugar="P1DPTO03APURIMAC"
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
plt <- plt + geom_ribbon(aes(ymin = 0, ymax = mayor),
                         alpha = 0.15, size=2)
plt
plt <- plt + labs(x = 'Día', y = 'Tasa de Incidencia')
plt
plt <- plt +  theme_bw()
plt
plt <- plt + ylim(0, mayor) + xlim(0, 176)
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

# INICIO
lugar="P1DPTO04AREQUIPA"
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
plt <- plt + geom_ribbon(aes(ymin = 0, ymax = mayor),
                         alpha = 0.15, size=2)
plt
plt <- plt + labs(x = 'Día', y = 'Tasa de Incidencia')
plt
plt <- plt +  theme_bw()
plt
plt <- plt + ylim(0, mayor) + xlim(0, 176)
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


# INICIO
lugar="P1DPTO08CUSCO"
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
plt <- plt + geom_ribbon(aes(ymin = 0, ymax = mayor),
                         alpha = 0.15, size=2)
plt
plt <- plt + labs(x = 'Día', y = 'Tasa de Incidencia')
plt
plt <- plt +  theme_bw()
plt
plt <- plt + ylim(0, mayor) + xlim(0, 176)
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

# INICIO
lugar="P1DPTO11ICA"
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
plt <- plt + geom_ribbon(aes(ymin = 0, ymax = mayor),
                         alpha = 0.15, size=2)
plt
plt <- plt + labs(x = 'Día', y = 'Tasa de Incidencia')
plt
plt <- plt +  theme_bw()
plt
plt <- plt + ylim(0, mayor) + xlim(0, 176)
plt <- plt + geom_point(data=dataperu, aes(x=DIA, y=INCIDENCIA), size=1.25)
plt

n_last <-   nchar(lugar) - 8                              # Specify number of characters to extract

titulo<-substr(lugar, nchar(lugar) - n_last + 1, nchar(lugar)) # Extract last three characters
titulo = paste(titulo," NESTOR SOTO",sep="")
plt <- plt +ggtitle(titulo)
plt
dev.off()
# FIN

# INICIO
lugar="P1DPTO15LIMA_PROVINCIA"
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
plt <- plt + geom_ribbon(aes(ymin = 0, ymax = mayor),
                         alpha = 0.15, size=2)
plt
plt <- plt + labs(x = 'Día', y = 'Tasa de Incidencia')
plt
plt <- plt +  theme_bw()
plt
plt <- plt + ylim(0, mayor) + xlim(0, 176)
plt <- plt + geom_point(data=dataperu, aes(x=DIA, y=INCIDENCIA), size=1.25)
plt

n_last <-   nchar(lugar) - 8                              # Specify number of characters to extract
titulo = paste(titulo," NESTOR SOTO",sep="")
titulo<-substr(lugar, nchar(lugar) - n_last + 1, nchar(lugar)) # Extract last three characters
plt <- plt +ggtitle(titulo)
plt
dev.off()
# FIN


# INICIO
lugar="P1DPTO15LIMA_REGION"
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
plt <- plt + geom_ribbon(aes(ymin = 0, ymax = mayor),
                         alpha = 0.15, size=2)
plt
plt <- plt + labs(x = 'Día', y = 'Tasa de Incidencia')
plt
plt <- plt +  theme_bw()
plt
plt <- plt + ylim(0, mayor) + xlim(0, 176)
plt <- plt + geom_point(data=dataperu, aes(x=DIA, y=INCIDENCIA), size=1.25)
plt

n_last <-   nchar(lugar) - 8                              # Specify number of characters to extract
titulo<-substr(lugar, nchar(lugar) - n_last + 1, nchar(lugar)) # Extract last three characters
titulo = paste(titulo," NESTOR SOTO",sep="")
plt <- plt +ggtitle(titulo)
plt
dev.off()
# FIN


# INICIO
lugar="P1DPTO21PUNO"
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
plt <- plt + geom_ribbon(aes(ymin = 0, ymax = mayor),
                         alpha = 0.15, size=2)
plt
plt <- plt + labs(x = 'Día', y = 'Tasa de Incidencia')
plt
plt <- plt +  theme_bw()
plt
plt <- plt + ylim(0, mayor) + xlim(0, 176)
plt <- plt + geom_point(data=dataperu, aes(x=DIA, y=INCIDENCIA), size=1.25)
plt

n_last <-   nchar(lugar) - 8                              # Specify number of characters to extract
titulo<-substr(lugar, nchar(lugar) - n_last + 1, nchar(lugar)) # Extract last three characters
titulo = paste(titulo," NESTOR SOTO",sep="")
plt <- plt +ggtitle(titulo)
plt
dev.off()
# FIN

# INICIO
lugar="P2DPTO03APURIMAC"
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
plt <- plt + geom_ribbon(aes(ymin = 0, ymax = mayor),
                         alpha = 0.15, size=2)
plt
plt <- plt + labs(x = 'Día', y = 'Tasa de Incidencia')
plt
plt <- plt +  theme_bw()
plt
plt <- plt + ylim(0, mayor) + xlim(0, 176)
plt <- plt + geom_point(data=dataperu, aes(x=DIA, y=INCIDENCIA), size=1.25)
plt

n_last <-   nchar(lugar) - 8                              # Specify number of characters to extract
titulo<-substr(lugar, nchar(lugar) - n_last + 1, nchar(lugar)) # Extract last three characters
titulo = paste(titulo," NESTOR SOTO",sep="")
plt <- plt +ggtitle(titulo)
plt
dev.off()
# FIN

# INICIO
lugar="P2DPTO04AREQUIPA"
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
plt <- plt + geom_ribbon(aes(ymin = 0, ymax = mayor),
                         alpha = 0.15, size=2)
plt
plt <- plt + labs(x = 'Día', y = 'Tasa de Incidencia')
plt
plt <- plt +  theme_bw()
plt
plt <- plt + ylim(0, mayor) + xlim(0, 176)
plt <- plt + geom_point(data=dataperu, aes(x=DIA, y=INCIDENCIA), size=1.25)
plt

n_last <-   nchar(lugar) - 8                              # Specify number of characters to extract
titulo<-substr(lugar, nchar(lugar) - n_last + 1, nchar(lugar)) # Extract last three characters
titulo = paste(titulo," NESTOR SOTO",sep="")
plt <- plt +ggtitle(titulo)
plt
dev.off()
# FIN

# INICIO
lugar="P2DPTO08CUSCO"
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
plt <- plt + geom_ribbon(aes(ymin = 0, ymax = mayor),
                         alpha = 0.15, size=2)
plt
plt <- plt + labs(x = 'Día', y = 'Tasa de Incidencia')
plt
plt <- plt +  theme_bw()
plt
plt <- plt + ylim(0, mayor) + xlim(0, 176)
plt <- plt + geom_point(data=dataperu, aes(x=DIA, y=INCIDENCIA), size=1.25)
plt

n_last <-   nchar(lugar) - 8                              # Specify number of characters to extract
titulo<-substr(lugar, nchar(lugar) - n_last + 1, nchar(lugar)) # Extract last three characters
titulo = paste(titulo," NESTOR SOTO",sep="")
plt <- plt +ggtitle(titulo)
plt
dev.off()
# FIN


# INICIO
lugar="P2DPTO11ICA"
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
plt <- plt + geom_ribbon(aes(ymin = 0, ymax = mayor),
                         alpha = 0.15, size=2)
plt
plt <- plt + labs(x = 'Día', y = 'Tasa de Incidencia')
plt
plt <- plt +  theme_bw()
plt
plt <- plt + ylim(0, mayor) + xlim(0, 176)
plt <- plt + geom_point(data=dataperu, aes(x=DIA, y=INCIDENCIA), size=1.25)
plt

n_last <-   nchar(lugar) - 8                              # Specify number of characters to extract
titulo<-substr(lugar, nchar(lugar) - n_last + 1, nchar(lugar)) # Extract last three characters
titulo = paste(titulo," NESTOR SOTO",sep="")
plt <- plt +ggtitle(titulo)
plt
dev.off()
# FIN

# INICIO
lugar="P2DPTO15LIMA_PROVINCIA"
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
plt <- plt + geom_ribbon(aes(ymin = 0, ymax = mayor),
                         alpha = 0.15, size=2)
plt
plt <- plt + labs(x = 'Día', y = 'Tasa de Incidencia')
plt
plt <- plt +  theme_bw()
plt
plt <- plt + ylim(0, mayor) + xlim(0, 176)
plt <- plt + geom_point(data=dataperu, aes(x=DIA, y=INCIDENCIA), size=1.25)
plt

n_last <-   nchar(lugar) - 8                              # Specify number of characters to extract
titulo<-substr(lugar, nchar(lugar) - n_last + 1, nchar(lugar)) # Extract last three characters
titulo = paste(titulo," NESTOR SOTO",sep="")
plt <- plt +ggtitle(titulo)
plt
dev.off()
# FIN


# INICIO
lugar="P2DPTO15LIMA_REGION"
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
plt <- plt + geom_ribbon(aes(ymin = 0, ymax = mayor),
                         alpha = 0.15, size=2)
plt
plt <- plt + labs(x = 'Día', y = 'Tasa de Incidencia')
plt
plt <- plt +  theme_bw()
plt
plt <- plt + ylim(0, mayor) + xlim(0, 176)
plt <- plt + geom_point(data=dataperu, aes(x=DIA, y=INCIDENCIA), size=1.25)
plt

n_last <-   nchar(lugar) - 8                              # Specify number of characters to extract
titulo<-substr(lugar, nchar(lugar) - n_last + 1, nchar(lugar)) # Extract last three characters
titulo = paste(titulo," NESTOR SOTO",sep="")
plt <- plt +ggtitle(titulo)
plt
dev.off()
# FIN

# INICIO
lugar="P2DPTO21PUNO"
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
plt <- plt + geom_ribbon(aes(ymin = 0, ymax = mayor),
                         alpha = 0.15, size=2)
plt
plt <- plt + labs(x = 'Día', y = 'Tasa de Incidencia')
plt
plt <- plt +  theme_bw()
plt
plt <- plt + ylim(0, mayor) + xlim(0, 176)
plt <- plt + geom_point(data=dataperu, aes(x=DIA, y=INCIDENCIA), size=1.25)
plt

n_last <-   nchar(lugar) - 8                              # Specify number of characters to extract
titulo<-substr(lugar, nchar(lugar) - n_last + 1, nchar(lugar)) # Extract last three characters
titulo = paste(titulo," NESTOR SOTO",sep="")
plt <- plt +ggtitle(titulo)
plt
dev.off()
# FIN

#INICIO DE AREA DE PRUEBAS RAPIDAS - TIPO DE PRUEBA 3

# INICIO
lugar="P3DPTO03APURIMAC"
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
plt <- plt + geom_ribbon(aes(ymin = 0, ymax = mayor),
                         alpha = 0.15, size=2)
plt
plt <- plt + labs(x = 'Día', y = 'Tasa de Incidencia')
plt
plt <- plt +  theme_bw()
plt
plt <- plt + ylim(0, mayor) + xlim(0, 176)
plt <- plt + geom_point(data=dataperu, aes(x=DIA, y=INCIDENCIA), size=1.25)
plt

n_last <-   nchar(lugar) - 8                              # Specify number of characters to extract
titulo<-substr(lugar, nchar(lugar) - n_last + 1, nchar(lugar)) # Extract last three characters
titulo = paste(titulo," NESTOR SOTO",sep="")
plt <- plt +ggtitle(titulo)
plt
dev.off()
# FIN

# INICIO
lugar="P3DPTO04AREQUIPA"
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
plt <- plt + geom_ribbon(aes(ymin = 0, ymax = mayor),
                         alpha = 0.15, size=2)
plt
plt <- plt + labs(x = 'Día', y = 'Tasa de Incidencia')
plt
plt <- plt +  theme_bw()
plt
plt <- plt + ylim(0, mayor) + xlim(0, 176)
plt <- plt + geom_point(data=dataperu, aes(x=DIA, y=INCIDENCIA), size=1.25)
plt

n_last <-   nchar(lugar) - 8                              # Specify number of characters to extract
titulo<-substr(lugar, nchar(lugar) - n_last + 1, nchar(lugar)) # Extract last three characters
titulo = paste(titulo," NESTOR SOTO",sep="")
plt <- plt +ggtitle(titulo)
plt
dev.off()
# FIN


# INICIO
lugar="P3DPTO08CUSCO"
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
plt <- plt + geom_ribbon(aes(ymin = 0, ymax = mayor),
                         alpha = 0.15, size=2)
plt
plt <- plt + labs(x = 'Día', y = 'Tasa de Incidencia')
plt
plt <- plt +  theme_bw()
plt
plt <- plt + ylim(0, mayor) + xlim(0, 176)
plt <- plt + geom_point(data=dataperu, aes(x=DIA, y=INCIDENCIA), size=1.25)
plt

n_last <-   nchar(lugar) - 8                              # Specify number of characters to extract
titulo<-substr(lugar, nchar(lugar) - n_last + 1, nchar(lugar)) # Extract last three characters
titulo = paste(titulo," NESTOR SOTO",sep="")
plt <- plt +ggtitle(titulo)
plt
dev.off()
# FIN


# INICIO
lugar="P3DPTO11ICA"
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
plt <- plt + geom_ribbon(aes(ymin = 0, ymax = mayor),
                         alpha = 0.15, size=2)
plt
plt <- plt + labs(x = 'Día', y = 'Tasa de Incidencia')
plt
plt <- plt +  theme_bw()
plt
plt <- plt + ylim(0, mayor) + xlim(0, 176)
plt <- plt + geom_point(data=dataperu, aes(x=DIA, y=INCIDENCIA), size=1.25)
plt

n_last <-   nchar(lugar) - 8                              # Specify number of characters to extract
titulo<-substr(lugar, nchar(lugar) - n_last + 1, nchar(lugar)) # Extract last three characters
titulo = paste(titulo," NESTOR SOTO",sep="")
plt <- plt +ggtitle(titulo)
plt
dev.off()
# FIN

# INICIO
lugar="P3DPTO15LIMA_PROVINCIA"
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
plt <- plt + geom_ribbon(aes(ymin = 0, ymax = mayor),
                         alpha = 0.15, size=2)
plt
plt <- plt + labs(x = 'Día', y = 'Tasa de Incidencia')
plt
plt <- plt +  theme_bw()
plt
plt <- plt + ylim(0, mayor) + xlim(0, 176)
plt <- plt + geom_point(data=dataperu, aes(x=DIA, y=INCIDENCIA), size=1.25)
plt

n_last <-   nchar(lugar) - 8                              # Specify number of characters to extract
titulo<-substr(lugar, nchar(lugar) - n_last + 1, nchar(lugar)) # Extract last three characters
titulo = paste(titulo," NESTOR SOTO",sep="")
plt <- plt +ggtitle(titulo)
plt
dev.off()
# FIN

# INICIO
lugar="P3DPTO15LIMA_REGION"
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
plt <- plt + geom_ribbon(aes(ymin = 0, ymax = mayor),
                         alpha = 0.15, size=2)
plt
plt <- plt + labs(x = 'Día', y = 'Tasa de Incidencia')
plt
plt <- plt +  theme_bw()
plt
plt <- plt + ylim(0, mayor) + xlim(0, 176)
plt <- plt + geom_point(data=dataperu, aes(x=DIA, y=INCIDENCIA), size=1.25)
plt

n_last <-   nchar(lugar) - 8                              # Specify number of characters to extract
titulo<-substr(lugar, nchar(lugar) - n_last + 1, nchar(lugar)) # Extract last three characters
titulo = paste(titulo," NESTOR SOTO",sep="")
plt <- plt +ggtitle(titulo)
plt
dev.off()
# FIN


# INICIO
lugar="P3DPTO21PUNO"
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
plt <- plt + geom_ribbon(aes(ymin = 0, ymax = mayor),
                         alpha = 0.15, size=2)
plt
plt <- plt + labs(x = 'Día', y = 'Tasa de Incidencia')
plt
plt <- plt +  theme_bw()
plt
plt <- plt + ylim(0, mayor) + xlim(0, 176)
plt <- plt + geom_point(data=dataperu, aes(x=DIA, y=INCIDENCIA), size=1.25)
plt

n_last <-   nchar(lugar) - 8                              # Specify number of characters to extract
titulo<-substr(lugar, nchar(lugar) - n_last + 1, nchar(lugar)) # Extract last three characters
titulo = paste(titulo," NESTOR SOTO",sep="")
plt <- plt +ggtitle(titulo)
plt
dev.off()
# FIN
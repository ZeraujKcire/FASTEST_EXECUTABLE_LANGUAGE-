
# === LIBRERÍAS === (((
suppressPackageStartupMessages(library(lmtest))
suppressPackageStartupMessages(library(qqplotr))
suppressPackageStartupMessages(library(ggplot2))
suppressPackageStartupMessages(library(gridExtra))
suppressPackageStartupMessages(library(GGally))
suppressPackageStartupMessages(library(car))
suppressPackageStartupMessages(library(DescTools))
suppressPackageStartupMessages(library(stats))
suppressPackageStartupMessages(library(agricolae))
# )))

# === DATOS === (((
sprintf(" --- DATOS --- ")
datos = read.table('dcl_2.txt', header = TRUE) 
str(datos)
Respuesta = datos$Tiempo
F.Control = datos$Lenguaje
Bloque1 = as.factor(datos$Tipo_Test)
Bloque2 = as.factor(datos$Procesos_fondo)
regresion = lm(Respuesta ~ F.Control + Bloque1 + Bloque2,data=datos)
# )))

# === DIAGRAMA DE CAJAS SIMULTÁNEAS === (((
ggplot(datos, aes(x= F.Control ,y=Respuesta)) + geom_boxplot()
# )))

# === SUPUESTOS === (((
sprintf(" --- SUPUESTOS --- ")

# === NORMALIDAD === (((
sprintf(" --- 1. NORMALIDAD --- ")
# GRÁFICA
resultados  =  aov(Respuesta~F.Control + Bloque1+Bloque2,data=datos)
sprintf("RESULTADOS CON TODAS LAS FUENTES DE VARIABILDAD.")
resultados
anova       =  anova(resultados)
residuos    =  resid(resultados)
ggplot(data = NULL, mapping=aes(sample=residuos)) + stat_qq_band() + stat_qq_line() + stat_qq_point() + labs(x="Cuantiles Teóricos", y="Cuantiles")
# SHAPIRO
sprintf("Shapiro Test.")
shapiro.test(residuos)
# KOLMOGOROV-SMIRNOFF
sprintf("KS Test")
ks.test(residuos,"pnorm",0, sqrt(anova$Mean[3]))
# )))

# === HOMOCEDASTICIDAD === (((
sprintf(" --- 2. HOMOCEDASTICIDAD --- ")
# BARTLETT
leveneTest(Respuesta ~ F.Control , data = datos)
bartlett.test(Respuesta ~ F.Control, data = datos)
# GRÁFICO
y_estimada       =  fitted(regresion)
residu_estandar  =  rstudent(regresion)
graf_1 = ggplot(data = NULL, aes(x= F.Control,y=residuos)) + geom_point() + ggtitle("Respuesta vs Resiuales.")      + labs(x="Respuesta",y="Residuales")     + geom_hline(yintercept=0)
graf_2 = ggplot(data = NULL, aes(x= F.Control,y=residu_estandar))   + geom_point() + ggtitle("Respuesta vs Resid. Estand.")  + labs(x="Respuesta",y="Resid. Estand.") + geom_hline(yintercept=0)
grid.arrange(graf_1,graf_2,ncol=2,nrow=1) 
# )))

# === INDEPENDENCIA === (((
sprintf(" --- 3. INDEPENDENCIA --- ")
# DURBIM WATSON
dwtest(regresion)
# GRÁFICO
n = dim(datos)[1]
ggplot(data = NULL, aes(x=1:n,y=residu_estandar)) + geom_line() + ggtitle("Orden de Corrida vs Resid. Estand.") + labs(x="Orden de Corrida",y="Resid. Estand.")  + geom_hline(yintercept=0)
# )))

# )))

# === ANOVA === (((
sprintf(" --- ANOVA --- ")
anova
# )))

# === DBCA === (((
sprintf(" --- DBCA --- ")
regresion = aov(Respuesta~F.Control + Bloque2,data=datos)
anova = anova(regresion)
residuos    =  resid(regresion)
shapiro.test(residuos)
ks.test(residuos,"pnorm",0, sqrt(anova$Mean[2]))
regresion_1 = lm(Respuesta~F.Control,data=datos)
dwtest(regresion_1)
sprintf("RESULTADOS SOLO CON LA FUENTE DE VARIABILIDAD DEL FACTOR CONTROLABLE.")
regresion
anova
# )))

# === DCA === (((
sprintf(" --- DCA --- ")
regresion = aov(Respuesta ~ F.Control , data = datos)
anova = anova(regresion)
residuos    =  resid(regresion)
shapiro.test(residuos)
ks.test(residuos,"pnorm",0, sqrt(anova$Mean[1]))
regresion_1 = lm(Respuesta~F.Control,data=datos)
dwtest(regresion_1)
sprintf("RESULTADOS SOLO CON LA FUENTE DE VARIABILIDAD DEL FACTOR CONTROLABLE.")
regresion
anova
# )))

# === COMPARACIONES === (((
sprintf(" --- COMPARACIONES --- ")
TukeyHSD(regresion)
<<<<<<< HEAD
regresion_1
# LSD.test(resultados , "F.Control" ,  console=TRUE)
=======
LSD.test(resultados , "F.Control" ,  console=TRUE)
>>>>>>> f5a8652544e1d87911452270c520d3b2b8457803
# )))

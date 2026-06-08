library(dplyr)
library(ggplot2)
library(ggfortify)
library(vegan)
library(rdacca.hp)
library(ade4)
library(tidyr)
library(lmtest)
library(sandwich)

# Leer base de datos Modelo de regresión múltiple 
Datos_final <- read.csv("/home/mari/Documents/GitHub/tesis/R/df_2017.csv")

# Transformar y escalar variables para regresión
Datos_final <- Datos_final %>%
  mutate(
    log_Population = scale(log(Population)),
    log_density = scale(log(Density)),
    log_RevFirms = scale(log1p(revFirms)),
    log_Precip = scale(log(Precip)),
    log_ISMT = scale(log(ISMT)),
    log_NLWU = (log(NLWU)),
    log_DW = (log(DrinkingWater)),
    log_Industrial = (log1p(Industrial_NLWU)) 
  )

# Eliminar filas con NaN (solo 1 comuna no tenía dato ISMT)
Datos_final <- Datos_final %>%
  drop_na(log_Industrial, log_Population, log_density, log_Precip, log_RevFirms, log_ISMT)

# Modelo para NLWU
model <- lm(log_NLWU ~ log_Population + log_density + log_Precip + log_RevFirms + log_ISMT,
            data = Datos_final,
)
model2 <- step(model,direction="both",trace=1) # no cambia al aplicar step 
AIC(model)
summary(model)

# Modelo para DW
model <- lm(log_DW ~ log_Population + log_density + log_Precip + log_RevFirms + log_ISMT,
            data = Datos_final,
)
model2 <- step(model,direction="both",trace=1) # sí cambia con step
plot(model)
plot(model2)
AIC(model)
AIC(model2)
summary(model)
summary(model2)


# Modelo para Industrial
model <- lm(log_Industrial ~ log_Population + log_density + log_Precip + log_RevFirms + log_ISMT,
            data = Datos_final,na.action = na.omit
)
model2 <- step(model,direction="both",trace=1) # sí cambia con step
plot(model)
plot(model2)
AIC(model)
AIC(model2)
summary(model)
summary(model2)

# función del paquete lmtest combinada con la función vcocHC del paquete sandwich
# permite realizar pruebas de hipótesis sobre coeficientes de un lm
# utilizando errores estándar robustos que corrigen la heterocedasticidad
coeftest(model2, vcov = vcovHC(model2, type = "HC1"))  # Usa HC1 o HC3


# Modelo para Industrial sin 0
Datos_final_sincero <- Datos_final[Datos_final$Industrial_NLWU != 0, ]
# ahora se eliminaron las comunas que tenen 0 en industrial 
model <- lm(log_Industrial ~ log_Population + log_density + log_Precip + log_RevFirms + log_ISMT,
            data = Datos_final_sincero,na.action = na.omit
)
model2 <- step(model,direction="both",trace=1) # sí cambia con step
plot(model)
plot(model2)
AIC(model)
AIC(model2)
summary(model)
summary(model2)


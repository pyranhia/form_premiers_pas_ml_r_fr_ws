#---------------------------------------------------------------------------#
# jour_1_atelier_1_houses.R
# Formation "Premiers pas en Machine Learning avec R" - Pyranhia
# Squelette genere automatiquement depuis doc_jour_1.qmd (Prédiction du prix des maisons (California Housing))
# ATTENTION : fichier genere automatiquement, a relire avant utilisation.
#---------------------------------------------------------------------------#

## Prédiction du prix des maisons (California Housing) -----------------------
#---------------------------------------------------------------------------#

# Charger les packages utiles
library(tidyverse)
library(scales)
library(splitTools)
library(MLmetrics)
library(datapyranhia)

# Charger les données depuis le package datapyranhia
data(housing)

# Aperçu rapide des données
glimpse(housing)
summary(housing)

# Nouvelle colonne avec la racine carrée du prix à prédire
housing <- housing |>
  mutate(median_house_value_sqrt = sqrt(median_house_value))

## Séparation des données (training / test) ----------------------------------
#---------------------------------------------------------------------------#

# Calcul du découpage, stratifié sur les quartiles du prix
idx <- partition(
  housing$median_house_value_sqrt,
  p = c(train = 0.80, test = 0.20), # 80 % pour l'entraînement, 20% pour le test
  n_bins = 4,                       # utiliser les quartiles pour la stratification
  seed = 123
)

# Récupérer les jeux de données
train_df <- housing |> slice(idx$train)
test_df  <- housing |> slice(idx$test)

nrow(train_df) / nrow(housing)
nrow(test_df) / nrow(housing)

## Entraînement du modèle ----------------------------------------------------
#---------------------------------------------------------------------------#

# Formule pour prédire `median_house_value_sqrt` à partir des variables pertinentes,
# i.e. toutes les autres variables sauf `ocean_proximity` et `median_house_value`
lin_form <- median_house_value_sqrt ~ . - ocean_proximity - median_house_value

# Entraînement du modèle sur le jeu d'entraînement
lin_fit <- lm(lin_form, data = train_df)

# Afficher le modèle entraîné
print(lin_fit)

summary(lin_fit)

## Évaluation du modèle ------------------------------------------------------
#---------------------------------------------------------------------------#

# Prédire la cible sur le jeu de test
test_pred <- tibble(
  .pred = predict(lin_fit, newdata = test_df)^2, # élever les prédictions au carré
  median_house_value = test_df$median_house_value # récupérer les valeurs observées
)

head(test_pred)

# Écarter les observations pour lesquelles la prédiction est manquante
test_pred <- test_pred |>
  filter(!is.na(.pred))

# Calculer les métriques sur le jeu de test
eval_res <- tibble(
  rmse = RMSE(y_pred = test_pred$.pred, y_true = test_pred$median_house_value), 
  mae  = MAE(y_pred = test_pred$.pred, y_true = test_pred$median_house_value),
  rsq  = R2_Score(y_pred = test_pred$.pred, y_true = test_pred$median_house_value)
)
eval_res

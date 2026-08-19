#---------------------------------------------------------------------------#
# jour_2_atelier_2_rf.R
# Formation "Premiers pas en Machine Learning avec R" - Pyranhia
#---------------------------------------------------------------------------#

## Lecture des données -------------------------------------------------------
#---------------------------------------------------------------------------#

# Charger les packages
library(tidyverse)
library(ranger)
library(splitTools)
library(MLmetrics)
library(datapyranhia)

# Charger le jeu de données
# <Votre code ici>

## Étape 1 : générer les folds -----------------------------------------------
#---------------------------------------------------------------------------#

# Générer les folds
# <Votre code ici>

## Étape 2 : écrire la fonction pour une itération de la validation croisée --
#---------------------------------------------------------------------------#

# Fonction qui réalise une itération de la validation croisée :
# entraîne un RF sur les indices d'entraînement fournis, prédit sur le reste
predict_fold <- function(train_idx) {
  # Construire fold_train et fold_test
  # <Votre code ici>
  # Entraîner le Random Forest sur fold_train
  # <Votre code ici>
  # Prédire sur fold_test
  # <Votre code ici>
  # Renvoyer un tibble avec les prédictions et les vraies valeurs
  # <Votre code ici>
}

## Étape 3 : appliquer la fonction à chaque fold -----------------------------
#---------------------------------------------------------------------------#

# Appliquer predict_fold() à chaque fold avec une boucle for,
# et rassembler les prédictions obtenues
# <Votre code ici>

## Étape 4 : calculer l'accuracy et la matrice de confusion ------------------
#---------------------------------------------------------------------------#

# Accuracy globale sur les prédictions out-of-fold
# <Votre code ici>

# Matrice de confusion
# <Votre code ici>

classes_rf <- unique(cv_pred$contraceptive_method)

report_rf <- map_dfr(classes_rf, function(cl) {
  truth_binary <- as.numeric(cv_pred$contraceptive_method == cl)
  estimate_binary <- as.numeric(cv_pred$.pred_class == cl)

  tibble(
    class = as.character(cl),
    precision = Precision(
      y_true = truth_binary,
      y_pred = estimate_binary,
      positive = "1"
    ),
    recall = Recall(
      y_true = truth_binary,
      y_pred = estimate_binary,
      positive = "1"
    ),
    f1 = F1_Score(
      y_true = truth_binary,
      y_pred = estimate_binary,
      positive = "1"
    ),
    support = sum(cv_pred$contraceptive_method == cl)
  )
})

report_rf

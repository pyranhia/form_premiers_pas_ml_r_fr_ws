#---------------------------------------------------------------------------#
# jour_2_atelier_1_cart.R
# Formation "Premiers pas en Machine Learning avec R" - Pyranhia
#---------------------------------------------------------------------------#

## Lecture et exploration des données ----------------------------------------
#---------------------------------------------------------------------------#

# Charger les packages
library(tidyverse)
library(rpart)
library(splitTools)
library(MLmetrics)
library(datapyranhia)

# Charger le jeu de données
# <Votre code ici>

# Aperçu rapide de la structure et des valeurs manquantes
# <Votre code ici>

# Visualiser la distribution de la cible
# <Votre code ici>

## Préparation des données ---------------------------------------------------
#---------------------------------------------------------------------------#

# Séparer les données (80/20), stratifié sur la cible
# <Votre code ici>

## Entraînement du modèle ----------------------------------------------------
#---------------------------------------------------------------------------#

# Entraîner le modèle sur le jeu d'entraînement
# <Votre code ici>

## Évaluation du modèle ------------------------------------------------------
#---------------------------------------------------------------------------#

# Prédire sur le jeu d'entraînement et sur le jeu de test
# <Votre code ici>

# Calculer l'accuracy sur chaque jeu
# <Votre code ici>

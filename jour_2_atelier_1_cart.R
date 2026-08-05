#---------------------------------------------------------------------------#
# jour_2_atelier_1_cart.R
# Formation "Premiers pas en Machine Learning avec R" - Pyranhia
# Squelette genere automatiquement depuis doc_jour_2.qmd (Mise en pratique : entraîner et évaluer un CART)
# ATTENTION : fichier genere automatiquement, a relire avant utilisation.
#---------------------------------------------------------------------------#

## Lecture et préparation des données ----------------------------------------
#---------------------------------------------------------------------------#

# Charger les packages
library(tidyverse)
library(rpart)
library(splitTools)
library(MLmetrics)
library(datapyranhia)

# Charger le jeu de données
# <Votre code ici>

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

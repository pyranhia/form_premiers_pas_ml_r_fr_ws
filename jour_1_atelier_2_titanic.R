#---------------------------------------------------------------------------#
# jour_1_atelier_2_titanic.R
# Formation "Premiers pas en Machine Learning avec R" - Pyranhia
#---------------------------------------------------------------------------#

## Chargement et aperçu des données ------------------------------------------
#---------------------------------------------------------------------------#

# Charger les packages
library(tidyverse)
library(datapyranhia)
library(splitTools)
library(MLmetrics)

# Charger les données
# <Votre code ici>

# Aperçu rapide
# <Votre code ici>

## Préparation des données ---------------------------------------------------
#---------------------------------------------------------------------------#

# Préparer les données
# <Votre code ici>

# Vérifier la présence de valeurs manquantes
# <Votre code ici>

# Plot
# <Votre code ici>

## Séparation train/test -----------------------------------------------------
#---------------------------------------------------------------------------#

# Générer le découpage
# <Votre code ici>

# Obtenir les jeux d'entraînement et de test
# <Votre code ici>

# Vérifier le nombre d'observations dans chaque découpage
# <Votre code ici>

## Définition de la formule et ajustement du modèle --------------------------
#---------------------------------------------------------------------------#

# Formule pour prédire `survived` à partir des variables pertinentes
# <Votre code ici>

# Entraînement du modèle
# <Votre code ici>

# Afficher le modèle entraîné
# <Votre code ici>

## Génération des prédictions sur le jeu de test -----------------------------
#---------------------------------------------------------------------------#

# Prédire la probabilité de survie sur le jeu de test
# <Votre code ici>

## De la probabilité à la classe prédite -------------------------------------
#---------------------------------------------------------------------------#

# Appliquer le seuil pour obtenir la classe prédite
# <Votre code ici>

## Matrice de confusion ------------------------------------------------------
#---------------------------------------------------------------------------#

# Calculer la matrice de confusion
# <Votre code ici>

## Calcul des métriques d'évaluation -----------------------------------------
#---------------------------------------------------------------------------#

# Calculer les métriques
# <Votre code ici>

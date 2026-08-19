# Formation — Premiers pas en Machine Learning avec R

Dépôt officiel de la formation **Premiers pas en Machine Learning avec R** proposée par [Pyranhia](https://pyranhia.eu).

Il contient les scripts et fichiers de configuration nécessaires pour suivre les ateliers pratiques.

## Contenu

```
form_premiers_pas_ml_r_fr_ws/
├── jour_1_atelier_1_houses.R    # Régression linéaire
├── jour_1_atelier_2_titanic.R   # Régression logistique
├── jour_2_atelier_1_cart.R      # Arbres de décision (CART)
├── jour_2_atelier_2_rf.R        # Random Forest
└── renv.lock                    # Versions des packages (reproductibilité)
```

Les scripts sont pré-remplis avec des sections `<Votre code ici>` à compléter au fil des exercices. Les corrigés (`_solution.R`) vous seront communiqués à l'issue de chaque atelier.

## Utilisation

Cette formation se déroule sur un serveur RStudio Server mis à disposition par Pyranhia : aucune installation locale n'est requise.

1. Connectez-vous au RStudio Server avec les identifiants qui vous ont été communiqués
2. Ouvrez le terminal (onglet *Terminal* dans RStudio) et clonez ce dépôt :

```bash
git clone https://github.com/pyranhia/form_premiers_pas_ml_r_fr_ws.git
```

3. Ouvrez le projet ainsi cloné pour activer l'environnement `renv`
4. Restaurez les packages :

```r
renv::restore()
```

## Prérequis

Cette formation s'adresse à des personnes **débutant en Machine Learning**, sans expérience préalable requise sur ce sujet. Une première familiarité avec R (bases du langage, `dplyr`, `ggplot2`) est utile mais pas indispensable.

## Ressources associées

- 📦 [datapyranhia](https://github.com/pyranhia/datapyranhia) — datapackage R avec tous les datasets
- ✉️ Contact : [contact@pyranhia.eu](mailto:contact@pyranhia.eu)

## Licence

Le code de ce dépôt est distribué sous licence [MIT](LICENSE.md).

© 2026 Pyranhia — Thelma Panaïotis

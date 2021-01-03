# Instructions TP noté

## Sujet

Chacun(e) d'entre vous s'est vu(e) proposé 2 jeux de données, un cas de régression et un cas de classification.

**IMPORTANT** : vous devez choisir un jeu de données parmi les 2 jeux de données qui vous ont été attribués pour faire le TP (analyse et compte-rendu). Vous avez le choix, vous pouvez faire des essais sur les 2 jeux de données et choisir celui qui vous convient le mieux. Par contre, vous ne pouvez pas en choisir un autre.

Un descriptif des données et de la question posée est fourni pour chaque jeu de données. Vous devez répondre à la question posée dans le descriptif du jeu de données que vous aurez choisi.


## Disponibilité des données

Les fichiers contenant (i) un descriptif des données et du problème posé, (ii) le jeux de données sont disponibles dans ce [dépôt](https://plmlab.math.cnrs.fr/gdurif_teaching/polytech_ig5_regression_tutorial) en ligne, et plus spécifiquement dans le dossier [data](https://plmlab.math.cnrs.fr/gdurif_teaching/polytech_ig5_regression_tutorial/-/tree/master/data).

Vous devez récupérer les 2 fichiers (`.md` pour le descriptif et `.csv` pour les données) pour chacun des 2 jeux de données qui vont été attribués.


## Analyse des données

Pour répondre au problème posé, vous pourrez utiliser l'une ou l'autre des différentes méthodes (et le code associé) vues en cours et TP pour résoudre des problèmes de régression ou classification.

Vous pourrez vous poser des questions sur les performances en prédiction, la sélection de modèles, etc.

**Important** :

- vous pouvez également utiliser toutes méthodes ou approches statistiques/machine learning de votre choix (vues en cours ou non), en prenant soin d'expliquer votre démarche.

- l'innovation et l'inventivité seront un bonus. Néanmoins, il faudra expliquer votre démarche d'analyse. En cas de doutes, les approches vues en cours seront à privilégier.

- pour vos analyses, vous pouvez utiliser le langage de votre choix (R, Python, scala, etc.) à la condition de **pas utiliser** un langage propriétaire (matlab, sas, etc.). Si vous n'êtes pas à l'aise avec un autre langage, il sera préférable d'utiliser R.

---

## Rendu attendu

Vous devrez rendre:

- un **compte-rendu** (au format pdf) décrivant le jeu de données, le problème posé, et votre analyse pour répondre au problème posé.

- un **fichier** (ou un ensemble de fichiers) texte contenant le code que vous aurez utilisé pour répondre au problème posé, éventuellement sous la forme d'un dépôt Git.

Un formulaire de dépôt sera ouvert sur le moodle du cours. La **date limite** de dépôt (début janvier) sera précisé ultérieurement.

**Attention** : le dépôt en ligne sera fermé automatiquement après la date/heure limite. Tout projet non rendu à cette date ou envoyé ultérieurement (par exemple par mail) sera **ignoré**. 


## Recommandations

1. Vous pouvez inclure dans votre compte-rendu tout support, extraits de code, tableaux, figures, que vous jugerez utile pour illustrer votre démarche.

2. Idéalement, votre code sera commenté pour décrire (succintement) ce que vous faites.

3. La qualité de la rédation et de la forme du compte-rendu seront pris en compte dans la notation.

4. Le fond du compte-rendu sera bien sur pris en compte dans la notation, notamment la rigueur méthodologique, la clarté de l'explication, et aussi (mais pas seulement) l'originalité.

5. En fonction de leur type, certaines variables (colonnes) de certains jeux de données ne sont pas utiles pour un modèle de régression linéaire ou logistique (suivant le problème). Dans certains cas, vous ne devrez pas utiliser toutes les variables du jeu de données, ce sera à vous de choisir quelles variables vous utiliserez dans vos modèles.

Pour avoir une idée du type des différentes variables dans le jeu de données, vous pouvez utiliser les fonctions `str` ou `head` sur le tableau de données, voire faire une étude descriptive plus approfondies de certaines colonnes à l'aide des fonctions `table` ou `summary`, ou autres.

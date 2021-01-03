Fichier `BreastCancer.csv`

Chargement des données:
```R
BreastCancer <- read.table("BreastCancer.csv", sep = ";", header=TRUE)
```

On dispose de données concernant des personnes chez qui on a détécté une tumeur de la poitrine. Une tumeur peut être "bénigne" (sans danger) ou "maligne" (risque de dégénération en cancer).

Chez 683 personnes, on a mesuré certaines caractéristiques physiologiques de leur tumeur, ainsi que le statut de la tumeur: bénine (classe 0) ou maligne (classe 1) indiqué par la variable `Class`.

```
# Cl.thickness - Clump Thickness
# Cell.size - Uniformity of Cell Size
# Cell.shape - Uniformity of Cell Shape
# Marg.adhesion - Marginal Adhesion
# Epith.c.size - Single Epithelial Cell Size
# Bare.nuclei - Bare Nuclei
# Bl.cromatin - Bland Chromatin
# Normal.nucleoli - Normal Nucleoli
# Mitoses - Mitoses
# Class - Tumor status: "benign" (class 0) or "malignant" (class 1)
```

Question : Peut-on prédire le statut de la tumeur à partir des différentes mesures ?

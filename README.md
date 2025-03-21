# Recepten

Overzichtje van recepten met handige doorverwijzingen,
mits goed ingevuld.

woont voorlopig op: <https://recepten.rmhogervorst.nl/>
Gebouwd op hugo met theme ['gochowdown'](https://github.com/seanlane/gochowdown).

Er zijn recepten en componenten. Gewone recepten hebben een beschrijving en ingredienten etc
voorbeeld: <https://recepten.rmhogervorst.nl/recipes/pittige-linzensoep-met-vegetarische-worst/>
recepten kunnen ook worden opgebouwd uit componenten: <https://recepten.rmhogervorst.nl/recipes/couscous-ras-el-hanout-met-linzen/> bijvoorbeeld.
Je kunt dan snel verschillende recepten maken door componenten te hergebruiken. Bijvoorbeeld:

<https://recepten.rmhogervorst.nl/recipes/pasta-spinazie-zuivelspread-light-kipstuckjes-en-komkommersalade/>
bestaat uit pasta koken, komkommersalade en spinazie-zuivelspread-kipstuckjes.
Maar je kunt het ook met couscous of rijst doen.

Voeg recept toe

`hugo new --kind recipe-simple recipes/name-of-your-new-recipe-here`, replacing name-of-your-new-recipe-here

Voor een recept uit componenten. voeg componenten toe

`hugo new --kind recipe-component components/name-of-your-new-recipe-here`
en voeg voor het hoofd recept
`hugo new --kind component-combined recipes/name-of-your-new-recipe-here`
en voeg in components: de componenten toe

Comprimeren van images:

```
# Comprimeren van png files
find . -name "*.png" -exec optipng '{}' \;
find . -name "*.jpg" -exec jpegoptim --all-progressive --strip-all '{}' \;
```



## Aanpassingen
Ik heb getracht wat meer met de ingredienten te doen. en heb een restfull api toegevoegd waardoor je de gerechten ook als json kunt downloaden / app erop kunt bouwen.

In elk recept staan:
- ingredients: zet hier de ingredienten in enkelvoud en zonder aantallen: aardappel, kokosmelk
- ingredienten: zet hier de hoeveelheden wel bij: 2 uien etc.
- category: type recept, nu in het engels "dinner", "entree", or "dessert".
- cuisine: keuken: Marrokaans, Italiaans, Spaans, Eigen (Zelfgemaakt), Fusion (mix van stijlen)
- tags: Meestal  - vegetarisch, vaak - histamine-arm, - slank, - zomer, gebruik niet dezelfde als type gerecht.
- yield: (voor hoeveel personen, of hoeveelheden, wordt nu niet gebruikt)
- prepTime: voorbereidings tijd in minuten, wordt nu onder beschrijving weergeven
- cookTime: totale tijd in minuten, wordt nu onder beschrijving weergeven
- directions: stap voor stap aanwijzingen
- type_gerecht:  AVG, pasta, ovenschotel, soep, curry, wrap, etc.

De ingredients en directions worden getoond in aanvink blokjes

Rstudio blogdown kan verschillende github versies van hugo installeren. run met die versie

`~/.local/share/Hugo/0.108.0/hugo serve`
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

`hugo new --kind recipe-bundle recipes/name-of-your-new-recipe-here`, replacing name-of-your-new-recipe-here

Voor een recept uit componenten. voeg componenten toe

`hugo new --kind recipe-component components/name-of-your-new-recipe-here`
en voeg voor het hoofd recept zoals recept en vervang de instruction list met component list
met de titels / namen van recepten

## Aanpassingen
Ik heb getracht wat meer met de ingredienten te doen. en heb een restfull api toegevoegd waardoor je de gerechten ook als json kunt downloaden / app erop kunt bouwen.

In elk recept staan:
- ingredients: zet hier de ingredienten in enkelvoud en zonder aantallen: aardappel, kokosmelk
- ingredienten: zet hier de hoeveelheden wel bij: 2 uien etc.
- category: type recept, nu in het engels "dinner", "entree", or "dessert".
- cuisine: keuken: Marrokaans, Italiaans, Spaans, Eigen (Zelfgemaakt), Fusion (mix van stijlen)
- tags: Meestal  - vegetarisch, vaak - histamine-arm, - slank, - zomer, - soep, - curry
- yield: (voor hoeveel personen, of hoeveelheden, wordt nu niet gebruikt)
- prepTime: voorbereidings tijd in minuten, wordt nu onder beschrijving weergeven
- cookTime: totale tijd in minuten, wordt nu onder beschrijving weergeven
- directions: stap voor stap aanwijzingen 

De ingredients en directions worden getoond in aanvink blokjes
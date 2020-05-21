# MODELE CONCEPTUEL

Cette base de données sera en Anglais pour deux raisons principales :
  -	Toutes les informations que l’on traite sont en anglais.
  -	On travaille sur une base de données à l’échelle international, il est donc censé d’utiliser la langue officielle international.

_Légende :_
-

On met en titre la relation, puis on y rajoute ses attributs en-dessous. 

Les attributs avec [PK] à côté de leurs noms seront les clés de la relation.

Les attributs avec [FK] à côté de leurs noms sont les clés étrangère des relations.


_Relations et composantes :_
-

**EVENT :**
- Date
- Location
- Event ID [PK]
- Aircraft number [PK]

**EVENT DETAILS :**
- Injurity Severity
- Investigation Type
- Aircraft Damage
- Weather Condition
- Broad Phase
- Event ID [PK]
- Accident number [FK]

 **AIRPORT :**
 - Name
 - Country
 - Airport code [PK]
 - Registration aircraft [FK]
 - Accident number [FK]
 - Event ID [FK]
 
 **AIRCRAFT :**
 - Aircraft category
 - Model
 - Registration aircraft [PK]
 - Accident number [FK]
 - Event ID [FK]
 
 **AIRCRAFT DETAILS :**
 - Number of engine
 - Engine type
 - Maker
 - FAR
 - Schedule
 - Accident number [PK]
 - Event ID [FK]
 
 
 


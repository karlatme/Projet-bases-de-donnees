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
- Location [FK]
- Event ID [PK]
- Aircraft damage
- Accident number
- Injurity Severity
- Investigation Type
- Weather condition
- Broad Phase


 **AIRPORT :**
 - Name
 - Country
 - Airport code [PK]


 **AIRCRAFT :**
 - Aircraft category
 - Model
 - Registration number [PK]
 - Number Engine
 - Engine Type
 - Make
 - FAR description
 - Schedule
 - Event ID [FK]
 - Code [FK]
 
 **LOCATIONS :**
 - Location [PK]
 - Latitude
 - Longitude

 
 
 


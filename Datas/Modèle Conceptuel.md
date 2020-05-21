# MODELE CONCEPTUEL

Cette base de données sera en Anglais pour deux raisons principales :
  -	Toutes les informations que l’on traite sont en anglais.
  -	On travaille sur une base de données à l’échelle international, il est donc censé d’utiliser la langue officielle international.

_Légende :_ 
On met en titre la relation, puis on y rajoute ses attributs en-dessous. 
Les attributs avec une étoile à côté de leurs noms seront les clés de la relation.


_Relations et composantes :_

Accident Information
  -	Event ID
  - Date
  -	Location
  - Country
  -	Latitude
  - Longitude

Aircraft
  -	Category
  -	Engine Type (le type du moteur)
  -	Damage 
    o	Minor, Substantial or Destroyed (le niveau de dommage due à l’accident)

Event details
  -	Investigation Type
    o	Accident or Incident (on entend par incident un problème technique)
  -	Injury Type 
    o	Fatal or Non-Fatal (s’il y a eu des victimes ou non)
  - Weather Condition 
   o	VMC or IMC (bonne ou mauvaise condition météorologique) 
  -	Broad Phase of fligth 
    o	Il y aura également plusieurs possibilités.

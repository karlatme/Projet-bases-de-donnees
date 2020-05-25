# -*- coding: utf-8 -*-

from appli.models import Locations, Event, Airport, Aircraft

import pandas as pd
import datetime

data=pd.read_csv("AviationData_f1.csv", sep=";", engine='python')


#Table Locations

for i in range (len(data)) :
    a = Locations(Location=data.iloc[i][4], Latitude=data.iloc[i][6], Longitude=data.iloc[i][7] )
    a.save()


#Table Event 

for i in range (len(data)) :
    b=Event(Event_Id=data.iloc[i][0], Accident_number=data.iloc[i][2],Date=datetime.datetime(data.iloc[i][3]), Injurity_severity=data.iloc[i][10],Investigation_type=data.iloc[i][1], Aircraft_damage=data.iloc[i][12], Weather_condition=data.iloc[i][25],Broad_phase=data.iloc[i][26])
    b.save()



# Table Airport
    
for i in range (len(data)):
    c = Airport(Code=data.iloc[i][8], Name=data.iloc[i][9], Country=data.iloc[i][5])
    c.save()



#Table Aircraft
    
for i in range (len(data)):
    d = Aircraft(Registration_number=data.iloc[i][13], Aircraft_category=data.iloc[i][12], Model=data.iloc[i][15], Number_engine=data.iloc[i][17], Engine_type=data.iloc[i][18], Make=data.iloc[i][14], FAR=data.iloc[i][19], Schedule=data.iloc[i][20])
    d.save()





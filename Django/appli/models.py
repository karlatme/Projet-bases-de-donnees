from django.db import models

# Create your models here.

class Locations(models.Model):
   Location = models.CharField(max_length=50,primary_key=True)
   Longitude = models.FloatField(max_length=10)
   Latitude = models.FloatField(max_length=10)


class Event(models.Model) :
   Event_Id = models.CharField(max_length=14, primary_key=True)
   Accident_number = models.CharField(max_length=10)
   Date = models.DateTimeField()
   Injurity_severity = models.CharField(max_length=10)
   Investigation_type = models.CharField(max_length=10)
   Aircraft_damage = models.TextField(max_length=15)
   Weather_condition = models.CharField(max_length=3)
   Broad_phase = models.CharField(max_length=15)
   location = models.ForeignKey(Locations, on_delete=models.CASCADE)


class Airport(models.Model) :
    Code = models.CharField(max_length=3, primary_key=True)
    Name = models.CharField(max_length=50)
    Country = models.CharField(max_length=50)


class Aircraft(models.Model) :
    Registration_number = models.CharField(max_length=8, primary_key=True)
    Aircraft_category = models.CharField(max_length=20)
    Model = models.CharField(max_length=20)
    Number_engine = models.IntegerField()
    Engine_type = models.CharField(max_length=15)
    Make = models.CharField(max_length=30)
    FAR = models.CharField(max_length=30)
    Schedule = models.CharField(max_length=15)
    event_id = models.ForeignKey(Event, on_delete=models.CASCADE)
    code = models.ForeignKey(Airport, on_delete=models.CASCADE)






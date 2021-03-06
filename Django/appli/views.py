from django.shortcuts import render

from appli.models import Locations, Aircraft, Airport, Event
# Create your views here.


def locations(request):
    obj = Locations#.objects.get()
    location = [
        {'loc': obj.Location},
        {'long': obj.Longitude},
        {'lat': obj.Latitude},
    ]
    return render(request,'locations.html', {location})

def events(request):
    obj = Event.objects.get()
    events = [
        {'id': obj.Event_Id},
        {'accident_nb': obj.Accident_number},
        {'date': obj.Date},
        {'inj_sev': obj.Injurity_severity},
        {'inves_type': obj.Investigation_type},
        {'air_damage': obj.Aircraft_damage},
        {'weath_cond': obj.Weather_condition},
        {'broad_phase': obj.Broad_phase},
    ]
    return render(request,'event.html',{events})

def airports(request):
    obj = Airport.objects.get()
    airports = [
        {'code': obj.Code},
        {'name': obj.Name},
        {'country': obj.Country},
    ]
    return render(request,'airport.html', {airports})

def aircrafts(request):
    obj = Aircraft.objects.get()
    aircrafts = [
        {'reg_nb': obj.Registration_number},
        {'air_cat': obj.Aircraft_category},
        {'model': obj.Model},
        {'nb_engine': obj.Number_engine},
        {'engine_type': obj.Engine_type},
        {'make': obj.Make},
        {'far': obj.FAR},
        {'schedule': obj.Schedule},
    ]
    return render(request,'aircraft.html', {aircrafts})

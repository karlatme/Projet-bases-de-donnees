#from django.http import HttpResponse
from django.shortcuts import render
#from django.template import loader
from .models import Locations, Aircraft, Airport, Event

'''
def home(request):
    """ Exemple de page non valide au niveau HTML pour que l'exemple soit concis """
    return HttpResponse("""
        <h1>Bienvenue sur notre application sur les incidents d'aviation</h1>
    """)
'''

def index(request):
    #template = loader.get_template('appli/index.html')
    return render(request, 'appli/index.html')#HttpResponse(message)#HttpResponse(template.render(request=request))

def credit(request):
    button = request.POST.get("submit")
    return render(request, 'appli/crédits.html', button)

def recherche(request):
    return render(request, 'appli/recherche.html')


# Create your views here.


def locations(request):
    obj = Locations.objects.get()
    location = [
        {'loc': obj.Location},
        {'long': obj.Longitude},
        {'lat': obj.Latitude},
    ]
    return render(request,'locations.html', {location})

def events(request):
    obj = Event.objects.get()
    event = [
        {'id': obj.Event_Id},
        {'accident_nb': obj.Accident_number},
        {'date': obj.Date},
        {'inj_sev': obj.Injurity_severity},
        {'inves_type': obj.Investigation_type},
        {'air_damage': obj.Aircraft_damage},
        {'weath_cond': obj.Weather_condition},
        {'broad_phase': obj.Broad_phase},
    ]
    return render(request,'event.html',{event})

def airports(request):
    obj = Airport.objects.get()
    airport = [
        {'code': obj.Code},
        {'name': obj.Name},
        {'country': obj.Country},
    ]
    return render(request,'airport.html', {airport})

def aircrafts(request):
    obj = Aircraft.objects.get()
    aircraft = [
        {'reg_nb': obj.Registration_number},
        {'air_cat': obj.Aircraft_category},
        {'model': obj.Model},
        {'nb_engine': obj.Number_engine},
        {'engine_type': obj.Engine_type},
        {'make': obj.Make},
        {'far': obj.FAR},
        {'schedule': obj.Schedule},
    ]
    return render(request,'aircraft.html', {aircraft})


        
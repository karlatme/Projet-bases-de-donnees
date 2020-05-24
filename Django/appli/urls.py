from django.urls import path
#from django.conf.urls import url

from . import views

urlpatterns = [
    path('index/', views.index),
    path('crédits/', views.credit, name = 'crédits'),
    path('recherche/', views.recherche, name = 'recherche'),
    path('airport/', views.airports, name = 'Aéroports'),
    path('events/', views.events, name = 'Evénements'),
    path('locations/', views.locations, name = 'Localisation'),
    path('aircraft/', views.aircrafts, name = 'Avions'),
    #url(r'^search/$', views.search),
]
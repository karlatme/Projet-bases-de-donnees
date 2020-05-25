from django.contrib import admin
from django.urls import path, include

from . import views

urlpatterns = {
    path('', views.index),
    path('credits/', views.credit),
    path('recherche/', views.recherche),
    path('appli/airports/', views.airports),
    path('appli/aircrafts/', views.aircrafts),
    path('appli/events/', views.events),
    path('appli/locations/', views.locations),
    path('admin/', admin.site.urls),
}
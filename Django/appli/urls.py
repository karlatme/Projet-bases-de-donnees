from django.contrib import admin
from django.urls import path, include

from . import views

urlpatterns = {
   path('airport/', views.airports),
   path('events/', views.events),
   path('locations/', views.locations),
   path('aircraft/', views.aircrafts),
   path('admin/', admin.site.urls),
}
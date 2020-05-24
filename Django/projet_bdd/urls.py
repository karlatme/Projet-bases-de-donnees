"""projet_bdd URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
#from django.conf import settings
from django.urls import include, path
from django.contrib import admin

from appli import views

urlpatterns = [
    path('', views.index),
    path('crédits/', views.credit, name = 'crédits'),
    path('recherche/', views.recherche, name = 'recherche'),
    path('airport/', views.airports, name = 'Aéroports'),
    path('events/', views.events, name = 'Evénements'),
    path('locations/', views.locations, name = 'Localisation'),
    path('aircraft/', views.aircrafts, name = 'Avions'),
    path('appli/', include('appli.urls')),
    path('admin/', admin.site.urls),
]
'''
if settings.DEBUG:
    import debug_toolbar
    urlpatterns = [
        path('__debug__/', include(debug_toolbar.urls)),
    ] + urlpatterns
'''
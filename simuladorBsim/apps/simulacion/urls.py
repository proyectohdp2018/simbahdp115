
from django.urls import path
from apps.simulacion import views
urlpatterns = [
    path('', views.index, name="index"),
]
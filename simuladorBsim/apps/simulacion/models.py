from django.db import models
from apps.registro.models import usuario
from apps.produccion.models import Cosecha
# Create your models here.
class SimulacionCostoProduccion (models.Model):
	tipoSuelo = models.CharField(max_length = 30)
	profundidad = models.DecimalField(max_digits = 5, decimal_places = 2)
	sistemaDrenaje = models.CharField(max_length = 20)
	plagas =  models.CharField(max_length = 20)
	deshoje =  models.CharField(max_length = 20)
	embolse =  models.CharField(max_length = 20)
	lvlMar = models.DecimalField(max_digits = 5, decimal_places = 2)
	temperatura = models.DecimalField(max_digits = 5, decimal_places = 2)
	pluviosidad = models.DecimalField(max_digits = 5, decimal_places = 2)
	luminosidad = models.DecimalField(max_digits = 5, decimal_places = 2)
	densidadSiembra = models.DecimalField(max_digits = 5, decimal_places = 2)
	usuarioSim = models.ForeignKey(usuario,null = True, blank = True, on_delete = models.CASCADE)
	cosecha = models.ForeignKey(Cosecha,null = True, blank = True, on_delete = models.CASCADE)
	fechaSim= models.DateField(null = True)


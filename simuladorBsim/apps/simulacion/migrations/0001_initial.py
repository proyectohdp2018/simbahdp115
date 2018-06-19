# Generated by Django 2.0.6 on 2018-06-18 05:03

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('registro', '0001_initial'),
        ('produccion', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='SimulacionCostoProduccion',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tipoSuelo', models.CharField(max_length=20)),
                ('fosforo', models.DecimalField(decimal_places=4, max_digits=5, null=True)),
                ('potasio', models.DecimalField(decimal_places=4, max_digits=5, null=True)),
                ('calcio', models.DecimalField(decimal_places=4, max_digits=5, null=True)),
                ('magnesio', models.DecimalField(decimal_places=4, max_digits=5, null=True)),
                ('boro', models.DecimalField(decimal_places=4, max_digits=5, null=True)),
                ('zinc', models.DecimalField(decimal_places=4, max_digits=5, null=True)),
                ('ph', models.DecimalField(decimal_places=4, max_digits=5, null=True)),
                ('profundidad', models.DecimalField(decimal_places=4, max_digits=5)),
                ('sistemaDrenaje', models.CharField(max_length=20)),
                ('plagas', models.CharField(max_length=20)),
                ('deshoje', models.CharField(max_length=20)),
                ('embolse', models.CharField(max_length=20)),
                ('lvlMar', models.DecimalField(decimal_places=4, max_digits=5)),
                ('temperatura', models.DecimalField(decimal_places=4, max_digits=5)),
                ('pluviosidad', models.DecimalField(decimal_places=4, max_digits=5)),
                ('luminosidad', models.DecimalField(decimal_places=4, max_digits=5)),
                ('fechaSim', models.DateField(null=True)),
                ('puntajeSimu', models.IntegerField(null=True)),
                ('numHectareas', models.DecimalField(decimal_places=4, max_digits=5, null=True)),
                ('numPlantas', models.IntegerField(null=True)),
                ('cosecha', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='produccion.Cosecha')),
                ('usuarioSim', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='registro.usuario')),
            ],
        ),
    ]

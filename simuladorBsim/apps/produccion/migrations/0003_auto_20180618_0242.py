# Generated by Django 2.0.6 on 2018-06-18 09:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('produccion', '0002_auto_20180618_0234'),
    ]

    operations = [
        migrations.AlterField(
            model_name='cosecha',
            name='kgCosechados',
            field=models.IntegerField(null=True),
        ),
        migrations.AlterField(
            model_name='cosecha',
            name='utilidadEsperada',
            field=models.IntegerField(null=True),
        ),
    ]

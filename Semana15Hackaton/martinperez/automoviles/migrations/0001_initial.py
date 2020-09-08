# Generated by Django 3.1.1 on 2020-09-07 05:02

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='marca',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('descripcion', models.CharField(max_length=200)),
                ('activo', models.BooleanField(choices=[(True, 'ACTIVO'), (False, 'INACTIVO')], default=True)),
            ],
            options={
                'db_table': 'marca',
            },
        ),
        migrations.CreateModel(
            name='tipo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('descripcion', models.CharField(max_length=200)),
                ('activo', models.BooleanField(choices=[(True, 'ACTIVO'), (False, 'INACTIVO')], default=True)),
            ],
            options={
                'db_table': 'tipo',
            },
        ),
        migrations.CreateModel(
            name='automovil',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('descripcion', models.CharField(max_length=200)),
                ('activo', models.BooleanField(choices=[(True, 'ACTIVO'), (False, 'INACTIVO')], default=True)),
                ('marca', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='automoviles.marca')),
                ('tipo', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='automoviles.tipo')),
            ],
            options={
                'db_table': 'automovil',
            },
        ),
    ]
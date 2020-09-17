# Generated by Django 3.1.1 on 2020-09-16 03:03

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='album',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('album', models.CharField(max_length=200)),
            ],
        ),
        migrations.CreateModel(
            name='artista',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('artista', models.CharField(max_length=200)),
            ],
        ),
        migrations.CreateModel(
            name='cancion',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cancion', models.CharField(max_length=200)),
                ('album', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='hrkapp.album')),
            ],
        ),
        migrations.CreateModel(
            name='catalogo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('catalogo', models.CharField(max_length=200)),
                ('cancion', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='hrkapp.cancion')),
            ],
        ),
        migrations.CreateModel(
            name='tipomusica',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tipomusica', models.CharField(max_length=200)),
            ],
        ),
        migrations.CreateModel(
            name='usuario',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=200)),
            ],
        ),
        migrations.CreateModel(
            name='playlist',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('playlist', models.CharField(max_length=200)),
                ('catalogo', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='hrkapp.catalogo')),
                ('nombre', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='hrkapp.usuario')),
            ],
        ),
        migrations.AddField(
            model_name='catalogo',
            name='tipomusica',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='hrkapp.tipomusica'),
        ),
        migrations.AddField(
            model_name='album',
            name='artista',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='hrkapp.artista'),
        ),
    ]
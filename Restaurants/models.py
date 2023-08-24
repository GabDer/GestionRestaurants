from django.db import models
from django.contrib.auth.models import User
import os
from django.core.validators import MaxValueValidator, MinValueValidator
# Create your models here.

def UploadPath(instance, filename):
    filename_base, filename_ext = os.path.splitext(filename)
    return '{}{}'.format(
        filename_base,
        filename_ext.lower(),
    )

class Type(models.Model):
    nom               = models.CharField(max_length=20)
    def __str__(self):
        return self.nom
    
class Ville(models.Model):
    nom               = models.CharField(max_length=40)
    def __str__(self):
        return self.nom
    
class Restaurant(models.Model):
    nom               = models.CharField(max_length=40)
    description       = models.TextField(default='desc')
    image             = models.ImageField(upload_to = UploadPath)
    ville             = models.ForeignKey(Ville,on_delete=models.DO_NOTHING)
    type              = models.ForeignKey(Type,on_delete=models.DO_NOTHING)
    def __str__(self):
        return self.nom
    
class Commentaire(models.Model):
    restaurant        = models.ForeignKey(Restaurant,on_delete=models.DO_NOTHING)
    userName          = models.ForeignKey(User,on_delete=models.DO_NOTHING)
    titre             = models.CharField(max_length=60)
    texte             = models.TextField()   
    note              = models.IntegerField(default=0,
                                            validators=[
                                            MaxValueValidator(5),
                                            MinValueValidator(1)
        ])       
    date              = models.DateField(auto_now_add=True)
    def __str__(self):
        return self.restaurant.nom
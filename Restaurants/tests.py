from django.db import models
from django.contrib.auth.models import User
# Create your models here.

class TypeResto(models.Model):
    nomType        = models.CharField(max_length=20)

class Restaurant(models.Model):
    nom            = models.CharField(max_length=25)
    ville          = models.CharField(max_length=25)
    type           = models.ForeignKey(TypeResto,on_delete=models.DO_NOTHING)
    
class Commentaire(models.Model):
    Restaurant     = models.ForeignKey(Restaurant,on_delete=models.DO_NOTHING)
    userName       = models.ForeignKey(User,on_delete=models.DO_NOTHING)
    commentaire    = models.TextField()   
    note           = models.IntegerField(default=0)       
    date           = models.DateField(auto_now_add=True)
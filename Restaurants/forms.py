from django import forms
from .models import Restaurant, Commentaire

class RestaurantForm(forms.ModelForm):
    class Meta:
        model = Restaurant
        fields = "__all__"
        labels = {'nom': 'Nom du restaurant :',
                  'description': 'Description :',
                  'ville': 'Ville :',
                  'type': 'Type :',
                  'image': 'Image :'}

class CommentaireForm(forms.ModelForm):
    class Meta:
        model = Commentaire
        fields = ["restaurant","userName","titre","texte","note"]
        widgets = {'restaurant': forms.HiddenInput(), 'userName':forms.HiddenInput()}
        
        


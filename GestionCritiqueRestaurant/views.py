from django.http import HttpResponse
from django.shortcuts import render

def accueilView(request):
    return render(request,"accueil.html")
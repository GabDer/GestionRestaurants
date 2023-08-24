from django.shortcuts import render
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from .models import Restaurant, Ville, Type, Commentaire
from .forms import RestaurantForm, CommentaireForm
from django.urls import reverse_lazy, reverse
import numpy as np
from django.contrib.auth.mixins import UserPassesTestMixin

def restaurantsBytypeAfficheView(request):
    if request.method =='POST':
        if request.POST['ville'] !='':
            laVille = Ville.objects.get(nom=request.POST['ville'])
            lesRestaurants = Restaurant.objects.filter(ville = laVille)
            if request.POST['type'] != 'Aucune préférence':
                lesRestaurantsVille = lesRestaurants.filter(type = request.POST['type'])
                return render(request, "restaurants.html", context={'restaurants': lesRestaurantsVille, 'accueil': True, 'typeResto':Type.objects.all()})
            return render(request, "restaurants.html", context={'restaurants': lesRestaurants, 'accueil': True, 'typeResto':Type.objects.all()})
        if request.POST['type'] != 'Aucune préférence':
            lesRestaurants = Restaurant.objects.filter(type = request.POST['type'])
            return render(request, "restaurants.html", context={'restaurants': lesRestaurants, 'accueil': True, 'typeResto':Type.objects.all()})
    lesRestaurants = Restaurant.objects.all()
    return render(request, "restaurants.html", context={'restaurants': lesRestaurants, 'accueil': True, 'typeResto':Type.objects.all()})

class restaurantsAfficheView(ListView):
    model = Restaurant
    template_name = 'restaurants.html'
    context_object_name = 'restaurants'
    
    def get_context_data(self, **kwargs):
        context = super(restaurantsAfficheView, self).get_context_data(**kwargs)
        context['typeResto'] = Type.objects.all()
        context['accueil'] = True
        return context
   
class restaurantDetailView(DetailView):
    model = Restaurant
    template_name = 'detailsRestaurant.html'
    context_object_name = 'leRestaurant'
    def get_context_data(self, **kwargs):
        context = super(restaurantDetailView, self).get_context_data(**kwargs)
        context['typeResto'] = Type.objects.all()
        return context

class typeAfficheView(ListView):
    model = Type
    template_name = 'filtrage.html'
    context_object_name = 'typeResto'
    
class modificationRestaurantView(UpdateView):
    model = Restaurant
    template_name = 'modificationRestaurant.html'
    form_class = RestaurantForm
    success_url = reverse_lazy('listeRestaurants')
    
class suppressionRestaurantView(UserPassesTestMixin, DeleteView):
    model = Restaurant
    template_name = 'supprimerRestaurant.html'
    context_object_name = 'leRestaurant'
    success_url = reverse_lazy('listeRestaurants')
    
    def test_func(self):
        return self.request.user.groups.filter(name='AdminTotal').exists()
    
class suppressionCommentaireView(UserPassesTestMixin, DeleteView):
    model = Commentaire
    template_name = 'supprimerCommentaire.html'
    context_object_name = 'leCommentaire'
    
    def get_success_url(self):
           self.object = self.get_object()
           return reverse("detailRestaurant", kwargs={"pk": self.object.restaurant.id})
    
    def test_func(self):
        return self.request.user.groups.filter(name='AdminTotal').exists()
    
class ajoutRestaurantView(CreateView):
    model = Restaurant
    template_name = 'ajoutRestaurant.html'
    form_class = RestaurantForm
    success_url = reverse_lazy('listeRestaurants')
       
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        return context

    

class ajoutCommentaireView(CreateView):
    model = Commentaire
    template_name = 'ajoutCommentaire.html'
    form_class = CommentaireForm
    
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        return context
    
    def get_success_url(self):
           pk = self.kwargs["pk"]
           return reverse("detailRestaurant", kwargs={"pk": pk})
       
    def get_initial(self):
        pk = self.kwargs["pk"]
        initial = super().get_initial()
        initial['restaurant'] = Restaurant.objects.get(id=pk)
        initial['userName'] = self.request.user
        return initial
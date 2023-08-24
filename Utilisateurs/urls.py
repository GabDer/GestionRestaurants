from django.urls import path
from .views import Enregistrement
from django.contrib.auth import views as authentification_views

urlpatterns = [
    path('Enregistrement/', Enregistrement, name='enregistrement'),
    path('login/', authentification_views.LoginView.as_view(template_name='login.html'), name='login'),
    path('logout/', authentification_views.LogoutView.as_view(template_name='logout.html'), name='logout'),
]
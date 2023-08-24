from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
from .views import restaurantsAfficheView, restaurantDetailView, modificationRestaurantView, suppressionRestaurantView, suppressionCommentaireView, ajoutRestaurantView, ajoutCommentaireView , restaurantsBytypeAfficheView
from django.contrib.auth.decorators import login_required


urlpatterns = [
    path('', restaurantsAfficheView.as_view(), name='listeRestaurants'),
    path('Filtrage', restaurantsBytypeAfficheView, name='filtrage'),
    path('Detail/<str:pk>/', restaurantDetailView.as_view(), name='detailRestaurant'),
    path('AjoutRestaurant/', login_required(ajoutRestaurantView.as_view()), name='ajoutRestaurant'),
    path('AjoutCommentaire/<str:pk>/', login_required(ajoutCommentaireView.as_view()), name='ajoutCommentaire'),
    path('ModificationRestaurant/<str:pk>/', login_required(modificationRestaurantView.as_view()), name='modificationRestaurant'),
    path('SuppressionRestaurant/<str:pk>/', login_required(suppressionRestaurantView.as_view()), name='suppressionRestaurant'),
    path('SuppressionCommentaire/<str:pk>/', login_required(suppressionCommentaireView.as_view()), name='suppressionCommentaire'),
]
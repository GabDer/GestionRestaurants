from django.contrib import admin

from .models import Restaurant
from .models import Type
from .models import Commentaire
from .models import Ville

# Register your models here.

admin.site.register(Restaurant)
admin.site.register(Type)
admin.site.register(Commentaire)
admin.site.register(Ville)

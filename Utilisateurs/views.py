from django.shortcuts import render, redirect
from django.contrib.auth.forms import UserCreationForm
from django.contrib import messages
from django.contrib.auth.models import Group

def Enregistrement(request):
    if request.method == 'POST':  
        form = UserCreationForm(request.POST)
        if form.is_valid():
            user = form.save()
            username = form.cleaned_data.get('username')
            group = Group.objects.get(name='Utilisateur')
            user.groups.add(group)
            messages.success(request,f'Bonjour {username}, vous êtes enregistré !')
            return redirect('login')
    else:
        form = UserCreationForm()
    return render(request, 'enregistrement.html', {'form':form})
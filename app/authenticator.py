from django.shortcuts import redirect
from app.models import User
from django.contrib import messages

class Authenticator:
    def valid_user(function):
        def wrap(request):
            
            try:
                User.objects.get(email=request.session['email'])
                return function (request)
               
            except:
                
                return redirect('/login')
        return wrap
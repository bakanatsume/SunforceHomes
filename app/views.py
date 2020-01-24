from django.shortcuts import render,redirect
from app.models import User
from app.forms import UserForm  
from django.http import HttpResponse,JsonResponse
from app.authenticator import Authenticator
from django.contrib import messages


@Authenticator.valid_user
def index(request):
    limit=3
    page=1
    if request.method=="POST":
        if "next" in request.POST:
            page=(int(request.POST['page'])+1)
        elif "back" in request.POST:
            page=(int(request.POST['page'])-1)
        tempoffset=page-1    
        offset=tempoffset*page
        users=User.objects.raw("select * from user limit 3 offset %s",[offset])
    else:
        users=User.objects.raw("select * from user limit 3 offset 0")

    return render(request,"index.html",{'users':users,'page':page})

def create(request):
    if request.method=="POST":
        form=UserForm(request.POST,request.FILES)
        form.save()
        return redirect('/')
    else:
        form=UserForm()
    return render(request,'create.html',{'form':form})


def edit(request,id):
    user = User.objects.get(id=id)
    return render(request,'edit.html',{'user':user})

def update(request,id):
    user=User.objects.get(id=id)
    form=UserForm(request.POST,request.FILES,instance=user)
    form.save()
    return redirect('/')

def delete(request,id):
    User.objects.get(id=id).image.delete()
    user=User.objects.get(id=id)
    user.delete()
    return redirect('/')

def search(request):
    users=User.objects.filter(mail_contains=request.GET['search']).values()
    return JsonResponse(list(users),safe=False)

def login(request):
    return render(request,'login.html')


def entry(request):
    usermail=request.session['email']=request.POST['email']
    password=request.POST['Password']
    try:
        user=User.objects.get(email=usermail)
        # user1=User.objects.get(user);
        # return HttpResponse(user)
        if(user.Password!=password):
            messages.warning(request,'Password didnot match')
            return redirect('/login')
    except:
        messages.warning(request,'User not found')
        return redirect('/login')

    return redirect('/')

# Create your views here.

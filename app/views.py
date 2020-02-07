from django.shortcuts import render,redirect
from app.models import User
from app.forms import UserForm
from app.models import Product
from app.forms import ProductForm
from django.http import HttpResponse,JsonResponse
from app.authenticator import Authenticator
from django.contrib import messages

@Authenticator.valid_user
def index(request):
    limit=3
    page=1
    try:
        logged=User.objects.get(email=request.session['email'])
    
    except:
        request.session.flush()
        return redirect('/login')
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

    return render(request,"index.html",{'users':users,'page':page,'logged':logged})

@Authenticator.valid_user
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


def Search(request):
    users=User.objects.filter(name__icontains=request.GET['search']).values()
    return JsonResponse(list(users),safe=False)

def ProductSearch(request):
    products=Product.objects.filter(name__icontains=request.GET['search']).values()
    return JsonResponse(list(products),safe=False)

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

def store(request):
    products=Product.objects.all()
    return render(request,'store.html',{'products':products})

def aboutus(request):
    return render(request,'aboutus.html')

def homepage(request):
    return render(request,'homepage.html')

@Authenticator.valid_user
def product(request):
    limit=3
    page=10
    try:
        logged=User.objects.get(email=request.session['email'])
    
    except:
        request.session.flush()
        return redirect('/login')
    if request.method=="POST":
        if "next" in request.POST:
            page=(int(request.POST['page'])+1)
        elif "back" in request.POST:
            page=(int(request.POST['page'])-1)
        tempoffset=page-1    
        offset=tempoffset*page
        product=Product.objects.raw("select * from Product limit 10 offset %s",[offset])
    else:
        product=Product.objects.raw("select * from Product limit 10 offset 0")
    return render(request,"product.html",{'product':product,'page':page,'logged':logged})

@Authenticator.valid_user
def addproduct(request):
    if request.method=="POST":
        form=ProductForm(request.POST,request.FILES)
        form.save()
        return redirect('/product')
    else:
        form=ProductForm()
    return render(request,'addproduct.html',{'form':form})


def editproduct(request,id):
    pro = Product.objects.get(id=id)
    return render(request,'editproduct.html',{'product':pro})


def updateproduct(request,id):
    pro=Product.objects.get(id=id)
    form=ProductForm(request.POST,request.FILES,instance=pro)
    form.save()
    return redirect('/product')

def deleteproduct(request,id):
    Product.objects.get(id=id).image.delete()
    product=Product.objects.get(id=id)
    product.delete()
    return redirect('/product')

@Authenticator.valid_user
def logout(request):
    request.session.flush()
    return redirect("/login")
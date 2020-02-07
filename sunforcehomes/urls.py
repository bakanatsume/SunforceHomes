"""sunforcehomes URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from app import views

urlpatterns = [
    path('',views.index),
    path('edit/<int:id>',views.edit),
    path('update/<int:id>',views.update),
    path('delete/<int:id>',views.delete),
    path('create',views.create),
    path('login/',views.login),
    path('aboutus',views.aboutus),
    path('homepage',views.homepage),
    path('product',views.product),
    path('addproduct',views.addproduct),
    path('entry',views.entry),
    path('search',views.Search),
    path('ProductSearch',views.ProductSearch),
    path('editproduct/<int:id>',views.editproduct),
    path('updateproduct/<int:id>',views.updateproduct),
    path('deleteproduct/<int:id>',views.deleteproduct),
    path('store',views.store),
    path('logout',views.logout),
    
]

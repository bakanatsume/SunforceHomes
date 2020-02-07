from django import forms
from app.models import User
from app.models import Product

class UserForm(forms.ModelForm):
    Password=forms.CharField(widget=forms.PasswordInput)
    class Meta:
        model=User
        fields="__all__"

class ProductForm(forms.ModelForm):

    class Meta:
        model=Product
        fields="__all__"
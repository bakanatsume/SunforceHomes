from django import forms
from app.models import User

class UserForm(forms.ModelForm):
    Password=forms.CharField(widget=forms.PasswordInput)
    class Meta:
        model=User
        fields="__all__"
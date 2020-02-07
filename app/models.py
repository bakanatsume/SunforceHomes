from django.db import models

class User(models.Model):
    user_id=models.AutoField(auto_created=True,primary_key=True),
    name=models.CharField(max_length=50)
    email=models.CharField(max_length=500)
    Password=models.CharField(max_length=50)
    image=models.ImageField(default="img.jpg")

    class Meta:
        db_table="user"

class Product(models.Model):
    SN=models.AutoField(auto_created=True,primary_key=True),
    name=models.CharField(max_length=100)
    price=models.CharField(max_length=500)
    company=models.CharField(max_length=100)
    wattpeak=models.CharField(max_length=5)
    image=models.ImageField(default="img.jpg")

    class Meta:
        db_table="Product"







# Create your models here.

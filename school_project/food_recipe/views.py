from django.shortcuts import render
from django.http import HttpResponse

# This is our home function to handle home requests
def home(request):
	return render(request, 'food_recipe/index.html')

# This is an example function to handle /example requests
def example(request):
	return HttpResponse('<h1>Example View</h1>')
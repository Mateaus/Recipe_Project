from django.shortcuts import render
from django.http import HttpResponse

# We will start with function Home
# this will handle the traffic from the
# home page of our list of foods page
def home(request):
	return HttpResponse('<h1>Food Recipes</h1>')

def example(request):
	return HttpResponse('<h1>Example View</h1>')
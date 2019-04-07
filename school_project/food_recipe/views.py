from django.shortcuts import render
from django.http import HttpResponse

posts = [
	{
		'author': 'Joseph C.',
		'title' : 'Potato Soup',
		'image' : '/static/images/potato-soup.jpg',
		'content' : 'Description of potato soup recipy.',
		'date_posted': 'April 6, 2019'
	},
	{
		'author': 'Anthony Viera',
		'title' : 'Spaghetti',
		'image' : '/static/images/spaghetti.jpg',
		'content' : 'Description of Spaghetti recipy.',
		'date_posted': 'April 7, 2019'
	},
	{
		'author': 'Charles Garza',
		'title' : 'Bibimbap',
		'image' : '/static/images/bibimbap.jpg',
		'content' : 'Description of Bibimbap recipy.',
		'date_posted': 'April 8, 2019'
	},
	{
		'author': 'Joseph C.',
		'title' : 'Potato Soup',
		'image' : '/static/images/potato-soup.jpg',
		'content' : 'Description of potato soup recipy.',
		'date_posted': 'April 6, 2019'
	},
	{
		'author': 'Anthony Viera',
		'title' : 'Spaghetti',
		'image' : '/static/images/spaghetti.jpg',
		'content' : 'Description of Spaghetti recipy.',
		'date_posted': 'April 7, 2019'
	},
	{
		'author': 'Charles Garza',
		'title' : 'Bibimbap',
		'image' : '/static/images/bibimbap.jpg',
		'content' : 'Description of Bibimbap recipy.',
		'date_posted': 'April 8, 2019'
	},
	{
		'author': 'Joseph C.',
		'title' : 'Potato Soup',
		'image' : '/static/images/potato-soup.jpg',
		'content' : 'Description of potato soup recipy.',
		'date_posted': 'April 6, 2019'
	},
	{
		'author': 'Anthony Viera',
		'title' : 'Spaghetti',
		'image' : '/static/images/spaghetti.jpg',
		'content' : 'Description of Spaghetti recipy.',
		'date_posted': 'April 7, 2019'
	},
	{
		'author': 'Charles Garza',
		'title' : 'Bibimbap',
		'image' : '/static/images/bibimbap.jpg',
		'content' : 'Description of Bibimbap recipy.',
		'date_posted': 'April 8, 2019'
	}
]

# This is our home function to handle home requests
def home(request):
	context = {
		'posts': posts
	}
	return render(request, 'food_recipe/index.html', context)

# This is an example function to handle /example requests
def example(request):
	return HttpResponse('<h1>Example View</h1>')
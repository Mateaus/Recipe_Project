from django.shortcuts import render
from .models import Post

# This is our home function to handle home requests
def home(request):
	context = {
		'posts': Post.objects.raw('SELECT * FROM food_recipe_post')
	}
	return render(request, 'food_recipe/index.html', context)
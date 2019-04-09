from django.shortcuts import render
from django.contrib.auth.mixins import LoginRequiredMixin, UserPassesTestMixin
from django.views.generic import (
	ListView,
	DetailView,
	CreateView,
	UpdateView,
	DeleteView
)
from .models import Post

# This is our home function to handle home requests
def home(request):
	context = {
		'posts': Post.objects.raw('SELECT * FROM food_recipe_post')
	}
	return render(request, 'food_recipe/index.html', context)

class PostListView(ListView):
	model = Post
	template_name = 'food_recipe/index.html'
	context_object_name = 'posts'
	ordering = ['-date_posted']

class PostDetailView(DetailView):
	model = Post

class PostCreateView(LoginRequiredMixin, CreateView):
	model = Post
	fields = ['recipe_name', 'recipe_content', 'recipe_image']

	# set the current form instance equals to the 
	# current logged in user.
	def form_valid(self, form):
		form.instance.recipe_author = self.request.user
		return super().form_valid(form)

	# send context title equals to "Create Recipe"
	# into the template
	def get_context_data(self, **kwargs):
		context = super().get_context_data(**kwargs)
		context['title'] = 'Create Recipe'
		return context

class PostUpdateView(LoginRequiredMixin, UserPassesTestMixin, UpdateView):
	model = Post
	fields = ['recipe_name', 'recipe_content', 'recipe_image']

	# set the current form instance equals to the 
	# current logged in user.
	def form_valid(self, form):
		form.instance.recipe_author = self.request.user
		return super().form_valid(form)

	def test_func(self):
		post = self.get_object()
		if self.request.user == post.recipe_author:
			return True
		else:
			return False

class PostDeleteView(LoginRequiredMixin, UserPassesTestMixin, DeleteView):
	model = Post
	success_url = '/'

	def test_func(self):
		post = self.get_object()
		if self.request.user == post.recipe_author:
			return True
		else:
			return False
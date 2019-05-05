from django.shortcuts import render
from django.contrib.auth.mixins import LoginRequiredMixin, UserPassesTestMixin
from django.views.generic import (
	ListView,
	DetailView,
	CreateView,
	UpdateView,
	DeleteView
)
from .models import Recipe

from django.db.models import Q
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

class PostListView(ListView):
	model = Recipe
	template_name = 'food_recipe/index.html'
	context_object_name = 'recipes'
	ordering = ['-date_posted']
	paginate_by = 8

	# send context title equals to "Create Recipe"
	# into the template
	def get_context_data(self, **kwargs):
		context = super().get_context_data(**kwargs)
		return context

class PostDetailView(DetailView):
	model = Recipe

class PostCreateView(LoginRequiredMixin, CreateView):
	model = Recipe
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
	model = Recipe
	fields = ['recipe_name', 'recipe_content', 'recipe_image']

	# set the current form instance equals to the
	# current logged in user.
	def form_valid(self, form):
		form.instance.recipe_author = self.request.user
		return super().form_valid(form)

	def test_func(self):
		recipe = self.get_object()
		if self.request.user == recipe.recipe_author:
			return True
		else:
			return False

class PostDeleteView(LoginRequiredMixin, UserPassesTestMixin, DeleteView):
	model = Recipe
	success_url = '/'

	def test_func(self):
		recipe = self.get_object()
		if self.request.user == recipe.recipe_author:
			return True
		else:
			return False


def search(request):
	model = Recipe
	template_name = 'food_recipe/index.html'
	ordering = ['-date_posted']
	query = request.GET.get('q', '')

	results = Recipe.objects.filter(Q(recipe_name__icontains = query) |
	        Q(recipe_content__icontains = query))

	context = {
		'recipes' : results,
		'title' : 'Search Results',
	}

	return render(request, template_name, context)

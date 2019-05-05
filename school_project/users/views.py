from django.shortcuts import render, redirect
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.views.generic import DetailView
from .forms import UserRegisterForm, UserUpdateForm, ProfileUpdateForm
from django.db import connection
from food_recipe.models import Recipe


def register(request):
	if request.method == 'POST':
		# information coming from the form in register.html
		form = UserRegisterForm(request.POST)
		if form.is_valid():
			form.save()
			username = form.cleaned_data.get('username')
			messages.success(request, f'Your account has been created!')
			return redirect('login')
	else:
		form = UserRegisterForm()

	return render(request, 'users/register.html', {'form': form, 'title': 'Register'})


class ProfileDetailView(DetailView):
	model = User
	template_name = 'users/profile_detailview.html'

	def get_context_data(self, **kwargs):
		context = super().get_context_data(**kwargs)
		context['title'] = 'User'
		user_id = self.kwargs['pk']
		context['userrecipes'] = Recipe.objects.filter(recipe_author=self.kwargs['pk']).values()
		#cursor = connection.cursor()
		#cursor.execute("SELECT * FROM food_recipe_recipe WHERE recipe_author_id=%s", [user_id])
		#context['user_recipes'] = dictfetchall(cursor)
		#cursor.close()
		return context

#def dictfetchall(cursor):
#    desc = cursor.description
#    return [
 #           dict(zip([col[0] for col in desc], row))
 #           for row in cursor.fetchall()
 #   ]

@login_required
def profile(request):
	if request.method == 'POST':
		u_form = UserUpdateForm(request.POST, instance=request.user)
		p_form = ProfileUpdateForm(request.POST,
								   request.FILES,
								   instance=request.user.profile)
		if u_form.is_valid() and p_form.is_valid():
			u_form.save()
			p_form.save()
			messages.success(request, f'Your account has been updated!')
			return redirect('profile')
	else:
		u_form = UserUpdateForm(instance=request.user)
		p_form = ProfileUpdateForm(instance=request.user.profile)

	context = {
		'u_form': u_form,
		'p_form': p_form
	}

	return render(request, 'users/profile.html', context)

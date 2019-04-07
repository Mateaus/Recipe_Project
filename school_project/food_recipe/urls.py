from django.urls import path
from . import views # imports the views.py from current folder
from users import views as user_views

# routing from school_project urls.py is sent here
urlpatterns = [
	# views.(*) looks at views.py and extracts the specific func
    path('', views.home, name='food_recipe-home'),
    path('register/', user_views.register, name='register'),
    path('example/', views.example, name='food_recipe-example'),
]

from django.urls import path
from . import views # imports the views.py from current folder

# routing from school_project urls.py is sent here
urlpatterns = [
	# views.(*) looks at views.py and extracts the specific func
    path('', views.home, name='food-home'),
    path('example/', views.example, name='food-example'),
]

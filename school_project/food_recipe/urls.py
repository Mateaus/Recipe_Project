from django.urls import path
from . import views # imports the views.py from current folder
from django.conf import settings
from django.conf.urls.static import static

# routing from school_project urls.py is sent here
urlpatterns = [
	# views.(*) looks at views.py and extracts the specific func
    path('', views.home, name='food_recipe-home'),
]

if settings.DEBUG:
	urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)


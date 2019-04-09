from django.urls import path
from .views import (
	PostListView,
 	PostDetailView,
 	PostCreateView,
 	PostUpdateView,
 	PostDeleteView
)
from . import views # imports the views.py from current folder
from django.conf import settings
from django.conf.urls.static import static

# routing from school_project urls.py is sent here
urlpatterns = [
	# views.(*) looks at views.py and extracts the specific func
    path('', PostListView.as_view(), name='food_recipe-home'),
    path('post/<int:pk>/', PostDetailView.as_view(), name='post-detail'),
    path('post/new/', PostCreateView.as_view(), name='post-create'),
    path('post/<int:pk>/update/', PostUpdateView.as_view(), name='post-update'),
    path('post/<int:pk>/delete/', PostDeleteView.as_view(), name='post-delete'),
]

if settings.DEBUG:
	urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)


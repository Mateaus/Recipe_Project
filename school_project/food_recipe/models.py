from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User

# Our recipe database
class Post(models.Model):
	recipe_image = models.ImageField(default='default.jpg', upload_to='recipe_pics')
	recipe_name = models.CharField(max_length=100)
	recipe_content = models.TextField()
	recipe_author = models.ForeignKey(User, on_delete=models.CASCADE)
	date_posted = models.DateTimeField(default=timezone.now)

	# Object query returns the recipe_name
	def __str__(self):
		return self.recipe_name

	

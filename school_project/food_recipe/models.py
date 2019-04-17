from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
from django.urls import reverse
from PIL import Image

# Our recipe database
class Recipe(models.Model):
	recipe_image = models.ImageField(default='default.jpg', upload_to='recipe_pics')
	recipe_name = models.CharField(max_length=100)
	recipe_content = models.TextField()
	recipe_author = models.ForeignKey(User, on_delete=models.CASCADE)
	date_posted = models.DateTimeField(default=timezone.now)

	# Object query returns the recipe_name
	def __str__(self):
		return self.recipe_name

	def save(self, **kwargs):
		super().save()

		img = Image.open(self.recipe_image.path)

		if img.height > 200 or img.width > 200:
			output_size = (200, 200)
			img.thumbnail(output_size)
			img.save(self.recipe_image.path)

	# returns to the detail view of the recipe created
	def get_absolute_url(self):
		return reverse('recipe-detail', kwargs={'pk': self.pk})

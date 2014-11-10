from django.db import models
from image_cropping import ImageRatioField, ImageCropField

# Create your models here.

class Galleria(models.Model):
    titolo = models.CharField(max_length=100, verbose_name="Titolo del Progetto:")
    image = models.ImageField(blank=True, null=True, upload_to='uploaded_images')
    didascalia = models.TextField(null=True, blank=True)
    cropping = ImageRatioField('image', '500x480')
    slider = ImageRatioField('image', '870x480')
    thumb = ImageRatioField('image', '132x94')
    croppinguno = ImageRatioField('image', '1140x487')
    croppingdue = ImageRatioField('image', '198x132')
    croppingtre = ImageRatioField('image', '1199x674')
    croppingquattro = ImageRatioField('image', '500x469', verbose_name="Design Miniatura")
    croppingcinque = ImageRatioField('image', '1200x800', verbose_name="Design HD")
    croppingsei = ImageRatioField('image', '1200x1125', verbose_name="News")
    pub_date = models.DateTimeField('date published')

    def __unicode__(self):
        return self.titolo

    class Meta:
        verbose_name_plural = "Galleria"
        ordering = ['id']

class Post(models.Model):
    titolo = models.CharField("Titolo:", max_length=100, null=True, blank=True)
    titolo_menu = models.CharField("Titolo Menu:", max_length=100, null=True, blank=True)
    #body = models.TextField(null=True, blank=True, verbose_name="Descrizione")
    body = models.TextField(null=True, blank=True, verbose_name="Descrizione")
    image = models.ImageField(blank=True, null=True, upload_to='uploaded_images')
    miniatura = ImageRatioField('image', '500x281')
    cropping = ImageRatioField('image', '1200x675')
    galleria = models.ManyToManyField(Galleria, null=True, blank=True, verbose_name="Seleziona Immagini Galleria")
    pub_date = models.DateTimeField('date published')
    
    def __unicode__(self):
        return self.titolo


class Immagini(models.Model):
    titolo = models.CharField(max_length=100, verbose_name="Titolo del Progetto:")
    categoria = models.ForeignKey(Post, null=True, blank=True)
    image = models.ImageField(blank=True, null=True, upload_to='uploaded_images')
    didascalia = models.TextField(null=True, blank=True)
    cropping = ImageRatioField('image', '500x480')
    slider = ImageRatioField('image', '830x530')
    thumb = ImageRatioField('image', '500x300')
    croppinguno = ImageRatioField('image', '1140x487')
    croppingdue = ImageRatioField('image', '198x132')
    croppingtre = ImageRatioField('image', '1199x674')
    croppingquattro = ImageRatioField('image', '500x469', verbose_name="Design Miniatura")
    croppingcinque = ImageRatioField('image', '1200x800', verbose_name="Design HD")
    croppingsei = ImageRatioField('image', '1200x1125', verbose_name="News")
    pub_date = models.DateTimeField('date published')

    def __unicode__(self):
        return self.titolo

    class Meta:
        verbose_name_plural = "Galleria Immagini"
        ordering = ['id']


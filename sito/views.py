from django.shortcuts import render
from django.shortcuts import render_to_response, get_object_or_404
from django.http import HttpResponse
from django.template import RequestContext
from django.views.generic import ListView, DetailView
from sito.models import *
from django.http import HttpResponseRedirect
from django.core.urlresolvers import reverse

# Create your views here.
def HomeView(request):
	immagini_list = Immagini.objects.filter(categoria = '1').order_by('id')
	dottori_list = Immagini.objects.filter(categoria = '2').order_by('id')
	scelta_list = Immagini.objects.filter(categoria = '3').order_by('id')
	context = {'immagini_list': immagini_list,
				'dottori_list': dottori_list,
				'scelta_list': scelta_list
				}
   #return render_to_response('home.html', context_instance=RequestContext(request))
	return render(request, 'home.html', context)

def ContactView(request):
   return render_to_response('contact.html', context_instance=RequestContext(request))

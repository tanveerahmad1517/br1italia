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
   return render_to_response('home.html', context_instance=RequestContext(request))

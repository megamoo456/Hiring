from django.http import response
from django.shortcuts import render
from .serializers import *
from rest_framework import viewsets
from rest_framework import permissions
from rest_framework.response import Response
from django.contrib.auth.models import User, Group
from .models import *


class UserViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = User.objects.all().order_by('-date_joined')
    serializer_class = UserSerializer
    permission_classes = [permissions.IsAuthenticated]


class GroupViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows groups to be viewed or edited.
    """
    queryset = Group.objects.all()
    serializer_class = GroupSerializer
    permission_classes = [permissions.IsAuthenticated]
class companiesList(viewsets.ModelViewSet):
    queryset = Companies.objects.all()
    serializer_class = companiesSerializer
    permission_classes = [permissions.IsAuthenticated]
    
    def get(self,request):
        companies = Companies.objects.all()
        serialize=companiesSerializer(companies,many=True)
        return Response(serialize.data)
    def post(self):
        pass

# Create your views here.

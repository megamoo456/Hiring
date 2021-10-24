from django.contrib import admin
from .models import *

class MatchesAdmin(admin.ModelAdmin):
    list_display = ('right_company','left_company')

admin.site.register(Matches, MatchesAdmin)

class MatchsInline(admin.StackedInline):
    model = Matches
    fk_name = 'right_company'


class CompaniesAdmin(admin.ModelAdmin):
    list_display =('name','source_id')
    search_fields = ['name']
    inlines = [MatchsInline]

admin.site.register(Companies, CompaniesAdmin)
# Register your models here.

# Django Settings

import os
from pathlib import Path

BASE_DIR = Path(__file__).resolve().parent.parent
# You must set the SECRET_KEY environment variable before running this project
SECRET_KEY = os.environ.get("SECRET_KEY")
DEBUG = True

WELCOME_MSG = os.environ.get("WELCOME_MSG")

ALLOWED_HOSTS = ['django', 'localhost']
INSTALLED_APPS = [
    'demo_django'
]

ROOT_URLCONF = 'demo_django.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
            ],
        },
    },
]

WSGI_APPLICATION = 'demo_django.wsgi.application'

# Docker files for Django app development
---
Welcome to the repository where you can find the necessary files, Dockerfile, docker-compose.yml and requirements.txt, to set up a development environment for Django applications using Docker. By leveraging Docker, you can easily create a consistent and isolated environment to streamline your development process.

## How to use
---
1. Clone the repository
```
git clone https://github.com/sebastian-s/django-docker
```
2. Change directory to the cloned repository
```
cd django-docker
```
3. Run the container
```
docker-compose run web django-admin startproject <name_of_project> .
```
Ready! We already have the development environment set up, now we just need to configure the final things in our project in 'settings.py'

## Django settings
---
### Allowed host
```
ALLOWED_HOSTS = ['*']
```
### Database
```
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'postgres',
        'USER': 'postgres',
        'PASSWORD': 'postgres',
        'HOST': 'db',
        'PORT': 5432
    }
}
```
## Comands
Run host
```
docker-compose up -d
```
Open comand line to container
```
docker-compose exec -it web bash
```

in the container comand line, we can do any comand to the project

gunicorn --workers $GUNICORN_WORKERS --threads $GUNICORN_THREADS --timeout 60 --access-logfile \
    '-' --error-logfile '-' --bind=0.0.0.0:8000 -k uvicorn.workers.UvicornWorker \
     --chdir=/home/site/wwwroot project.asgi
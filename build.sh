#!/usr/bin/env bash
set -o errexit

# Step 1: Install all required Python packages
pip install -r requirements.txt

# Step 2: Collect all static files for Django
python manage.py collectstatic --noinput

# Step 3: Apply database migrations
python manage.py migrate

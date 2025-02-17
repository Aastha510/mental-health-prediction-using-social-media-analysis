#!/usr/bin/env bash
# Exit on error
set -o errexit

# Modify this line as needed for your package manager (pip, poetry, etc.)
pip install -r requirements.txt

# Navigate to the 'Project' folder where manage.py is located
cd Project

pip install --upgrade pip


# Update the app by creating survey if it's missing
#python manage.py startapp survey

pip freeze

# Convert static asset files
python manage.py collectstatic --no-input

# Apply any outstanding database migrations
python manage.py migrate


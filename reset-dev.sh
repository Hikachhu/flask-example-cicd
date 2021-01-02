# This script will reset the local dev environment
# It will also create a new python virtual environment and activate it
source venv/bin/activate
deactivate
rm -r venv
rm -r build
find . | grep -E "(__pycache__|\.pyc|\.pyo$|*egg-info)" | xargs rm -rf
find . -name "*.so" -type f -delete
python3 -m venv venv
source venv/bin/activate
pip install flake8 pytest
FROM python
WORKDIR /app
COPY requirements.txt .
RUN python -m pip install -r requirements.txt
COPY . .
CMD  ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]

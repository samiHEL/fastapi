FROM python:3.8

# dossier de travail.
WORKDIR /code
EXPOSE 8000
# dependances
COPY requirements.txt .
COPY main.py .
# installer les dependances
RUN pip install -r requirements.txt


CMD ["uvicorn", "main:app", "--host", "0.0.0.0"]

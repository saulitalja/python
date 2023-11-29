# Käytä Python 3.8 -peruskuvaa
FROM python:3.8

# Määritä työskentelyhakemisto /app
WORKDIR /app

# Kopioi paikallinen Python-skripti konttiin
COPY hello /app/

# Asenna mahdolliset riippuvuudet
# Jos tarvitset riippuvuuksia, voit lisätä ne requirements.txt -tiedostoon ja käyttää seuraavaa riviä:
# COPY requirements.txt /app/
# RUN pip install --no-cache-dir -r requirements.txt

# Käynnistä Python-ohjelma, kun kontti käynnistyy
CMD ["python", "your_python_script.py"]

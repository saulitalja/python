# Käytä Ubuntun peruskuvaa
FROM ubuntu:latest

# Päivitä pakettien luettelo ja asenna tarvittavat ohjelmat
RUN apt-get update -y && \
    apt-get install -y \
    curl

# Lisää "Hello World" -sovellus konttiin
RUN echo "Hello, World!" > /app.txt

# Määritä työskentelyhakemisto
WORKDIR /

# Komento, joka suoritetaan kontin käynnistyessä
CMD ["cat", "/app.txt"]

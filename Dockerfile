FROM cirrusci/flutter:stable

WORKDIR /app

COPY . .

RUN flutter build web --release

EXPOSE 8080

CMD ["python", "-m", "http.server", "8080"]

# -------- Build stage --------
FROM ghcr.io/cirruslabs/flutter:3.40.0-0.2.pre AS build

WORKDIR /app

COPY . .

RUN flutter clean
RUN flutter pub get
RUN flutter build web

# -------- Runtime stage --------
FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY --from=build /app/build/web /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

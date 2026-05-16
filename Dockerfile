FROM python:3.14-slim AS build

WORKDIR /docs
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY mkdocs.yml .
COPY docs/ docs/
RUN python -m mkdocs build

FROM nginx:alpine
COPY --from=build /docs/site /usr/share/nginx/html
EXPOSE 80

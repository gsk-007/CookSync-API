FROM python:3.9-alpine3.13
LABEL maintainer="gursimrat"

# Recommended when you are running python in a Docker Container
# It tells python to not buffer the output i.e.,
# the ouput from python will be printed directly to the console, which prevents any delays of messages
ENV PYTHONUNBFFERED 1

COPY ./requirements.txt /tmp/requirements.txt
COPY ./requirements.dev.txt /tmp/requirements.dev.txt
COPY ./app /app
WORKDIR /app
EXPOSE 8000

ARG DEV=false
RUN python -m venv /py && \
	/py/bin/pip install --upgrade pip && \
	apk add --update --no-cache postgresql-client jpeg-dev && \
	apk add --update --no-cache --virtual .tmp-build-deps \
	build-base postgresql-dev musl-dev zlib zlib-dev && \
	/py/bin/pip install -r /tmp/requirements.txt && \
	if [ $DEV = "true" ]; \
	then /py/bin/pip install -r /tmp/requirements.dev.txt ; \
	fi && \
	rm -rf /tmp && \
	apk del .tmp-build-deps && \
	adduser \
	--disabled-password \
	--no-create-home \
	django-user

ENV PATH="/py/bin:$PATH"

USER django-user

FROM python:3.6.3-alpine3.6

RUN apk --no-cache update && \
  apk --no-cache add \
  sudo \
  vim 
RUN pip install --upgrade pip && \
    pip install Flask && \
    pip install pipenv

CMD [ "/bin/sh" ]

# pipenv shellで仮想環境に入る
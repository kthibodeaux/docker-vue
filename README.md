Build the image:

`docker build -t vuecli .`

Create a new app:

`docker run -it --rm -v "$PWD":"/app" -u "$(id -u)" vuecli vue create MYAPP`

Use with `docker-compose`:

```
version: '3'
services:
  web:
    image: vuecli
    tty: true
    stdin_open: true
    command: yarn serve
    volumes:
      - .:/app
    ports:
      - "8080:8080"
```

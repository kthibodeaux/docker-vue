Build the image:

`docker build -t docker-vue .`

Create a new app:

`docker run -it --rm -v "$PWD":"/app" -u "$(id -u)" docker-vue vue create MYAPP`

Use with `docker-compose`:

```
version: '3'
services:
  web:
    image: docker-vue
    tty: true
    stdin_open: true
    command: yarn serve
    volumes:
      - .:/app
    ports:
      - "8080:8080"
```


## Install

```sh
podman build -t website .
```


## Run

```sh
podman run -p 4000:4000 -v $(pwd):/app:Z website
```

# Usage

Pour recorder une session et l'exporter en GIF

## Recorder une session

Vous pouvez retrouver la documentation de `asciinema` sur le site officiel [asciinema.org](https://asciinema.org/). 

```bash
asciinema rec ~/cast2gif/recs/nomdufichier.cast
```

## Exporter en gif

A partir du cast créer un gif avec `agg`, lien vers le dépôt github [agg](https://github.com/asciinema/agg).

### Build de l'image

Si l'image est déjà build passez à l'étape suivante.

```bash
docker build -t cast2gif .
```

### Convertir le record en gif

```bash
docker run -v $PWD:/data cast2gif --verbose /data/recs/nomdufichier.cast /data/gifs/nomdufichier.gif
```

Pour accélerer le record vous pouvez préciser les options suivantes:

* `--speed 2`
* `--idle-time-limit 1`

```bash
docker run -v $PWD:/data cast2gif --verbose --speed 2 --idle-time-limit 1 /data/recs/nomdufichier.cast /data/gifs/nomdufichier.gif
```

Pour améliorer la qualité et avoir une taille d'écran similaire:

* `--cols 100`
* `--rows 30`

```bash
docker run -v $PWD:/data cast2gif --verbose --speed 2 --idle-time-limit 1 --cols 100 --rows 30 /data/recs/nomdufichier.cast /data/gifs/nomdufichier.gif
```

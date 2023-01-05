# Usage

Pour recorder une session est l'exporter en GIF

## Recorder une session

```bash
asciinema rec ~/asciinema/recs/nomdufichier.cast
```

## Exporter en gif

A partir du cast exporter en gif

### Build de l'image

Si l'image est déjà build passé à l'étape suivante

```bash
docker build -t asciinema/rectogif .
```

### Convertir le rec en gif

```bash
docker run -v $PWD:/data asciinema/rectogif --verbose /data/recs/nomdufichier.cast /data/gifs/nomdufichier.gif
```

Pour accélerer le record vous pouvez préciser les options suivantes:

* `--speed 2`
* `--idle-time-limit 1`

```bash
docker run -v $PWD:/data asciinema/rectogif --verbose --speed 2 --idle-time-limit 1 /data/recs/nomdufichier.cast /data/gifs/nomdufichier.gif
```

Pour améliorer la qualité et avoir une taille d'écran similaire

* `--cols 100`
* `--rows 30`

```bash
docker run -v $PWD:/data asciinema/rectogif --verbose --speed 2 --idle-time-limit 1 --cols 100 --rows 30 /data/recs/nomdufichier.cast /data/gifs/nomdufichier.gif
```
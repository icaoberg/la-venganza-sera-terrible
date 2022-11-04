# La Venganza será Terrible

![Podcasting](https://img.shields.io/badge/podcasting-awesome-blue.svg)
[![Hacky](https://img.shields.io/badge/hacky-true-blue.svg)](https://en.wiktionary.org/wiki/hacky)
[![GitHub issues ](https://img.shields.io/github/issues/icaoberg/la_venganza_sera_terrible.svg)](https://github.com/icaoberg/la_venganza_sera_terrible/issues)
[![GitHub forks](https://img.shields.io/github/forks/icaoberg/la_venganza_sera_terrible.svg)](https://github.com/icaoberg/la_venganza_sera_terrible/network)
[![GitHub stars](https://img.shields.io/github/stars/icaoberg/la_venganza_sera_terrible.svg)](https://github.com/icaoberg/la_venganza_sera_terrible/stargazers)
[![GitHub license](https://img.shields.io/badge/license-GPLv3-blue.svg)](https://raw.githubusercontent.com/icaoberg/la_venganza_sera_terrible/master/LICENSE)
[![Build Status](https://travis-ci.org/icaoberg/la_venganza_sera_terrible.svg?branch=dev)](https://travis-ci.org/icaoberg/la_venganza_sera_terrible)
[![Build Status](https://travis-ci.org/icaoberg/la_venganza_sera_terrible.svg?branch=master)](https://travis-ci.org/icaoberg/la_venganza_sera_terrible)

Simple programa que baja los podcasts de [venganzasdelpasado.com.ar](https://venganzasdelpasado.com.ar/).

## Acerca de este proyectp
Este es un programa escrito en `bash` que usa `grep` para extraer los URLs en las páginas de Venganza del Pasado y después usa `wget` para bajar los archivos localmente.

## Dependencias
Este programa depende

* `bash`
* `grep`
* `wget`

## Como usar el programa
## Sin argumentos
Sin argumentos, el programa tratara de bajar los archivos en las últimas 5 páginas.

```
bash ./get_podcasts.sh
```

## Numero de paginas
El único argumento de entrada es el número de páginas a revisar. Para revisar las últimas 100 paginas y bajar archivos, se puede usar de esta manera

```
bash ./get_podcasts.sh 100
```

## Ejemplo
```
bash ./get_podcasts.sh 1
Setting maximum number of pages to 1
Attempting to download podcasts from page number 0
--2016-03-27 15:35:21--  http://venganzasdelpasado.com.ar/2016/lavenganza_2016-03-25.mp3
Resolving venganzasdelpasado.com.ar... 198.100.147.93
Connecting to venganzasdelpasado.com.ar|198.100.147.93|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 21617965 (21M) [audio/mpeg]
Saving to: 'lavenganza_2016-03-25.mp3'

lavenganza_2016-03-25.m 100%[=================================>]  20.62M  5.69MB/s   in 4.1s

2016-03-27 15:35:25 (5.08 MB/s) - 'lavenganza_2016-03-25.mp3' saved [21617965/21617965]

--2016-03-27 15:35:25--  http://venganzasdelpasado.com.ar/2016/lavenganza_2016-03-24.mp3
Reusing existing connection to venganzasdelpasado.com.ar:80.
HTTP request sent, awaiting response... 200 OK
Length: 21617965 (21M) [audio/mpeg]
Saving to: 'lavenganza_2016-03-24.mp3'

lavenganza_2016-03-24.m 100%[=================================>]  20.62M  5.85MB/s   in 3.5s

2016-03-27 15:35:29 (5.86 MB/s) - 'lavenganza_2016-03-24.mp3' saved [21617965/21617965]

FINISHED --2016-03-27 15:35:40--
Total wall clock time: 18s
Downloaded: 2 files, 42M in 10s (5.70 MB/s)
```

### Crontab
Puedes añadir el programa al crontab y bajar los archivos todos los días.

```
@daily /bin/bash /path/to/podcasts/get_podcasts.sh 10
```

### Anotación de archivos MP3s
Esto es alternativo y no es necesario para bajar los archivos

```
DIRECTORY=/path/to/files

./annotate_files.sh $DIRECTORY
```

## Problemas y preguntas

Si encuentra algún problema con este programa por favor someter un ticket en

https://github.com/icaoberg/la-venganza-sera-terrible/

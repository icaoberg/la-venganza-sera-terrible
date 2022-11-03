# La Venganza sera Terrible

![Podcasting](https://img.shields.io/badge/podcasting-awesome-blue.svg)
[![Hacky](https://img.shields.io/badge/hacky-true-blue.svg)](https://en.wiktionary.org/wiki/hacky)
[![GitHub issues ](https://img.shields.io/github/issues/icaoberg/la_venganza_sera_terrible.svg)](https://github.com/icaoberg/la_venganza_sera_terrible/issues)
[![GitHub forks](https://img.shields.io/github/forks/icaoberg/la_venganza_sera_terrible.svg)](https://github.com/icaoberg/la_venganza_sera_terrible/network)
[![GitHub stars](https://img.shields.io/github/stars/icaoberg/la_venganza_sera_terrible.svg)](https://github.com/icaoberg/la_venganza_sera_terrible/stargazers)
[![GitHub license](https://img.shields.io/badge/license-GPLv3-blue.svg)](https://raw.githubusercontent.com/icaoberg/la_venganza_sera_terrible/master/LICENSE)

Super simple and dumb helper script that downloads the podcasts from [venganzasdelpasado.com.ar](https://venganzasdelpasado.com.ar/).

## About
This is a bash script that uses `grep` to search for the URLS in the HTML pages and then uses `wget` to download them to disk.

## Dependencies
The script depends on

* `bash`
* `grep`
* `wget`

The first two are available in most \*nix-like OS, such as Ubuntu and MacOSX. MacOSX comes with `curl` rather than `wget` but it can be easily installed using [Homebrew](http://brew.sh/).

## Usage
You can use this script in two ways

## No input arguments
Without any input arguments, the script will crawl and try to download the podcasts from the last 5 pages on the site.

```
bash ./get_podcasts.sh
```

## Number of pages to crawl
The only input argument is the maximum number of images to crawl.

```
bash ./get_podcasts.sh 100
```

## Examples

### Crawling and downloading from main page

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

### Daily Downloads
You can add the script to your crontab so that it can run daily and download the podcasts daily. Assume that the script resides in the folder `/path/to/podcasts/`, then you can add the following lines to your crontab

```
@daily /bin/bash /path/to/podcasts/get_podcasts.sh 10
```

### File annotation
```
DIRECTORY=/path/to/files

./annotate_files.sh $DIRECTORY
```

## Bugs and Questions

To submit bugs about the source code visit

https://github.com/icaoberg/la-venganza-sera-terrible/

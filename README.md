## Sprawozdanie z wolumenów

# 1
Pliki dockerfile oraz pluto.sh znajdują się w repozytorium wolumeny: https://github.com/anik0o/wolumeny

# 2
Do zbudowania obrazu o nazwie lab4docker wykorzystałam polecenie: `docker build . -t lab4docker`

# 3
Do utworzenia wolumenu o nazwie RemoteVol wykorzystałam polecenie: `docker volume create RemoteVol`, ponieważ tworzyłam wolumen lokalnie

# 4
Do uruchomienia kontenera o nazwie alpine4 na bazie zbudowanego obrazu lab4docker, wraz z podłączeniem utworzonego wolumenu oraz ograniczeniem wykorzystywanej pamięci, wykorzystałam polecenie: `docker run -it --name alpine4 --memory=512m --mount source=RemoteVol,target=/logi lab4docker`
 
# 5
 W celu sprawdzenia czy skrypt generuje odpowiednie dane i umieszcza je w pliku info.log na wolumenie RemoteVol, pierwsze sprawdzam scieżkę montowania, poleceniem: `docker volume inspect RemoteVol`, kopiuje scieżkż montowania do polecenia cat i wykonuje: cat /var/lib/docker/volumes/RemoteVol/_data/info.log , dzięki czemu na konsoli wyswietla mi się zawartosc pliku info.log.
Sprawdzenie pamięci kontenera wykonuję poleceniem `docker inspect alpine4 | grep Memory`, otrzymana wartość po przeliczeniu na megabajty daje nam wynik 512MB


## Sprawozdanie z wolumenow

# 1
Pliki dockerfile oraz pluto.sh znajduja sie w repozytorium wolumeny: https://github.com/anik0o/wolumeny

# 2
Do zbudowania obrazu o nazwie lab4docker wykorzystalam polecenie: `docker build . -t lab4docker`

# 3
Do utworzenia wolumenu o nazwie RemoteVol wykorzystalam polecenie: `docker volume create RemoteVol`, poniewaz tworzylam wolumen lokalnie

# 4
Do uruchomienia kontenera o nazwie alpine4 na bazie zbudowanego obrazu lab4docker, wraz z podlaczeniem utworzonego wolumenu oraz ograniczeniem wykorzystywanej pamieci, wykorzystalam polecenie: `docker run -it --name alpine4 --memory=512m --mount source=RemoteVol,target=/logi lab4docker`
 
# 5
 W celu sprawdzenia czy skrypt generuje odpowiednie dane i umieszcza je w pliku info.log na wolumenie RemoteVol, pierwsze sprawdzam sciezke montowania, poleceniem: `docker volume inspect RemoteVol`, kopiuje sciezke montowania do polecenia cat i wykonuje: cat /var/lib/docker/volumes/RemoteVol/_data/info.log, dzieki czemu wyswietla mi sie zawartosc pliku info.log na konsoli.
Sprawdzenie pamieci dla kontenera wykonuje poleceniem `docker inspect alpine4 | grep Memory`, otrzymana wartosc po przeliczeniu na megabajty daje nam wynik 512MB


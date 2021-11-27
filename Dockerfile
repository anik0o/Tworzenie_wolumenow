#Wskazanie obrazu bazowego
FROM alpine

LABEL author="Weronika Mroz"

#Utworzenie folderu, ktory stanowi srodowisko robocze
WORKDIR /usr/src/app

#Wskazanie folderu do podlaczenia wolumenu
VOLUME ["/logi"]

COPY pluto.sh pluto.sh

#Ustawienie automatycznego wykonywania sktyptu przy uruchamianiu kontenera
ENTRYPOINT [ "sh","./pluto.sh" ]

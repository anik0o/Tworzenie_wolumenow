#!/bin/bash

#Generowanie czasu uruchomienia
date '+%Y-%m-%d %H:%M:%S' | awk '{ date =$1; time=$2; print "Data i czas: " date " " time}' > /logi/info.log

#Zapis informacji odnosnie zuzycia pamieci
cat /sys/fs/cgroup/memory/memory.usage_in_bytes  | awk '{ byte =$1 /1024/1024; print "Pamiec: " byte " MB" }' >> /logi/info.log 

FROM ubuntu
RUN apt update && apt upgrade -y
RUN apt install unzip -y
RUN apt install openjdk-8-jdk -y
RUN apt install maven -y
RUN apt install patch -y
RUN apt install dos2unix -y
WORKDIR "/root/LEOS"
ADD ./LEOS-Pilot_3.1.2.zip "/root/LEOS/LEOS-Pilot_3.1.2.zip"
ADD ./0001-change-utf-8.patch "/root/LEOS/0001-change-utf-8.patch"
RUN unzip /root/LEOS/LEOS-Pilot_3.1.2.zip
RUN chmod +x /root/LEOS/*.sh
RUN dos2unix  ./modules/ui/src/main/assets/scss/annex.scss
RUN dos2unix ./modules/ui/src/main/assets/scss/bill.scss
RUN dos2unix ./modules/ui/src/main/assets/scss/explanatory.scss
RUN dos2unix ./modules/ui/src/main/assets/scss/memorandum.scss
RUN patch  -p1 < 0001-change-utf-8.patch

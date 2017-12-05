FROM debian:latest
MAINTAINER Thulasizwe Mavuso thumavu@student.wethinkcode.co.za

# download 
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install bzip2 -y
RUN apt-get install curl -y
RUN apt-get install wget -y

# config teamspeakserve
RUN adduser --disabled-login teamspeak
RUN wget http://dl.4players.de/ts/releases/3.0.12.4/teamspeak3-server_linux_amd64-3.0.12.4.tar.bz2
RUN tar -jxvf teamspeak3-server_linux_amd*.tar.bz2
RUN mv teamspeak3-server_linux_amd64 /usr/local/teamspeak
RUN chown -R teamspeak:teamspeak /usr/local/teamspeak

# connect the ts3server_startscript.sh file into the /etc/init.d/teamspeak directory
RUN ln -s /usr/local/teamspeak/ts3server_startscript.sh /etc/init.d/teamspeak

# teamspeak automatically run after the system boot
RUN update-rc.d teamspeak defaults
EXPOSE 9987/udp 30033 10011
RUN service teamspeak start

ENTRYPOINT ["sh","teamspeak"]
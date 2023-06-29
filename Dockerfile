FROM debian

RUN apt-get update && apt-get install -y iproute2 && apt-get install -y python3

RUN mkdir /output

CMD /bin/ss -tulpn > /output/result.txt

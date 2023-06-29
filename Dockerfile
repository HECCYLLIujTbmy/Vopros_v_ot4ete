FROM debian

RUN apt-get update && apt-get install -y iproute2 && apt-get install -y python3

RUN mkdir /output

RUN python3 -m http.server --bind 127.0.0.1 9000
CMD open https://google.com
CMD /bin/ss -tulpn > /output/result.txt

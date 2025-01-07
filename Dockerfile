FROM alpine
WORKDIR /home/http-server
COPY ./http-server .
RUN apk add libstdc++
RUN apk add libc6-compat
ENTRYPOINT ["./http-server"]
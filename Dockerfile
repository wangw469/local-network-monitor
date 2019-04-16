FROM alpine:3.8
RUN apk add bash
RUN apk add sqlite
RUN apk add curl
RUN apk add gnuplot
RUN apk add tzdata
RUN cp /usr/share/zoneinfo/Asia/Hong_Kong /etc/localtime
RUN echo "Asia/Hong_Kong" > /etc/timezone

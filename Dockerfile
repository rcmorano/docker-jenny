FROM alpine

WORKDIR /blog/src
RUN apk add --no-cache gettext git vim make npm bash && \
    npm install -g gh-markdown-cli && \
    git clone https://github.com/hmngwy/jenny.git /usr/local/src/jenny && \
    cd /usr/local/src/jenny && \
    make install

ENTRYPOINT ["jenny"]

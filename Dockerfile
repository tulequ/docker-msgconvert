FROM alpine:3.4

RUN apk --no-cache add perl

RUN apk --no-cache add wget make gcc perl-dev musl-dev && \
    cpan App::cpanminus && \
    cpanm Email::Outlook::Message && \
    rm -rf ~/.cpan ~/.cpanm && \
    apk del -r wget make gcc perl-dev musl-dev

VOLUME /mails

WORKDIR /mails

ENTRYPOINT ["msgconvert"]

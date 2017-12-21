FROM mhart/alpine-node
MAINTAINER Bhuwan Upadhyay<bhuwan.upadhyay49@gmail.com>
RUN apk add --no-cache make gcc g++ python
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh && \
    git clone https://github.com/formio/formio.git
WORKDIR /formio
RUN npm install --verbose
COPY docker /formio
RUN chmod +x /formio/*.sh
EXPOSE 3001
ENTRYPOINT /formio/run.sh
CMD ['']

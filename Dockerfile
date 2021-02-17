FROM jenkins/inbound-agent:4.3-6-jdk11

LABEL maintainer="Felipe Andrade"
LABEL homepage="https://github.com/felipeAndrade0918/jenkins-jnlp-java11-nodejs"

USER root

RUN apt-get update && \
    apt-get install curl gnupg -y && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash && \
    apt-get install nodejs -y

RUN java -version

USER jenkins
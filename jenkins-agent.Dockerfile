FROM alpine:latest

RUN  apk update && apk upgrade \
    && apk add --update openjdk11 tzdata curl unzip bash git \
    && rm -rf /var/cache/apk/*

RUN apk add --update nodejs npm \
    && rm -rf /var/cache/apk/*

RUN apk add --update docker \
    && rm -rf /var/cache/apk/*

EXPOSE 3000

# RUN curl -sO http://localhost:8080/jnlpJars/agent.jar

# RUN java -jar agent.jar -jnlpUrl http://localhost:8080/manage/computer/agent1/jenkins-agent.jnlp -secret 30df94a76dd68fb8212b7cb59e4590335049ef4acb8ae02caf4f1a5a88cf19e1 -workDir "/var/jenkins"

# CMD ["which", "curl", "java"]

# -----

# docker build --no-cache -t myjenkins-agent -f jenkins-agent.Dockerfile .
# docker run --name jenkins-agent1 --network jenkins -p 8081:8080 -p 50001:50000 -v jenkins_home:/var/jenkins_home -it myjenkins-agent

# cmd.exe /C curl -O http://localhost:8080/jnlpJars/agent.jar
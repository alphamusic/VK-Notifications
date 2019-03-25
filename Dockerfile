FROM alpine:latest

LABEL version="1.0.0"
LABEL repository="https://github.com/hit2hat/vk-devops"
LABEL homepage="https://github.com/hit2hat/vk-devops"
LABEL maintainer="Stepan Novozhilov <hit2hat@icloud.com>"

LABEL com.github.actions.name="VK DevOps"
LABEL com.github.actions.description="DevOps notification in VK for GitHub Actions."
LABEL com.github.actions.icon="bell"
LABEL com.github.actions.color="blue"

RUN apk add --update curl && rm -rf /var/cache/apk/*

COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]
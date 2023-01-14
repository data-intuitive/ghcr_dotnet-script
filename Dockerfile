FROM mcr.microsoft.com/dotnet/sdk:6.0-alpine

LABEL authors="Robrecht Cannoodt <robrecht@data-intuitive.com>" \
    org.opencontainers.image.description="Docker image containing dotnet-script" \
    org.opencontainers.image.source="https://github.com/data-intuitive/ghcr_dotnet-script"

ARG DNV=1.3.1

RUN dotnet tool install -g dotnet-script --version ${DNV}

ENV PATH="${PATH}:/root/.dotnet/tools"

RUN apk add --no-cache bash

WORKDIR /scripts

ENTRYPOINT ["dotnet-script"]
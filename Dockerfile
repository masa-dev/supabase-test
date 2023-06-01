FROM mcr.microsoft.com/dotnet/sdk:7.0 AS runtime

WORKDIR /app

COPY ./src .

RUN apt-get update && apt-get install -y \
    git \
    vim

RUN dotnet tool install --global dotnet-ef --version 7.0
RUN dotnet tool install --global dotnet-aspnet-codegenerator --version 7.0

ENV PATH $PATH:/root/.dotnet/tools
ENV TZ Asia/Tokyo

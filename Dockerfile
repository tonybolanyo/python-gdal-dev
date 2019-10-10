# ---- Python base ----
FROM python:3.7.3-slim AS base

# ---- Dependencias del sistema
FROM base AS system-base

RUN apt-get update && apt-get install -y \
    binutils \
    default-libmysqlclient-dev \
    gdal-bin \
    graphviz \
    libgraphviz-dev \
    libproj-dev \
    pkg-config \
    gettext \
    build-essential \
  && rm -rf /var/lib/apt/lists/*

FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN apt-get update && apt-get install -y --no-install-recommends\
    pkg-config \
    libcairo2-dev \
    gcc  \
    libcairo2-dev \
    && pip install --no-cache-dir -r requirements.txt && \
    rm -rf /var/lib/apt/lists/*
COPY . .
ENTRYPOINT ["python", "plot_errors.py"]




FROM python:3.14.7-alpine

COPY --from=ghcr.io/astral-sh/uv:latest /uv /usr/local/bin/uv

WORKDIR /app
COPY pyproject.toml uv.lock ./
RUN uv sync --frozen --no-dev

COPY src/ ./src/
EXPOSE 5000
CMD ["uv", "run", "python", "src/app.py"]
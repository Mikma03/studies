# Builder stage to install dependencies
FROM python:3.11-buster as builder

# Install Poetry
RUN pip install poetry==1.7.1

# Set environment variables for Poetry
ENV POETRY_NO_INTERACTION=1 \
    POETRY_VIRTUALENVS_IN_PROJECT=1 \
    POETRY_VIRTUALENVS_CREATE=1 \
    POETRY_CACHE_DIR=/tmp/poetry_cache

# Set the working directory in the container
WORKDIR /app

# Copy the pyproject.toml and poetry.lock files
COPY pyproject.toml poetry.lock* ./

# Install dependencies using Poetry with cache enabled
RUN --mount=type=cache,target=$POETRY_CACHE_DIR poetry install --without dev --no-root

# Runtime stage to create final image
FROM python:3.11-slim-buster as runtime

# Set environment variables to use the virtual environment
ENV VIRTUAL_ENV=/app/.venv \
    PATH="/app/.venv/bin:$PATH"

# Copy the virtual environment from the builder stage
COPY --from=builder ${VIRTUAL_ENV} ${VIRTUAL_ENV}

# Copy the application code
COPY src ./app

# Expose port 8000 for the application
# EXPOSE 8000

# Define the entry point for the container
ENTRYPOINT ["python", "-c", "print('Hello World')"]

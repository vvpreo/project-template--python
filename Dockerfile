FROM python:3.9.5-slim
LABEL org.opencontainers.image.source=https://github.com/your_gh_account/your_repo_name
ENV PYTHONUNBUFFERED 1

WORKDIR /app

RUN python -m venv /app/venv
# Enable venv
ENV PATH="/app/venv/bin:$PATH"
RUN chmod +x /app/venv/bin/activate && /app/venv/bin/activate

RUN pip install poetry==1.3.1

COPY pyproject.toml /app
COPY poetry.lock /app

RUN poetry config virtualenvs.create false
RUN poetry install

COPY src /app/src
COPY scripts /app/scripts
COPY tst /app/tst


ENV PYTHONPATH="$PYTHONPATH:/app/src"

CMD ["bash", "/app/scripts/cmd.sh"]
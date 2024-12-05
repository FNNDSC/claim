FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the project files
COPY . .

# Install the package in editable mode
RUN pip install -e .

CMD ["python", "-m", "claimm.main"]


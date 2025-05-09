# Platform Python Application

A simple Flask-based REST API application that provides health check and details endpoints.

## Technical Stack

- **Python Version**: 3.13.2
- **Framework**: Flask 3.1.0
- **Container**: Docker with Alpine Linux base image

## Project Structure

```
.
├── Dockerfile
├── README.md
├── requirements.txt
└── src/
    └── app.py
```

## API Endpoints

1. **Health Check Endpoint**
   - URL: `/api/v1/healthz`
   - Method: GET
   - Response: JSON containing:
     - Status
     - Current timestamp
     - Hostname

2. **Details Endpoint**
   - URL: `/api/v1/details`
   - Method: GET
   - Response: JSON message

## Docker Configuration

The application is containerized using Docker with the following specifications:

- Base Image: `python:3.13.2-alpine`
- Exposed Port: 5000
- Container Port Mapping: 8080:5000 (host:container)

## Building and Running

1. Build the Docker image:
   ```bash
   docker build -t platform-python:v1.0.0 .
   ```

2. Run the container:
   ```bash
   docker run -p 8080:5000 platform-python:v1.0.0
   ```

3. Access the application:
   - Health Check: http://localhost:8080/api/v1/healthz
   - Details: http://localhost:8080/api/v1/details

## Dependencies

- Flask==3.1.0

## Development

The application uses Flask's development server. The main application file is `src/app.py` which contains:
- Flask application initialization
- Route definitions
- Health check endpoint with system information
- Details endpoint with a simple message

## Notes

- The application listens on all interfaces (0.0.0.0) to allow external access
- The container exposes port 5000 internally
- The application is mapped to port 8080 on the host machine
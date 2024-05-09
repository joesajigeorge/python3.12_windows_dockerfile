# Base image for Windows container
FROM mcr.microsoft.com/windows/servercore:ltsc2022

# Install Python using official installer URL
RUN powershell -ExecutionPolicy Bypass -Command Invoke-WebRequest -Uri https://www.python.org/downloads/windows/ -OutFile python.installer.msi

# Install Python silently (modify version number if needed)
RUN msiexec /i python.installer.msi /quiet /norestart ADDLOCAL=Python310

# Set environment variables (adjust path if needed)
ENV PATH "C:\Python310\;%PATH%"

# Working directory (optional, adjust as needed)
WORKDIR C:\app

ENTRYPOINT ["echo", "Hello"]

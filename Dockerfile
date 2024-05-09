# Base image for Windows container
FROM mcr.microsoft.com/windows/servercore:ltsc2022

# Working directory (optional, adjust as needed)
WORKDIR C:\app

# Install Python 3.12
RUN powershell -Command "Invoke-WebRequest -Uri https://www.python.org/ftp/python/3.12.0/python-3.12.0-amd64.exe -OutFile python-3.12.0-amd64.exe"
RUN python-3.12.0-amd64.exe /quiet InstallAllUsers=1 PrependPath=1

# Set the entrypoint
ENTRYPOINT ["echo", "Hello"]

# Base rebuild Dockerfile for remediation process

FROM vulnerables/web-dvwa:latest

# Example: Applying security updates
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get autoremove -y && \
    apt-get clean

# Optional: Copy custom configuration (if needed)
# COPY config/ /app/config/

CMD ["apache2ctl", "-D", "FOREGROUND"]

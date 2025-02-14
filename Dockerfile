# Use Rocker RStudio container (version 4.2.2)
# FROM rocker/rstudio:4.2.2
# Use Rocker RStudio container (version 4.2.2) with amd64 platform
FROM --platform=linux/amd64 rocker/rstudio:4.2.2

# Set the working directory inside the container
WORKDIR /app

# Copy the Bash script into the container
COPY list.sh /app/list.sh

# Run the script using bash
CMD ["bash", "/app/list.sh"]


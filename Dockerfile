# Use an official TeX Live base image from Debian
FROM ghcr.io/xu-cheng/texlive-full:latest

# Maintainer info
LABEL maintainer="your.email@example.com"


# Set the working directory
WORKDIR /workspace

# Copy the contents of the current directory
COPY . /workspace 

# Install packages
RUN tlmgr update --self
RUN tlmgr update --all
# Expose volume for your local LaTeX files
VOLUME ["/workspace"]

# Default command to run pdflatex
CMD ["pdflatex main.tex", "--version"]

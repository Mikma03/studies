#!/bin/bash

LOG_FILE="installation-logger.txt"

# Function to check command success
check_success() {
    if [ $? -ne 0 ]; then
        echo "Error occurred in $1" | tee -a "$LOG_FILE"
        exit 1
    fi
}

# Clear the log file at the start
> "$LOG_FILE"

# Pandoc download URL
PANDOC_URL="https://github.com/jgm/pandoc/releases/download/3.1.6.2/pandoc-3.1.6.2-linux-arm64.tar.gz"

# Destination directory for Pandoc
INSTALL_DIR="/usr/local/bin"

# Update package lists
echo "Updating package lists..." | tee -a "$LOG_FILE"
sudo apt update >> "$LOG_FILE" 2>&1
check_success "package list update"

# Install TeX Live full
echo "Installing TeX Live full..." | tee -a "$LOG_FILE"
sudo apt install -y texlive-full >> "$LOG_FILE" 2>&1
check_success "TeX Live installation"

# Download and install Pandoc
echo "Downloading and installing Pandoc..." | tee -a "$LOG_FILE"
wget "$PANDOC_URL" -O pandoc.tar.gz >> "$LOG_FILE" 2>&1
check_success "Pandoc download"
mkdir -p pandoc_temp
tar -xzf pandoc.tar.gz -C pandoc_temp >> "$LOG_FILE" 2>&1
check_success "Pandoc extraction"

# Move Pandoc binary to the installation directory
sudo mv pandoc_temp/pandoc-3.1.6.2/bin/pandoc "$INSTALL_DIR" >> "$LOG_FILE" 2>&1
check_success "Pandoc move to install directory"

rm -rf pandoc.tar.gz pandoc_temp

# Verify Pandoc installation
echo "Checking Pandoc version..." | tee -a "$LOG_FILE"
pandoc --version >> "$LOG_FILE" 2>&1
check_success "Pandoc installation"

# Define download URL for pandoc-crossref
CROSSREF_URL="https://github.com/lierdakil/pandoc-crossref/releases/download/v0.3.16.0f/pandoc-crossref-Linux.tar.xz"

# Download and install pandoc-crossref
echo "Downloading and installing pandoc-crossref..." | tee -a "$LOG_FILE"
wget "$CROSSREF_URL" -O pandoc-crossref.tar.xz >> "$LOG_FILE" 2>&1
check_success "pandoc-crossref download"
tar -xf pandoc-crossref.tar.xz >> "$LOG_FILE" 2>&1
check_success "pandoc-crossref extraction"
sudo mv pandoc-crossref "$INSTALL_DIR" >> "$LOG_FILE" 2>&1
check_success "pandoc-crossref move to install directory"
rm pandoc-crossref.tar.xz

# Verify pandoc-crossref installation
echo "Checking pandoc-crossref version..." | tee -a "$LOG_FILE"
pandoc-crossref --version >> "$LOG_FILE" 2>&1
check_success "pandoc-crossref installation"

# Verify TeX Live installation
echo "Checking TeX Live version..." | tee -a "$LOG_FILE"
tex --version >> "$LOG_FILE" 2>&1
pdflatex --version >> "$LOG_FILE" 2>&1
check_success "TeX Live installation"

echo "Installation completed successfully." | tee -a "$LOG_FILE"

#!/bin/bash

# ============================================================
# SYSTEMD USER SERVICE TEMPLATE
# ============================================================
# Purpose:
#   Enable, start, stop, disable and check a user service.
#
# Examples:
#   SERVICE_NAME=code-server
#   SERVICE_NAME=syncthing
#   SERVICE_NAME=my-python-app
#
# Usage:
#   Replace SERVICE_NAME below.
#   Uncomment the command you want to execute.
#
# Reference:
#   start   = start service now
#   stop    = stop service now
#   enable  = start automatically after login/boot
#   disable = prevent automatic startup
#   status  = check current state
# ============================================================




SERVICE_NAME="code-server" #Sample program



# Single Package - Coding 


# ------------------------------------------------------------
# Enable Auto Start
# ------------------------------------------------------------

# systemctl --user enable "$SERVICE_NAME"

# ------------------------------------------------------------
# Start Service Now
# ------------------------------------------------------------

# systemctl --user start "$SERVICE_NAME"

# ------------------------------------------------------------
# Check Status
# ------------------------------------------------------------

# systemctl --user status "$SERVICE_NAME"

# ------------------------------------------------------------
# Stop Service Now
# ------------------------------------------------------------

# systemctl --user stop "$SERVICE_NAME"

# ------------------------------------------------------------
# Disable Auto Start
# ------------------------------------------------------------

# systemctl --user disable "$SERVICE_NAME"




# Whole Package - Coding 

# ------------------------------------------------------------
# Example: Full Enable Sequence
# ------------------------------------------------------------

# systemctl --user enable "$SERVICE_NAME"
# systemctl --user start "$SERVICE_NAME"
# systemctl --user status "$SERVICE_NAME"

# ------------------------------------------------------------
# Example: Full Disable Sequence
# ------------------------------------------------------------

# systemctl --user stop "$SERVICE_NAME"
# systemctl --user disable "$SERVICE_NAME"
# systemctl --user status "$SERVICE_NAME"

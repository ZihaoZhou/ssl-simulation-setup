# Sets up the running Guacamole (VNC) server. Will also generate team passwords.
sudo ./config/guacamole/update_guacamole.py
# Convert all passwords into a caddy format for the game-controller
sudo ./config/caddy/update_caddy_passwords.sh
# Regenerate the Caddyfile with the newly created passwords
sudo ./config/caddy/generate_caddyfile.py
# Reload the running caddy webserver
sudo ./config/caddy/update_caddy_config.sh

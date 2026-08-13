#!/bin/bash
# Write the Magento 2 Apache vhost directly instead of downloading it
# from an external Gist ($MAGENTO_WEB_SERVER_CONF is no longer used).
sudo tee /etc/apache2/sites-available/magento2.conf > /dev/null <<'EOF'
Listen 8080
<VirtualHost *:8080>
	ServerAdmin webmaster@localhost
	DocumentRoot /home/circleci/magento2
	ServerName magento2.dev

    <Directory /home/circleci/magento2>
    	Options Indexes FollowSymLinks
    	AllowOverride All
    	Require all granted
    </Directory>

	<FilesMatch \.php$>
	    SetHandler application/x-httpd-php
	</FilesMatch>
</VirtualHost>
EOF
sudo a2ensite magento2.conf

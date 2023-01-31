# Toets
Vandaag maken jullie de toets over het mvc model. 
Lees de opdrachten op je toetsblad en voer deze uit.
Begin met het open van de website op de goede manier (lees hieronder) 



# Configureer de vhosts
Opdracht 1: 
Zorg dat je de pagina kunt openen met: marvel.localhost 
* LET OP! : Database moet nog worden toegevoegd in phpmyadmin (toets.sql in de repository)
* LET OP! : In de Configuratie hieronder verwijst de DocumentRoot & Directory naar jouw applicatie in de Github map.



## Configuratie
Zorg ervoor dat de Virtual host config file ingeladen wordt:
* Open Xammp
* Klik op Apache config -> Apache(httpd.conf)
* Zoek naar `Include conf/extra/httpd-vhosts.conf` en verwijder de `#` als deze vooraan deze regel aanwezig is.
* Voeg de onderstaande code toe aan de virtual host config: `C:\xampp\apache\conf\extra\httpd-vhosts.conf`
```
<VirtualHost *:80>
DocumentRoot "C:/xampp/htdocs"
ServerName localhost
</VirtualHost>

Listen 4001    
NameVirtualHost *:4001
<VirtualHost *:80 *:4001>
    DocumentRoot "C:/Users/SD Student/Documents/GitHub/if-sd21-p6-toets/public"
    ServerName marvel.localhost
    <Directory "C:/Users/SD Student/Documents/GitHub/if-sd21-p6-toets/public">
        Options Indexes FollowSymLinks ExecCGI Includes

	RewriteEngine on
	RewriteCond %{REQUEST_FILENAME} !-f
	RewriteRule ^(.*)$ index.php [NC,L,QSA]

        # AllowOverride controls what directives may be placed in .htaccess files.
        # It can be "All", "None", or any combination of the keywords:
        #   Options FileInfo AuthConfig Limit
        #
        #AllowOverride None
        # since XAMPP 1.4:
        AllowOverride All

        # Controls who can get stuff from this server.
        Require all granted
    </Directory>
</VirtualHost>
```
* Restart Apache in de XAMP instance.
* Verplaats alle inhoud van de repository die je hebt gecloned naar: `C:/xampp/apps/healthone/htdocs/if-sd-php-healthone`
* Open nu de `C:/xampp/apps/healthone/htdocs/if-sd-php-healthone` in PHPStorm.


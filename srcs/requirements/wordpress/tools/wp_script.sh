#sed -i "s/votre_nom_de_bdd/$SQL_DATABASE/g" /var/www/wordpress/wp-config-sample.php
#sed -i "s/votre_utilisateur_de_bdd/$SQL_USER/g" /var/www/wordpress/wp-config-sample.php
#sed -i "s/votre_mdp_de_bdd/$SQL_PASSWORD/g" /var/www/wordpress/wp-config-sample.php
#sed -i "s/localhost/maria:3306/g" /var/www/wordpress/wp-config-sample.php
#mv /var/www/wordpress/wp-config-sample.php /var/www/wordpress/wp-config.php

#rm -f /var/www/wordpress/wp-config.php
sleep 10
wp config create	--allow-root \
				--dbname=$SQL_DATABASE \
				--dbuser=$SQL_USER \
				--dbpass=$SQL_PASSWORD \
      			--dbhost=mariadb:3306 --path='/var/www/wordpress'

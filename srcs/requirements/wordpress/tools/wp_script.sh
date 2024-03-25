sed -i "s/votre_nom_de_bdd/$SQL_DATABASE/g" /var/www/wordpress/wp-config-sample.php
sed -i "s/votre_utilisateur_de_bdd/$SQL_USER/g" /var/www/wordpress/wp-config-sample.php
sed -i "s/votre_mdp_de_bdd/$SQL_PASSWORD/g" /var/www/wordpress/wp-config-sample.php
sed -i "s/localhost/mariadb:3306/g" /var/www/wordpress/wp-config-sample.php
cd /var/www/wordpress/
cp wp-config-sample.php wp-config.php

#rm -f /var/www/wordpress/wp-config.php
sleep 1
#wp config create	--allow-root \
#				--dbname=$SQL_DATABASE \
#				--dbuser=$SQL_USER \
#				--dbpass=$SQL_PASSWORD \
 #     			--dbhost=mariadb:3306 --path='/var/www/wordpress' \
  #              --config-file='/var/www/wordpress'

wp core install --allow-root \
                --url="smunio.42.fr" \
                --title="Inception" \
                --admin_user=$WP_USER1 \
                --admin_password=$WP_PASS1 \
                --admin_email="admin@mail.com" \
                --skip-email
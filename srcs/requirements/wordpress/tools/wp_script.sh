sed -i "s/votre_nom_de_bdd/$SQL_DATABASE/g" /var/www/wordpress/wp-config.php
sed -i "s/votre_utilisateur_de_bdd/$SQL_USERNAME/g" /var/www/wordpress/wp-config.php
sed -i "s/votre_mdp_de_bdd/$SQL_PASSWORD/g" /var/www/wordpress/wp-config.php
sed -i "s/localhost/maria:3306/g" /var/www/wordpress/wp-config.php
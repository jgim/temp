<?php

define( 'DB_NAME', 'wordpress' );

define( 'DB_USER', 'jgim' );

define( 'DB_PASSWORD', 'jgim' );

define( 'DB_HOST', 'mariadb:3306' );

define( 'DB_CHARSET', 'utf8' );

define( 'DB_COLLATE', '' );

define('AUTH_KEY',         'uM+-4|!!`!v}x/Y<2)]x[Je%:X4=g+YH!;},!J}zF~M$q;{Ai* GD<xu*r5_&jM%');
define('SECURE_AUTH_KEY',  'n-mtKLj!B1.4/(VGqVw+;?6#-+;NXWe#l|6Ik0i#:],Erf[|bg>hAaN|vR[ z:E9');
define('LOGGED_IN_KEY',    '<-+^?>7vPI$%y+XS]6%@PmNBz@5%ijQb0bk$37.*3Fe|WVbr|WuV<~~#M(-_y]pH');
define('NONCE_KEY',        '7g|pvNL>E Gc,~L%Tnhs7$nzln#t,-_>Bw,E#OC9gk=$wT~w+R#I,s$VEz*Z*~PL');
define('AUTH_SALT',        'IN174)%PQ0}M%Hk&Lq{Ox])-CfBZJm??BX}>j0Nq?j/|X0jk|oL?d%mwi3K.# O9');
define('SECURE_AUTH_SALT', 'xW)/!]B$82aKVG6U]3-+W~W! 0z0+XRE&SY8FXfK^b17ZTiPjo-|(k={Ka|<Ips@');
define('LOGGED_IN_SALT',   'P@%)6b2LkV_fO?s9/=d^%/k-^{tRV0n^CNsr8z/+E=S=R+wcuB-(dkg&!O#X,0}%');
define('NONCE_SALT',       ')mBM+#+bn-j&h*,~JNz/r9-a8tEnrJ@4~t?]}:yiR+8bDNY47#8UVTC foE`3W;$');

$table_prefix = 'wp_';

define( 'WP_DEBUG', false );
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

require_once (ABSPATH . 'wp-settings.php');

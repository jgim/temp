<?php

define( 'DB_NAME', 'wordpress' );

define( 'DB_USER', 'jgim' );

define( 'DB_PASSWORD', 'jgim' );

define( 'DB_HOST', 'mariadb:3306' );

define( 'DB_CHARSET', 'utf8' );

define( 'DB_COLLATE', '' );

define('AUTH_KEY',         'hCr^%g1Q24s7nxc9qQ8kX1Q:Xo/ii%%@EQI0%6!aU* !aH<]%U+&4MmjzSs,8JUU');
define('SECURE_AUTH_KEY',  'ix$7C (kU1SE_0r5t^ha+YVP|mxiD&$-TYp:7M-!CrL[ n@jmkZF$>Jw!;P4K(V[');
define('LOGGED_IN_KEY',    'Nb[Azs:HR-w]6mn:2V>;V<.{.}9%2ey>Ke0qDSt?K}nm/ ):T|]bv&4|Q<iD6FIE');
define('NONCE_KEY',        ';+6e=x#<8;Iwg,<eP0L7-$f>moDL#$6_Y]2-vB+nKYOEK_ar@J<a]a5WLvqT5o7A');
define('AUTH_SALT',        '+Ksn=xq7p>V`zd$`GA2jZa%05uCqe>AkR*MDd}jI{Q}Mr2wk@s,zmUnx/|V-1[U+');
define('SECURE_AUTH_SALT', '2e9?R>%Q8rlt8oJ?GXbo/u~92[0=MPOTK..5PC+M!OG#78P[ERci &uE~m[b^)5!');
define('LOGGED_IN_SALT',   '8E!T2ql[gfg1E.`#2|S_7u_ff{UkG)7T cI&+#rWKqjcKo^LPh$/%A:o9.CW[%(e');
define('NONCE_SALT',       'DyVqx.[+w}toRLdFy!!4qpo1uLSpZY4{g#E[Wl}MIf?u43e4MwhZjK2w9TL|AGNU');

$table_prefix = 'wp_';

define( 'WP_DEBUG', false );
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

require_once (ABSPATH . 'wp-settings.php');

<?php
/*
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'my_data');

/** Database username */
define( 'DB_USER', 'houssam');

/** Database password */
define( 'DB_PASSWORD', '1234');

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

define( 'WP_REDIS_HOST', 'redis' );

define( 'WP_REDIS_PORT', 6379 );

define('WP_REDIS_AUTH', '');

define( 'WP_CACHE', true );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '2enQ-w^Z>:i-K-tQ1%Xe=->%g/kB9ad;8l4g!6@K001k3t{5=T`Anfe$h,R@1J)-');
define('SECURE_AUTH_KEY',  'Nb-ExSA.WK6l4e7aY|i+f/@)n3r}Jg=v l=Eq-&0qoE=v}D%>J!TJwp^,Hs`:_=s');
define('LOGGED_IN_KEY',    'U,Fnb#V%W F=f%qdBTASx!mdgXe~1d_5m+{c?fa|7045f=VsEezZHOG0)smNbHz$');
define('NONCE_KEY',        'AtID-n_xxPPNw9JB*+k|d)*_|x[==fxJ1_4ji+EN`Ri%!ES-HK+AE!mUrL~`k|)j');
define('AUTH_SALT',        'h&e5c7/Lwd5}NPFbtsFP;D.Vz[S0EJ1jTh@F?Oo|O+Ee8{|lCrt:T}6_F{6QP-*9');
define('SECURE_AUTH_SALT', 'G(NzG5@#_iz}AcX+k6$-)k6z&rU_Vb!^L7j5%m}cdhRdp!.N)ABoF,+|x||`6Vm^');
define('LOGGED_IN_SALT',   'rn]jt{JFjy{k&-?n$3N7$lf+8Rc_qtoD.:N&Lm<r(T}Ig9|4ws-7dIOQHHiQ|=O|');
define('NONCE_SALT',       ',`QBps95 -c7{w[1o@IA*8hCz],sFu4-l}X5_853Q+zG$etyXsiV`~|hO X*UYg=');

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
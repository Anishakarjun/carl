<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'carl_friedrich');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '=4;`@ Jc,Lh_pAch`Tw&}CeI_&_jHT;lgGn_dK,x@yEPq%*rt@ 5QD))ec8zeMP<');
define('SECURE_AUTH_KEY',  'RC8jl/:7DWTmWaMy*vK{tngNg<Lbpm/#N$q$:U)!}m2@28.<v^*oIK6o57Ldq3hH');
define('LOGGED_IN_KEY',    '9J{+N%-4<?gAw.3.GL@}P|b,OP-m&dFg*y)d2}vSk_5p2Zb`i4FCckPmS8!B|*P0');
define('NONCE_KEY',        'p0S97Mufld<zk:qX9BmWkF_3jmrol,07,cjU0)77%6,2esZLuo!,#{*pAk[W+ [ ');
define('AUTH_SALT',        'yUl4:0y|AQtsLI}FSD*q<u|r&UQ2/__X]Q]$-SWCbDPtv||G=)NQi#(ady$ohpX#');
define('SECURE_AUTH_SALT', 'NsvOMrSj#q p/:*[^vO%S2&(k6J*F]%XL[=!,P7^a&QY?/Y8EJqmJ/4&`d sPV.E');
define('LOGGED_IN_SALT',   'sv:YY;f;/)1<Pa5?_OV@JOHxJ}VJ~Rq0_iK%=mj[Z9M(&U=9>uH%KVl#_G}gfKWy');
define('NONCE_SALT',       '8nuhz/;[^*SbDV|OL4CRzQg3W,(v;UQ3*>c-`m*8-kwWf=g@&u}yrXci !EQ[_>E');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'cf_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', true);
define( 'WPCF7_AUTOP', false );
//define ('WPCF7_LOAD_JS', false );
/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

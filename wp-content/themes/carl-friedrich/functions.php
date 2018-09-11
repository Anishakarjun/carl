<?php

define( 'THEME_VERSION', 1.0 );
define( 'TEXTDOMAIN', 'cf' );

if ( ! isset( $content_width ) ) $content_width = 900;

add_theme_support( 'automatic-feed-links' );

add_theme_support( 'post-thumbnails' );

remove_action( 'shutdown', 'wp_ob_end_flush_all', 1 );

register_nav_menus( 
	array(
		'primary'	=>	__( 'Header Menu', 'cf' ),
	)
);
// add_action( 'wp_print_styles', 'wps_deregister_styles', 100 );
// function wps_deregister_styles() {
//     wp_deregister_style( 'contact-form-7' );
// }
add_filter('wpcf7_form_elements', function($content) {

    $content = preg_replace('/<(span).*?class="\s*(?:.*\s)?wpcf7-form-control-wrap(?:\s[^"]+)?\s*"[^\>]*>(.*)<\/\1>/i', '\2', $content);

    return $content;
});

/*-----------------------------------------------------------------------------------*/
/* Enqueue Styles and Scripts
/*-----------------------------------------------------------------------------------*/

add_action( 'wp_enqueue_scripts', function(){

  wp_register_style( 'menu', get_template_directory_uri() . '/assets/css/menu.css', false);
    wp_enqueue_style ( 'menu' );

// wp_register_style( 'menu_home', get_template_directory_uri() . '/assets/css/menu_home.css', false);
//     wp_enqueue_style ( 'menu_home' );

  wp_register_style( 'theme_style', get_template_directory_uri() . '/assets/css/style.css', false);
  wp_enqueue_style ( 'theme_style' );

  if(is_page_template('contact.php')){
    wp_register_style( 'contact', get_template_directory_uri() . '/assets/css/contact.css', false);
    wp_enqueue_style ( 'contact' );

    wp_register_style( 'Linearicons', get_template_directory_uri() . '/assets/fonts/Linearicons-Free-v1.0.0/icon-font.min.css', false);
    wp_enqueue_style ( 'Linearicons' );
  }

  wp_register_style( 'responsive', get_template_directory_uri() . '/assets/css/responsive.css','4.7.0', false);
  wp_enqueue_style ( 'responsive' );

  wp_register_style( 'bootstrap', get_template_directory_uri() . '/assets/css/bootstrap.css', false);
  wp_enqueue_style ( 'bootstrap' );


  wp_register_style( 'bootstrap.min', get_template_directory_uri() . '/assets/css/bootstrap.min.css', false);
  wp_enqueue_style ( 'bootstrap.min' );

  wp_register_style( 'reset', get_template_directory_uri() . '/assets/css/reset.css', false);
  wp_enqueue_style ( 'reset' );

  wp_register_style( 'slider', get_template_directory_uri() . '/assets/css/slider.css', false);
  wp_enqueue_style ( 'slider' );

 wp_register_style( 'font-awesome.min', get_template_directory_uri() . '/assets/css/font-awesome.min.css', false);
  wp_enqueue_style ( 'font-awesome.min' );

   wp_register_style( 'animate.min', get_template_directory_uri() . '/assets/css/animate.min.css', false);
  wp_enqueue_style ( 'animate.min' );

  wp_register_style( 'jquery.mobile', '//code.jquery.com/mobile/1.5.0-alpha.1/jquery.mobile-1.5.0-alpha.1.min.css', false);
  wp_enqueue_style ( 'jquery.mobile' );

   wp_register_style( 'owl.carousel', get_template_directory_uri() . '/assets/css/owl.carousel.css', false);
  wp_enqueue_style ( 'owl.carousel' );

   wp_register_style( 'owl.theme', get_template_directory_uri() . '/assets/css/owl.theme.css', false);
  wp_enqueue_style ( 'owl.theme' );

  wp_register_style( 'ma5slider', get_template_directory_uri() . '/assets/css/ma5slider.min.css', false);
  wp_enqueue_style ( 'ma5slider' );

  wp_register_script( 'jquery', get_template_directory_uri() . '/assets/js/jquery-3.2.1.min.js', array(''),'3.2.1', false);
    wp_enqueue_script( 'jquery' );

    wp_register_script( 'bootstrap_bundle', get_template_directory_uri() . '/assets/js/bootstrap.bundle.min.js', array('jquery'),'4.0.0', true);
    wp_enqueue_script( 'bootstrap_bundle' );

    wp_register_script( 'jquery.mobile.custom.min', get_template_directory_uri() . '/assets/js/jquery.mobile.custom.min.js', array('jquery'),'1.4.5', true);
    wp_enqueue_script( 'jquery.mobile.custom.min' );

    wp_register_script( 'bootstrap_script', get_template_directory_uri() . '/assets/js/bootstrap.min.js', array('jquery'),'3.3.6', true);
    wp_enqueue_script( 'bootstrap_script' );

if(is_singular('property')){

  wp_register_script( 'jquery-ui.min', get_template_directory_uri() . '/assets/js/jquery-ui.min.js',array('jquery', 'bootstrap_script'), true);
  wp_enqueue_script( 'jquery-ui.min' );

  wp_register_script( 'jquery.ui.touch-punch', get_template_directory_uri() . '/assets/js/jquery.ui.touch-punch.min.js',array('jquery', 'bootstrap_script'), true);
  wp_enqueue_script( 'jquery.ui.touch-punch' );

  wp_register_script( 'ma5slider', get_template_directory_uri() . '/assets/js/ma5slider.min.js',array('jquery', 'bootstrap_script'), true);
  wp_enqueue_script( 'ma5slider' );
}
 wp_register_script( 'sliders', get_template_directory_uri() . '/assets/js/sliders.js',array('jquery', 'bootstrap_script'),true);
  wp_enqueue_script( 'sliders' );
  
 wp_register_script( 'main', get_template_directory_uri() . '/assets/js/main.js',array('jquery', 'bootstrap_script'),true);
  wp_enqueue_script( 'main' );

  wp_register_script( 'menu.min', get_template_directory_uri() . '/assets/js/menu.min.js',array('jquery', 'bootstrap_script'), true);
  wp_enqueue_script( 'menu.min' );
 
 wp_register_script( 'sticky.min', get_template_directory_uri() . '/assets/js/sticky.min.js',array('jquery', 'bootstrap_script'),'4.0.1', true);
  wp_enqueue_script( 'sticky.min' );

  wp_register_script( 'jquery.waypoints.min', get_template_directory_uri() . '/assets/js/jquery.waypoints.min.js',array('jquery', 'bootstrap_script'),'4.0.1', true);
  wp_enqueue_script( 'jquery.waypoints.min' );

  wp_register_script( 'modernizr', get_template_directory_uri() . '/assets/js/modernizr.js',array('jquery', 'bootstrap_script'),'2.8.3', true);
  wp_enqueue_script( 'modernizr' );

  wp_register_script( 'owl.carousel', get_template_directory_uri() . '/assets/js/owl.carousel.js',array('jquery', 'bootstrap_script'),'1.3.3', true);
  wp_enqueue_script( 'owl.carousel' );

  wp_register_script( 'wow.min', get_template_directory_uri() . '/assets/js/wow.min.js',array('jquery', 'bootstrap_script'),'0.1.9', true);
  wp_enqueue_script( 'wow.min' );

  if(!is_singular('property')){
  wp_register_script( 'scripts', get_template_directory_uri() . '/assets/js/scripts.js',array('jquery', 'bootstrap_script'), true);
  wp_enqueue_script( 'scripts' );

 }
    
});

// Options Page
if( function_exists('acf_add_options_sub_page') ) {

  acf_add_options_sub_page('Logo & Images');
  acf_add_options_sub_page('Contact Details');
  acf_add_options_sub_page('Social Media Links');
  
}

// News Custom Post

add_action( 'init', 'property_post_type' );
function property_post_type() {
  register_post_type( 'property',
    array(
      'labels' => array(
        'name' => __( 'Properties' ),
        'singular_name' => __( 'Property' ),
        'search_items'      => 'Search Property',
        'all_items'         => 'All Properties',
        'edit_item'         => 'Edit Property',
        'update_item'       => 'Update Property',
        'add_new_item'      => 'Add New Property',
        'new_item_name'     => 'New Property Name',
        'menu_name'         => 'Properties'
      ),
      'supports'        => array( 'title', 'editor',),
      'public' => true,
      'has_archive' => true,
      'rewrite' => array('slug' => 'properties'),
    )
  );
}


add_filter('nav_menu_css_class' , 'special_nav_class' , 10 , 2);

function special_nav_class ($classes, $item) {
    if (in_array('current-menu-item', $classes) ){
        $classes[] = 'active ';
    }
    return $classes;
}
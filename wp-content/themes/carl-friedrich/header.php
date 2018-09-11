<!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js">
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>
	<?php bloginfo('name'); ?> | 
	<?php is_front_page() ? bloginfo('description') : wp_title('');?>
</title>

<link rel="profile" href="http://gmpg.org/xfn/11" />
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />

<?php wp_head(); ?>

</head>

<body 
	<?php body_class(); ?>
>
    
 <div id="wrapper">
     
<!-- menu start -->
    <header class="header">
   <div class="main-header main-header stuck">
      <div class="container">
         <div class="row align-items-center">
            <div class="col-lg-2 col-md-3 col-sm-3 col-9">
               <div class="logo"> <a href="<?php echo get_site_url();?>"> 
                <?php if (function_exists('get_field') && (get_field('logo','option'))) { ?>
                  <img src="<?php echo the_field('logo','option');?>" alt="" width="172" height="74">
                  <?php }else{ ?>
                  <img src="<?php echo get_template_directory_uri();?>/assets/img/logo.png" alt="" width="172" height="74">
                  <?php }?>
                 </a></div>
            </div>
			
            <div class="col-lg-8 col-md-5 col-sm-3 col-3">
               <nav>
                  <div class="header-menu ">
                     <?php
                    wp_nav_menu( array(
                      'menu' => 'Main Menu',
                      'theme_location' => 'primary',
                      'container' => true,
                      'container_id' => true,
                      'menu_id' => false,
                      )
                      );?>
                  </div>
               </nav>
            </div>
			
			
            <div class="col-lg-2 col-md-4 col-sm-6 d-none d-sm-block">
               <ul class="client-area text-right list-inline m-0">

                  <li class="dropdown">
                    <?php echo do_shortcode('[gtranslate]'); ?>
                     <!-- <a class="active" href="#">ENG</a>
                     <a href="#">CZ</a> -->
                  </li>
                 
               </ul>
            </div>
         </div>
      </div>
   </div>
</header>
<section class="page-title page-title-wrap position-relative bg-light wow fadeInDown" data-wow-delay="0.3s">
    <div class="banner-overlay"></div>
    <div class="container">
        <div class="row">
          <div class="">
              <div class="position-relative pt-5 pb-5">
                 <ul class="custom-breadcrumb roboto list-unstyled mb-0 clearfix">
                      <li><a href="<?php echo get_site_url();?>">Home</a></li>
                      <li><i class="fa fa-long-arrow-right"></i></li>
                      <?php if(is_archive('property')){ ?>
                      <li><a href="<?php echo get_site_url();?>/properties">Properties</a></li>
                      <?php } else { ?>
                      <li><a href="<?php the_permalink();?>"><?php the_title();?></a></li>
                      <?php } ?>
                 </ul>
                 <?php if(is_archive('property')){ ?>
                    <h1>Properties</h1>
                  <?php } else { ?>
                    <h1><?php the_title();?></h1>
                  <?php } ?>
              </div>
          </div>
        </div>
    </div>
</section>
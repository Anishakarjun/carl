<?php 
/**
 * 	Template Name: Home Page
 *
*/
?>
<!doctype html>
<html <?php language_attributes(); ?> class="no-js">
<head>

	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  	
	<title>
	<?php bloginfo('name'); ?> | 
	<?php is_front_page() ? bloginfo('description') : wp_title('');?>
</title>

<link rel="profile" href="http://gmpg.org/xfn/11" />
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />

<?php wp_head(); ?>
</head>
<body>
    
 <div id="wrapper">
     
<!-- menu start -->
    <header class="header">
   <div class="main-header main-header stuck">
      <div class="container">
         <div class="row align-items-center">
            <div class="col-lg-2 col-md-3 col-sm-3 col-9">
               <div class="logo"> 
               	<a href="<?php echo get_site_url();?>"> 
               		<?php if (function_exists('get_field') && (get_field('logo','option'))) { ?>
               		<img src="<?php echo the_field('logo','option');?>" alt="" width="172" height="74"> 
               		<?php }else{ ?>
                  	<img src="<?php echo get_template_directory_uri();?>/assets/img/logo.png" alt="" width="172" height="74">
                  <?php }?>
               	</a>
               </div>
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

<!-- slider -->
  
<div class="touch">
	<div class="cd-slider-wrapper ">
	<?php $i=0;
	if( have_rows('main_property_slider') ){ ?>
		<ul class="cd-slider">
    	<?php while ( have_rows('main_property_slider') ) { the_row(); ?>
			<li <?php if ($i==0) { ?>class="is-visible"<?php } ?> >
				<div class="cd-half-block image"></div>
				<div class="cd-half-block content">
					<div class="wow fadeInRight" data-wow-delay="0.3s">
						<p>
							<?php the_sub_field('description'); ?>
						</p>
					</div>
					<div  class="wow fadeInRight" data-wow-delay="0.5s">
						<h4>
							<?php the_sub_field('property_description'); ?>
						</h4>
					</div>
					<div class="wow fadeInRight" data-wow-delay="0.8s">
						<h6>
							<a href="<?php the_sub_field('property_url'); ?>">See the property  »</a>
						</h6>
					</div>
				</div>
			</li>
			<?php $i++; } ?>

		</ul> 
		<?php } ?>
	</div> 
</div>	
	
<!-- image slider -->
<?php if( have_rows('property_carousel') ){ ?>
<div class="sliding-img-slider">
	<div class="row">
	  	<div id="slider-carousel" class="owl-carousel">
	  		<?php while ( have_rows('property_carousel') ) { the_row(); ?>
			<div class="item  wow fadeInUp">
        		<a href="<?php the_sub_field('property_url'); ?>">
					<div class="sliding-img">
						<img class="img-responsive" src="<?php the_sub_field('property_image'); ?>"/>
						<div id="overlay5">
							<p class="fa fa-plus img-icon"></p>
						</div>
					</div>
            	</a>
				<div class="sliding-img-cpt">
					<h2><?php the_sub_field('property_title'); ?></h2>
						<a href="<?php the_sub_field('property_url'); ?>">See the property  »</a>
				</div>
			</div>
          <?php } ?>
		</div>
	</div>
    <a class="grayl prev">&#60;</a>
    <a class="grayr next">&#62;</a>
</div>
<?php } ?> 

<!--    about us-->
<?php if( have_rows('about_us_section') ){ ?>
<?php while ( have_rows('about_us_section') ) { the_row(); ?>
<div class="homeabout">
    <div class="desc wow fadeInUp">
        <h2><?php the_sub_field('title'); ?></h2>
        <p><?php the_sub_field('description'); ?></p>
        <img src="<?php echo get_template_directory_uri();?>/assets/img/cf-mark.png" />
    </div>
</div>
<?php } } ?>
<?php if (function_exists('get_field')) { ?>
<?php if(get_field('general_description')) { ?>
   <div class="descri wow fadeInLeft" data-wow-delay="0.8s">
       <?php the_field('general_description');?>
    </div>
<?php } } ?>

<?php get_footer(); ?>
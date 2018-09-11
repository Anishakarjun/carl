<?php
/**
 * The template for displaying the home/index page.
 * This template will also be called in any case where the Wordpress engine 
 * doesn't know which template to use (e.g. 404 error)
 */
get_header(); ?>    
  
<!--properties-->
<div class="container">
	<div class="moreinfo">
		<div class="col-md-12 wow fadeInRight row">
			<?php if(have_posts()){ 
	while(have_posts()){ 
		the_post();?>
			<?php the_content();?>
			<?php } }else{ ?>
			<h2>Nothing has been posted like that yet.</h2>
			<?php } ?>
		</div>
	</div>
 </div> 
 
<?php get_footer(); ?>
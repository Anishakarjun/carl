<?php get_header(); ?>
<!--breadcrumb -->
<?php if(have_posts()){ 
	while(have_posts()){ 
		the_post();?>    
  
<!--properties-->
<div class="container">
	<div class="moreinfo">
		<div class="col-md-12 wow fadeInRight row">
			<?php the_content();?>
		</div>
	</div>
 </div> 
 <?php } }?>
<?php get_footer(); ?>
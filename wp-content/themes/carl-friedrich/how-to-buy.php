<?php
/*
* Template Name: How to buy Template
*/
get_header(); ?>
<!--    properties-->
<div class="howtobuy  wow fadeInUp">
    <div class="container">
        <?php $i=0;
    if( have_rows('how_to_buy') ){ ?>
    <?php while ( have_rows('how_to_buy') ) { the_row(); 
        if( $i%2==0 ){ ?>
        <div class="col-md-12">
            <?php if(get_sub_field('image')){ ?>
            <div class="col-md-4  wow fadeInRight" >
                <img src="<?php the_sub_field('image'); ?>" class="img img-responsive" />
            </div>
            <?php } ?>
            <div class="col-md-8 text wow fadeInLeft" >
                <h1><?php the_sub_field('title'); ?></h1>
                 <?php the_sub_field('description'); ?>
                 <?php if(get_sub_field('broucher')){ ?>
                <P><a class="downlaodb" href="<?php the_sub_field('broucher'); ?>" target="_blank"><i class="fa fa-download"></i> Download Broucher</a></P>
                <?php } ?>
            </div>
        </div>
        <?php }else{ ?>

        <div class="col-md-12"><hr></div>
        <div class="col-md-12">
            <div class="col-md-8 text wow fadeInRight" style="padding: 0 50px 0 15px !important;" >
                <h1><?php the_sub_field('title'); ?></h1>
                 <?php the_sub_field('description'); ?>
                 <?php if(get_sub_field('broucher')){ ?>
                 <P><a class="downlaodb" href="<?php the_sub_field('broucher'); ?>" target="_blank"><i class="fa fa-download"></i> Download Broucher</a></P>
                 <?php } ?>
            </div>
            <?php if(get_sub_field('image')){ ?>
            <div class="col-md-4  wow fadeInLeft" >
                <img src="<?php the_sub_field('image'); ?>" class="img img-responsive" />
            </div>
            <?php } ?>
        </div>
        <?php } $i++; 
    } } ?>
    </div>
</div>
<?php get_footer();?>
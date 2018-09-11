<!--    footer-->
    <div class="footer">
       
        
        <div class="container">
             <div class="row">
            
  <div class="col-md-3  col-sm-6 col-xs-12">
      
      <i class="fa fa-map-marker"></i>
      <?php if (function_exists('get_field') && (get_field('address','option'))) { ?>
          <p>
<?php echo the_field('address','option');?>
              </p>
      <?php } ?>
            </div>
            
             <div class="col-md-3 col-sm-6 col-xs-12">
      
    
      <i class="fa fa-envelope"></i>
      <?php if (function_exists('get_field') && (get_field('email','option'))) { ?>
          <p><?php echo the_field('email','option');?>
              </p>
      <?php } ?>
            </div>
            
             <div class="col-md-3 col-sm-6 col-xs-12">
      
    
       <i class="fa fa-phone"></i>
       <?php if (function_exists('get_field') && (get_field('phone','option'))) { ?>
          <p><?php echo the_field('phone','option');?>
              </p>
      <?php } ?>
            </div>
            
             <div class="col-md-3  col-sm-6 col-xs-12">
      
  
      
                                 <a href="<?php echo the_field('linkedin','option');?>" target="_new" title="LinkedIn"><i class="linkedin fa fa-linkedin"></i></a>
                                  <a href="<?php echo the_field('facebook','option');?>" target="_new" title="Facebook"><i class="fb fa fa-facebook"></i></a>
                                  <a href="<?php echo the_field('youtube','option');?>" target="_new" title="YouTube"><i class="youtube fa fa-youtube"></i></a>
          
      
            </div>
            
            
        </div>
            
</div>
            
  
            
    </div>
    <div class="copyright">
        <div class="container">
   <div class="col-md-6 col-xs-12">
            <p>
            ©  2018   Carl & Friedrich Property · <br class="hidden-md hidden-lg">All rights reserved
       </p>
            </div>
            
              <div class="col-md-2 col-xs-12">
            <p>
            <a href="<?php echo get_site_url();?>/more-information">More Information</a>
                  </p>
            </div>
            
              <div class="col-md-1 col-xs-12">
            <p>
           <a href="<?php echo get_site_url();?>/conditions">Conditions</a>
                  </p>
            </div>
            
              <div class="col-md-3 col-xs-12 credit">
            <p>
           Developed By <a href="#" target="_new">Evocreative</a>
                  </p>
            </div>
            
            
            </div>
    </div>
    
    <!--    footer end -->
    
    </div>


<?php wp_footer(); ?>

<script type="text/javascript">
jQuery(window).on('load', function () {
           jQuery('.ma5slider').ma5slider();
        });</script>
</body>
</html>

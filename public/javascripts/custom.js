/*-----------------------------------------------------------------------------------

 	Custom JS - All front-end jQuery
 
-----------------------------------------------------------------------------------*/
 

jQuery(document).ready(function() {
	

/*-----------------------------------------------------------------------------------*/
/*	Superfish Settings - http://users.tpg.com.au/j_birch/plugins/superfish/
/*-----------------------------------------------------------------------------------*/
	
	if (jQuery().superfish) {
		
		jQuery('ul.sf-menu').superfish({
			delay: 900,
			animation: {opacity:'show', height:'show'},
			speed: 'normal',
			autoArrows: false,
			dropShadows: false
		}); 
	
	}
	

/*-----------------------------------------------------------------------------------*/
/*	Image Overlay
/*-----------------------------------------------------------------------------------*/
		
		$j('.ac_overlay').hover(function() { 
	    
		    $j('a img', this).stop().animate({"opacity": 0.7}); 
		
		}, function() { 
	    
		    $j('a img', this).stop().animate({"opacity": 1}); 
		
		});
	

/*-----------------------------------------------------------------------------------*/
/*	Search Field Main
/*-----------------------------------------------------------------------------------*/
	
	jQuery('#s').each(
    
    	function() {
        	
            if(jQuery(this).val() === '' || jQuery(this).val() === 'Search Our Site')
            {
                jQuery(this).val('Search Our Site');
        
                jQuery(this).blur( 
                    function () {
                       jQuery(this).val('Search Our Site');
                    });
                    
                jQuery(this).focus( 
                    function () {
                       jQuery(this).val('');
                    });
            }
            
        }
        
    );
    
/*-----------------------------------------------------------------------------------*/
/*	Search Field Widget on Sidebar
/*-----------------------------------------------------------------------------------*/

	jQuery('#s').each(
    
    	function() {
        	
            if(jQuery(this).val() === '' || jQuery(this).val() === 'Search...')
            {
                jQuery(this).val('Search...');
        
                jQuery(this).blur( 
                    function () {
                       jQuery(this).val('Search...');
                    });
                    
                jQuery(this).focus( 
                    function () {
                       jQuery(this).val('');
                    });
            }
            
        }
        
    );   
    
});
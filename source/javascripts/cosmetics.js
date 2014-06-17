jQuery(document).ready(function($) {



            //	================================================
            //	Clicks or taps?
            //	------------------------------------------------
            function is_touch_device() {
              return !!('ontouchstart' in window) // works on most browsers
            	  || !!('onmsgesturechange' in window); // works on ie10
            };




            //	================================================
            //	"Inside KPCC" dropdown reveal
            //	------------------------------------------------
            if(is_touch_device() == true) {

                    $(".titling .station > ul > li:nth-child(2)").click(function(){
                        $(this).find("ul").toggle;
                    });

            } else {

                    $(".titling .station > ul > li:nth-child(2)").mouseover(function(){
                        $(this).find("ul").show();
                    }).mouseout(function(){
                        $(this).find("ul").hide();
                    });
                    
            }




}); // end doc ready
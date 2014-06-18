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
            $(".titling .station > ul > li:nth-child(2)").click(function(){
                $(this).find("ul").toggle();
            });





            //	================================================
            //	Gallery
            //	------------------------------------------------
            $(".gallery .picker a").click(function(){
                var desiredSlide = $(this).closest("li").index() + 1;
                //alert(desiredSlide);
                $(".gallery .showcase li").hide();
                $(".gallery .showcase li:nth-child(" + desiredSlide + ")").show();
                return false;
            });



}); // end doc ready
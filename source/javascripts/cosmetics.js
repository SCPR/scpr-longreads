//	================================================
//	"Inside KPCC" dropdown reveal
//	------------------------------------------------
$(".titling .station > ul > li:nth-child(2)").mouseover(function(){
    $(this).find("ul").show();
}).mouseout(function(){
    $(this).find("ul").hide();
});
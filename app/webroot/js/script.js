/* Author:

*/
$(document).ready(function(){
    //-- login button
    $(".login").toggle(function(){
            $("#login_dailog").show();
    },function(){
            $("#login_dailog").hide();
    });
    //-- menu
    /*$(".hasChild span").toggle(function(){
        $(this).find('.isChild').css('display','block');
    },function(){
        $(this).find('.isChild').css('display','none');
    });*/
   //-- menu anim
   $(".menulist li.hasChild").hover(function() {
                $(this).find(".isChild").slideDown();
	}, function() {
		$(this).find(".isChild").slideUp();
	});
	
	$(".menulist li.hasChild").hover(function() {
		$(this).addClass("current");
	}, function() {
		$(this).removeClass("current");
	});
});
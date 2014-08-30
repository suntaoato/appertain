$(function(){

$("[data-toggle='tooltip']").tooltip();

$(".avatar").css({
"background-image": "url(themes/hackathon/img/anonface.jpg)"
});	
	
var username  = $("input[name=loginuser]");
var password  = $("input[name=loginpassword]");
$("#output").removeClass('alert alert-success');

            $('button[type="submit"]').click(function(e) {   
            
            e.preventDefault();        	
                //little validation just to check username
                if (username.val() != "" && password.val() != "") {
							$.ajax({
								type: "POST",
								url:  "../../modules/login/login.php",
								data: "user=" + username.val() + "&password=" + password.val(),
								success: function(dt)
								{ 
									var retArray = jQuery.parseJSON(dt);
									
									if(retArray.isAuth)
									{
										$("#output").addClass("alert alert-success animated fadeInUp").html("Welcome back " + "<span style='text-transform:uppercase'>" + username.val() + "</span>");
										$("#output").removeClass(' alert-danger');
										$("input").css({
											"height":"0",
											"padding":"0",
											"margin":"0",
											"opacity":"0"
											});
											
										//change button text
										$('button[type="submit"]').html("Continue")
										.removeClass("btn-info")
										.addClass("btn-default").click(function(){
											$("input").css({
												"height":"auto",
												"padding":"10px",
												"opacity":"1"
												}).val("");
												
												window.location="/themes/hackathon/admin";
											});
										$('span[class="label"]').visibility("hidden");
											//show avatar
											$(".avatar").css({
												"background-image": "url(profiles/" + retArray.username + "/" + retArray.picurl + ")"
												});
									} else {
										//remove success message replaced with error message
										$("#output").removeClass('alert alert-success');
										$("#output").addClass("alert alert-danger animated fadeInUp").html("Username / Password incorrect!");							
									}
								}
							});
                }
            });
});
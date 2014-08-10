$(function(){

$(".avatar").css({
"background-image": "url(../hackathon/img/anonface.png)"
});	
	
var username  = $("input[name=user]");
var password  = $("input[name=password]");

            $('button[type="submit"]').click(function(e) {
                e.preventDefault();

                //little validation just to check username
                if (username.val() != "" && password.val() != "") {
							
							$.ajax({
								type: "POST",
								url:  "../../modules/login/login.php",
								data: "user=" + username.val() + "&password=" + password.val(),
								success: function(data)
								{
									var retArray = jQuery.parseJSON(data);
									
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
										$('button[type="submit"]').html("continue")
										.removeClass("btn-info")
										.addClass("btn-default").click(function(){
											$("input").css({
												"height":"auto",
												"padding":"10px",
												"opacity":"1"
												}).val("");
											});
											
											//show avatar
											$(".avatar").css({
												"background-image": "url(../../../profiles/" + retArray.username + "/" + retArray.picurl + ")"
												});
									} else {
										//remove success message replaced with error message
										$("#output").removeClass(' alert alert-success');
										$("#output").addClass("alert alert-danger animated fadeInUp").html("Username / Password incorrect!");							
									}
								}
							});
                } else {
                    //remove success message replaced with error message
                    $("#output").removeClass(' alert alert-success');
                    $("#output").addClass("alert alert-danger animated fadeInUp").html("username / password cannot be blank.");
                }
            });
});
function checkPasswordMatch() {
    var password = $("#password").val();
    var confirmPassword = $("#pwdcheck").val();

    if (password != confirmPassword)
        $("#pwdcheck_info").removeClass("alert alert-success");
        $("#pwdcheck_info").addClass("alert alert-danger animated fadeInUp").html("Passwords do not match!");
		  $("#btnregister").enabled = false;
    else
        $("#pwdcheck_info").removeClass("alert alert-danger animated fadeInUp");
        $("#pwdcheck_info").addClass("alert alert-success").html("Passwords match!");
        $("#btnregister").enabled = true;
}

$(function(){

$("[data-toggle='tooltip']").tooltip();

$(".avatar").css({
"background-image": "url(themes/hackathon/img/anonface.jpg)"
});	
	
var username  = $("input[name=loginuser]");
var password  = $("input[name=loginpassword]");

$("#output").removeClass('alert alert-success');

            $('button[name="btnlogin"]').click(function(e) {   
            
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
            
            $('button[name="btnregister"]').click(function(e) {  
            
				var username   = $("input[name=username]").val();
				var password   = $("password[name=password]").val();
				
				var forename   = $("input[name=forename]").val();
				var surname    = $("input[name=surname]").val();
				var handle     = $("input[name=handle]").val();
				var title      = $("input[name=title]").val();
				var why        = $("textarea[name=why]").val();
				var skills     = $("select[name=skills]").val();
				var file       = $("file[name=profilepic]").val();
				 
            
            var dataString = [username, password, forename, surname, handle, title, why, skills, file];
            var jsonString = JSON.stringify(dataString);
            
            $.ajax({
								type: "POST",
								url:  "../../modules/login/register.php",
								data: {data: dataString}
								success: function(dt)
								{ 
								}
				});
			});
});
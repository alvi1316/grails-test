let emailIsAvailable = false;

$( document ).ready(function() {

    $('#email').focusout(function() {  
        
        $.get( 
            "../checkemail/index/", 
            { 
                email: $("#email").val() 
            }, 
            function (data){
                if(data=='true'){
                    emailIsAvailable = true;
                    $('#emailError').addClass("d-none");
                }else if(data=='false'){
                    emailIsAvailable = false;
                    $('#emailError').removeClass("d-none");
                }
            }
        );

    });

    $('#submit').click(function(event){
        return emailIsAvailable;
    });

});
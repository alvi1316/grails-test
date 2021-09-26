package testproject

class SignupController{

    UserService userService

    def index(){

    }

    def registration(){
        def response = userService.signup(params) 
        if(response){
            render "success"
        }else{
            render "failed"
        }
    }

}
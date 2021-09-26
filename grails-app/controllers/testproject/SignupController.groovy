package testproject

class SignupController{

    UserService userService

    def index(){

    }

    def registration(){
        def result = userService.signup(params) 
        if(result){
            render "success"
        }else{
            render "failed"
        }
    }

}
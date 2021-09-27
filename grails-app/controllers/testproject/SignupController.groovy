package testproject

class SignupController{

    UserService userService

    def index(){

    }

    def registration(){
        def result = userService.signup(params) 
        if(result){
            redirect(controller: "login", action: "index")
        }else{
            render "failed"
        }
    }

}
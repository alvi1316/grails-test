package testproject

class LoginController{

    UserService userService

    def index(){

    }

    def error(){
        
    }

    def login(){
        def result = userService.login(params)
        if(result){
            render "Success"
        }else{
            redirect(controller: "login", action: "error")
        }
    }

}
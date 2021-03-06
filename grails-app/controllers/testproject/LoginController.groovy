package testproject

class LoginController{

    UserService userService

    def index(){
        if(session["adminEmail"] != null){
            redirect(controller: "adminpanel", action: "index")
        }else if(session["email"] != null){
            redirect(controller: "userprofile", action: "index")
        }
    }

    def error(){
        if(session["adminEmail"] != null){
            redirect(controller: "adminpanel", action: "index")
        }else if(session["email"] != null){
            redirect(controller: "userprofile", action: "index")
        }
    }

    def login(){
        def result = userService.login(params)
        if(result){
            session["email"] = "$params.email"
            redirect(controller: "userprofile", action: "index")
        }else{
            redirect(controller: "login", action: "error")
        }
    }

}
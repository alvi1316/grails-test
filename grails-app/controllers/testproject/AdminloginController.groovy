package testproject

class AdminloginController {

    def index() {
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

    def adminLogin(){
        if(params.email == "admin@localhost.local" && params.password == "admin"){
            session["adminEmail"] = "$params.email"
            redirect(controller: "adminpanel", action: "index")
        }else{
            redirect(controller: "adminlogin", action: "error")
        }
    }
    
}

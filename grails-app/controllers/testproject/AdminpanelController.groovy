package testproject

class AdminpanelController {

    UserService userService

    def index() {
        if(session["adminEmail"] == null){
            redirect(controller: "adminlogin", action: "index")
        }

        def list = userService.getAllUser()
        [userList: list]
    }

    def logout(){        
        session.invalidate()
        redirect(controller: "Adminlogin", action: "index")
    }
    
}

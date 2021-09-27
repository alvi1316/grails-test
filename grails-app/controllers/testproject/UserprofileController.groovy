package testproject

class UserprofileController {

    UserService userService

    def index() {
        User user = userService.getUserInfo(session["email"])
        [userInfo: user]
    }

    def logout() {
        session.invalidate()
        redirect(controller: "login", action: "index")
    }
}

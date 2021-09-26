package testproject

class CheckemailController {

    UserService userService

    def index() {
        def result = userService.emailIsAvailable(params)
        if(result){
            render "true"
        }else{
            render "false"
        }
    }
}

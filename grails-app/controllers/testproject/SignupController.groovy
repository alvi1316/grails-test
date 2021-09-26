package testproject

class SignupController{

    def index(){

    }

    def reg(){
        render "$params.email and $params.password"
    }

}